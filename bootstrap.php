<?php

require 'vendor/autoload.php';

$config['displayErrorDetails'] = true;
$config['addContentLengthHeader'] = false;
$config['db'] = [
    'driver' => 'mysql',
    'host' => 'localhost',
    'database' => 'slimrest',
    'username' => 'root',
    'password' => 'admin',
    'charset' => 'utf8',
    'collation' => 'utf8_unicode_ci',
    'prefix' => '',
];

$app = new \Slim\App(["settings" => $config]);

$app->options('/{routes:.+}', function ($request, $response, $args) {
    return $response;
});

$app->add(function ($req, $res, $next) {
    $response = $next($req, $res);
    return $response
        ->withHeader('Access-Control-Allow-Origin', '*')
        ->withHeader('Access-Control-Allow-Headers', 'X-Requested-With, Content-Type, Accept, Origin, Authorization')
        ->withHeader('Access-Control-Allow-Methods', 'GET, POST, PUT, DELETE, OPTIONS');
});

$container = $app->getContainer();
$capsule = new Illuminate\Database\Capsule\Manager;
$capsule->addConnection($container['settings']['db']);
$capsule->setAsGlobal();
$capsule->bootEloquent();
$container['db'] = function ($container) use ($capsule) {
    return $capsule;
};


$container['ClassListController'] = function ($container) {
    return new \App\Controllers\ClassListController($container);
};
$container['PlanController'] = function ($container) {
    return new \App\Controllers\PlanController($container);
};
$container['UserController'] = function ($container) {
    return new \App\Controllers\UserController($container);
};

$container['PlanLogic'] = function ($container) {
    return new \App\Utils\PlanLogic($container);
};
$container['ClassListLogic'] = function ($container) {
    return new \App\Utils\ClassListLogic($container);
};
$container['UserLogic'] = function ($container) {
    return new \App\Utils\UserLogic($container);
};
$container['Auth'] = function ($container) {
    return new \App\Utils\Auth($container);
};
$container{'Validator'} = function ($container) {
    return new \App\Validator\Validator;
};
require 'app/Routes.php';