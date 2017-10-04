<?php


namespace App\Utils;


use App\Model\User;

class UserLogic extends Logic
{
    public function login(array $verifyUser)
    {
        $user = User::where('login', $verifyUser['login']);
        return $user;

    }
}