<?php

namespace App\Controllers;


use \Psr\Http\Message\ServerRequestInterface as Request;
use \Psr\Http\Message\ResponseInterface as Response;

class PlanController extends Controllers
{
    public function getAllClass(Request $request, Response $response): Response
    {
        $id = $request->getAttribute('id');
        $plan = $this->cotainer->PlanLogic->getAllClass($id);

        return $response->withJson($plan, 200);
    }
}