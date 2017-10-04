<?php

namespace App\Utils;


use App\Model\ClassList;
use Illuminate\Database\Eloquent\Collection;

class ClassListLogic extends Logic
{
    public function getAllType(int $type): Collection
    {
        $classList = ClassList::all()->where('type_id', $type);
        return $classList;
    }
}