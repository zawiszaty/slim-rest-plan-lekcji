<?php

namespace App\Validator;

use Respect\Validation\Exceptions\NestedValidationException;
use Respect\Validation\Validator as Respect;

class Validator
{
    public function validate($request, array $rules)
    {
        foreach ($rules as $field => $rule) {
            try {
                $rule->setName(ucfirst($field))->assert($request->getParam('field'));
                return true;
            } catch (NestedValidationException $exception) {
                return false;
            }
        }
    }
}
