<?php

namespace App\Utils;


use App\Model\Plan;
use Illuminate\Database\Eloquent\Collection;

class PlanLogic extends Logic
{
    public function getAllClass(int $id): Collection
    {
        $plan = Plan::all()->where('classList_id', $id);
        return $plan;
    }
}