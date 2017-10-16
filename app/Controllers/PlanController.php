<?php

namespace App\Controllers;


use App\Model\Plan;
use \Psr\Http\Message\ServerRequestInterface as Request;
use \Psr\Http\Message\ResponseInterface as Response;
use Respect\Validation\Validator as v;

class PlanController extends Controllers
{
    public function getAllClass(Request $request, Response $response): Response
    {
        $id = $request->getAttribute('id');
        $plan = $this->cotainer->PlanLogic->getAllClass($id);
        if (count($plan) == 0) {
            return $response->withJson('error', 404);
        }
        return $response->withJson($plan, 200);
    }

    public function editPlan(Request $request, Response $response): Response
    {
        $id = $request->getAttribute('id');
        $newPlan = $request->getParams();

        if ($this->cotainer->PlanLogic->editPlan($id, $newPlan)) {
            return $response->withJson('success', 200);
        }


        return $response->withJson('error', 404);

    }
}