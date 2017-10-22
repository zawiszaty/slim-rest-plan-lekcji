<?php

namespace App\Controllers;

use \Psr\Http\Message\ServerRequestInterface as Request;
use \Psr\Http\Message\ResponseInterface as Response;
use Respect\Validation\Validator as v;

class ClassListController extends Controllers
{
    public function getAll(Request $request, Response $response): Response
    {
        $classList = $this->cotainer->ClassListLogic->getAll();

        return $response->withJson($classList, 200);
    }

    public function getAllType(Request $request, Response $response): Response
    {

        $type = $request->getAttribute('type');

        $validation = $this->cotainer->validator;
        $validation->validate([$type => v::numeric()->notEmpty()]);

        if ($validation->failed()) {
            return $response->withJson('error', 404);
        }

        $classList = $this->cotainer->ClassListLogic->getAllType($type);

        return $response->withJson($classList, 200);
    }

    public function singleClass(Request $request, Response $response): Response
    {
        $id = $request->getAttribute('id');
        $validation = $this->cotainer->validator;
        $validation->validate([$id => v::numeric()->notEmpty()]);

        if ($validation->failed()) {
            return $response->withJson('error', 404);
        }

        $class = $this->cotainer->ClassListLogic->getSingleClass($id);

        return $response->withJson($class, 200);
    }

    public function addClass(Request $request, Response $response): Response
    {
        $newClass = $request->getParam('newClass');

        $validation = $this->cotainer->validator;
        $validation->validate([$newClass['name'] => v::notEmpty()->ClassAvailable(), $newClass['educator'] => v::notEmpty(), $newClass['type_id'] => v::notEmpty()->numeric(),]);

        if ($validation->failed()) {
            return $response->withJson('error', 404);
        }

        $this->cotainer->ClassListLogic->addClass($newClass);

        return $response->withJson('success', 200);
    }

    public function delClass(Request $request, Response $response): Response
    {
        $delClass = $request->getParam('id');
        $validation = $this->cotainer->validator;
        $validation->validate([$delClass => v::numeric()->notEmpty()->ClassExisting()]);

        if ($validation->failed()) {
            return $response->withJson('error', 404);
        }

        $this->cotainer->ClassListLogic->delClass($delClass);

        return $response->withJson('success', 200);
    }
}