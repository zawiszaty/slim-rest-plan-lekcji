<?php

namespace App\Utils;


use App\Model\User;

class Auth extends Logic
{
    public function auth(string $token): bool
    {
        $user = User::where('token', $token)->first();

        if (count($user) == 0) {
            return false;
        }
        return true;
    }
}