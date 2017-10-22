<?php

namespace App\Validation\Rules;


use App\Model\ClassList;
use Respect\Validation\Rules\AbstractRule;

class ClassExisting extends AbstractRule
{
    public function validate($input)
    {
        $class = ClassList::where('id', $input)->first();
        if (count($class) == 0) {
            return false;
        }
        return true;
    }
}