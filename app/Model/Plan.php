<?php

namespace App\Model;


use Illuminate\Database\Eloquent\Model;

class Plan extends Model
{
    protected $table = 'plan';

    protected $fillable = [
        'poniedzialek',
        'salap',
        'wtorek',
        'salaw',
        'sroda',
        'salas',
        'czwartek',
        'salac',
        'piatek',
        'salapi'
    ];
}