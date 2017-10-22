<?php

namespace App\Controllers;

use \Psr\Http\Message\ServerRequestInterface as Request;
use \Psr\Http\Message\ResponseInterface as Response;
use Respect\Validation\Validator as v;

class PlanController extends Controllers
{
    public function getAllClass(Request $request, Response $response): Response
    {
        $id = $request->getAttribute('id');
        $validation = $this->cotainer->validator;

        $validation->validate([$id => v::numeric()->notEmpty()->ClassExisting()]);

        if ($validation->failed()) {
            return $response->withJson('error', 404);
        }

        $plan = $this->cotainer->PlanLogic->getAllClass($id);

        return $response->withJson($plan, 200);
    }

    public function editPlan(Request $request, Response $response): Response
    {
        $id = $request->getAttribute('id');
        $newPlan = $request->getParams();

        $validation = $this->cotainer->validator;

        $validation->validate([$id => v::numeric()->notEmpty()->ClassExisting(), $newPlan => v::arrayType()->notEmpty()]);

        if ($validation->failed()) {
            return $response->withJson('error', 404);
        }

        $this->cotainer->PlanLogic->editPlan($id, $newPlan);
        return $response->withJson('success', 200);

    }
}