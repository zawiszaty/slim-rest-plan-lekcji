<?php


namespace App\Utils;


use App\Model\User;

class UserLogic extends Logic
{
    public function login(array $verifyUser)
    {
        $user = User::where("login", $verifyUser['login'])->first();
        if (count($user) == 0) {
            return '';
        }

        if (password_verify($verifyUser['password'], $user->password)) {
            return $user->token;
        }

        return '';

    }
}