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

    public function editPlan(int $id, array $newPlan): bool
    {
        $plan = Plan::all()->where('classList_id', $id);

        if (count($plan) == 0) {
            return false;
        }
        $i = 0;

        foreach ($plan as $item) {
            $item->poniedzialek = $newPlan[$i]['poniedzialek'];
            $item->salap = $newPlan[$i]['salap'];
            $item->wtorek = $newPlan[$i]['wtorek'];
            $item->salaw = $newPlan[$i]['salaw'];
            $item->sroda = $newPlan[$i]['sroda'];
            $item->salas = $newPlan[$i]['salas'];
            $item->czwartek = $newPlan[$i]['czwartek'];
            $item->salac = $newPlan[$i]['salac'];
            $item->piatek = $newPlan[$i]['piatek'];
            $item->salapi = $newPlan[$i]['salapi'];
            $item->save();
            $i++;
        }


        return true;

    }

    public function addPlan(int $id): bool
    {
        for ($i = 0; $i < 9; $i++) {
            $plan = new Plan();
            $plan->poniedzialek = null;
            $plan->salap = null;
            $plan->wtorek = null;
            $plan->salaw = null;
            $plan->sroda = null;
            $plan->salas = null;
            $plan->czwartek = null;
            $plan->salac = null;
            $plan->piatek = null;
            $plan->salapi = null;
            $plan->classList_id = $id;
            $plan->save();
        }
        return true;
    }

    public function delPlan(int $id): bool
    {
        $plan = Plan::where('classList_id', $id);
        $plan->delete();

        return true;
    }
}
