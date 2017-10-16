<?php

$app->get('/class/{type}', 'ClassListController:getAllType');
$app->get('/all/class', 'ClassListController:getAll');
$app->get('/plan/{id}', 'PlanController:getAllClass');
$app->post('/login', 'UserController:login');
$app->post('/auth', 'UserController:auth');

$app->group('', function () {

    $this->post('/edit/class/{id}', 'PlanController:editPlan');
    $this->post('/add/class', 'ClassListController:addClass');
    $this->post('/del/class', 'ClassListController:delClass');

})->add(new \App\Middleware\AuthMiddleware($container));