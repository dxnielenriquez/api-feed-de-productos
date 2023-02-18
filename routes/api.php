<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\UserController;

use App\Http\Controllers\ProductosController;



use App\Http\Controllers\UsuarioController;
use App\Http\Middleware\ApiAuthMiddleware;
use App\Http\Controllers\ClienteController;



/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});

//rutas registrar y login movil
Route::post('/register-movil', [ClienteController::class, 'register']);
Route::post('/login-movil', [ClienteController::class, 'login']);
Route::get('/clientes', [ClienteController::class, 'list']);


//RUTAS DE PRODUCTOS 
Route::get('productos', [ProductosController::class, 'list']);

Route::get('productos/{producto}', [ProductosController::class, 'show']);






