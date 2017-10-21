<?php

namespace App\Validation\Exceptions;


use Respect\Validation\Exceptions\ValidationException;

class ClassAvailableException extends ValidationException
{
    public static $defaultTemplates =[
        self::MODE_DEFAULT => [
            self::STANDARD => 'Klasa jest juz w bazie'
        ]
    ];

}