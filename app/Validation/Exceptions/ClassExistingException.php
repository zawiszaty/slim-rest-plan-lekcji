<?php

namespace App\Validation\Exceptions;

use Respect\Validation\Exceptions\ValidationException;

class ClassExistingException extends ValidationException
{
    public static $defaultTemplates =[
        self::MODE_DEFAULT => [
            self::STANDARD => 'Nie ma takiej klasy'
        ]
    ];
}