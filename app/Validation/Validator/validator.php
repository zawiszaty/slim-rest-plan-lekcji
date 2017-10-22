<?php

namespace App\Validation\Validator;

use Respect\Validation\Validator as Respect;
use Respect\Validation\Exceptions\NestedValidationException;

class validator
{
    protected $erros;

    public function validate(array $rules)
    {
        try {
            foreach ($rules as $field => $rule) {
                $rule->setName($field)->assert($field);
            }
        } catch (NestedValidationException $exception) {
            $this->erros[$field] = $exception->getMessages();
        }

    }

    public function failed()
    {
        return $this->erros;
    }

}