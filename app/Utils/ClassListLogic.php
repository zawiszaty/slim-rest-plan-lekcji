<?php

namespace App\Utils;


use App\Model\ClassList;
use Illuminate\Database\Eloquent\Collection;

class ClassListLogic extends Logic
{
    public function getAll(): Collection
    {
        $classList = ClassList::all();
        return $classList;
    }

    public function getAllType(int $type): Collection
    {
        $classList = ClassList::all()->where('type_id', $type);
        return $classList;
    }

    public function getSingleClass(int $id): Collection
    {
        $class = ClassList::find($id)->first();

        return $class;
    }

    public function addClass(array $newClass): bool
    {
        $class = new ClassList();

        $class->name = $newClass['name'];
        $class->educator = $newClass['educator'];
        $class->type_id = $newClass['type_id'];
        $class->save();

        $this->container->PlanLogic->addPlan($class->id);
        return true;
    }

    public function delClass(int $id): bool
    {
        $this->container->PlanLogic->delPlan($id);

        $class = ClassList::find($id);
        if (count($class) == 0)
        {
            return false;
        }
        $class->delete();
        return true;
    }
}