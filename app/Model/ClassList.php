<?php

namespace App\Model;


use Illuminate\Database\Eloquent\Model;

class ClassList extends Model
{
    protected $table = 'classList';

    protected $fillable = [
        'name',
        'educator',
        'type_id'
    ];
}