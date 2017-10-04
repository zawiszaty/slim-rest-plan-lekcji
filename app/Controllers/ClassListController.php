<?php

namespace App\Controllers;

use \Psr\Http\Message\ServerRequestInterface as Request;
use \Psr\Http\Message\ResponseInterface as Response;

class ClassListController extends Controllers
{
    public function getAllType(Request $request, Response $response): Response
    {
        $type = $request->getAttribute('type');
        $classList = $this->cotainer->ClassListLogic->getAllType($type);
        return $response->withJson($classList, 200);
    }

}