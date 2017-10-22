<?php

namespace App\Controllers;

use \Psr\Http\Message\ServerRequestInterface as Request;
use \Psr\Http\Message\ResponseInterface as Response;
use Respect\Validation\Validator as v;

class UserController extends Controllers
{
    public function login(Request $request, Response $response): Response
    {
        $user = $request->getParam('user');
        $validation = $this->cotainer->validator;
        $validation->validate([$user['login'] => v::notEmpty(), $user['password'] => v::notEmpty()]);

        if ($validation->failed()) {
            return $response->withJson('error', 404);
        }

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