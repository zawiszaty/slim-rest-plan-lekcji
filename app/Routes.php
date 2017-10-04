<?php

$app->get('/class/{type}', 'ClassListController:getAllType');
$app->get('/plan/{id}', 'PlanController:getAllClass');
$app->post('/login', 'UserController:login');
