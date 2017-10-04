<?php

$app->get('/{type}', 'ClassListController:getAllType');
$app->get('/plan/{id}', 'PlanController:getAllClass');
