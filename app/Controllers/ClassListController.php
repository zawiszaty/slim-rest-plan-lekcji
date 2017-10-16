<?php

namespace App\Controllers;

use \Psr\Http\Message\ServerRequestInterface as Request;
use \Psr\Http\Message\ResponseInterface as Response;
use Respect\Validation\Validator as v;

class ClassListController extends Controllers
{
    public function getAll(Request $request, Response $response): Response
    {
        $name ='asdasda';
        $this->cotainer->Validator->validate($request, [
            'name'=>v::noWhitespace()
        ]);
        $classList = $this->cotainer->ClassListLogic->getAll();

        return $response->withJson($classList, 200);
    }

    public function getAllType(Request $request, Response $response): Response
    {
        $type = $request->getAttribute('type');
        $classList = $this->cotainer->ClassListLogic->getAllType($type);

        return $response->withJson($classList, 200);
    }

    public function singleClass(Request $request, Response $response): Response
    {
        $id = $request->getAttribute('id');
        $class = $this->cotainer->ClassListLogic->getSingleClass($id);

        return $response->withJson($class, 200);
    }

    public function addClass(Request $request, Response $response): Response
    {
        $newClass = $request->getParam('newClass');
        if (count($newClass) == 0 || $newClass == null) {
            return $response->withJson('error', 404);
        }
        $this->cotainer->ClassListLogic->addClass($newClass);

        return $response->withJson('success', 200);
    }

    public function delClass(Request $request, Response $response): Response
    {
        $delClass = $request->getParam('id');
        if (!$this->cotainer->ClassListLogic->delClass($delClass)) {
            return $response->withJson('error', 404);
        }

        return $response->withJson('success', 200);
    }
}