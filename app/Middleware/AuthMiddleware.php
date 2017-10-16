<?php

namespace App\Middleware;

class AuthMiddleware extends Middleware
{
    public function __invoke($request, $response, $next)
    {
        $token = $request->getHeader('HTTP_AUTHORIZATION');

        if (!$this->container->Auth->auth($token[0])) {
            return $response->withJson('error', 403);
        }
        $response = $next($request, $response);

        return $response;
    }

}