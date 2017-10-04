<?php


namespace App\Controllers;


class Controllers
{
    protected $cotainer;

    public function __construct($contaier)
    {
        $this->cotainer = $contaier;
    }
}