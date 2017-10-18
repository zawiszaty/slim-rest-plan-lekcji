<?php

namespace App\Controllers;

use \Psr\Http\Message\ServerRequestInterface as Request;
use \Psr\Http\Message\ResponseInterface as Response;

class UserController extends Controllers
{
    public function login(Request $request, Response $response): Response
    {
        $user = $request->getParam('user');

        $auth = $this->cotainer->UserLogic->login($user);

        if ($auth == '') {
            return $response->withJson('error', 403);
        }
        return $response->withJson($auth, 200);
    }

    public function auth(Request $request, Response $response): Response
    {
        return $response->withJson('success', 200);
    }

}