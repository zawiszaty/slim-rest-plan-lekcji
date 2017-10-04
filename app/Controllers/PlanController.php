<?php

namespace App\Controllers;


use Slim\Http\Request;
use Slim\Http\Response;

class PlanController extends Controllers
{
    public function getAllClass(Request $request, Response $response): Response
    {
        $id = $request->getAttribute('id');
        $plan = $this->cotainer->PlanLogic->getAllClass($id);

        return $response->withJson($plan, 200);
    }
}