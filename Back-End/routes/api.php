<?php

use App\Http\Controllers\AuthController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\HorrorController;
use App\Http\Controllers\ComedyController;

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

Route::post('/login', [AuthController::class, 'login'])->middleware('web');
Route::get('/me', [AuthController::class, 'me'])
    // ->middleware('auth:sanctum')
    ->middleware([
        'auth:sanctum'
    ]);

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});

# /api
Route::get('/', function () {
    return json_encode(['hello' => 'world']);
});

// Horror routes
Route::get('/horror', [HorrorController::class, 'index']);

Route::get('/horror/{horror}', [HorrorController::class, 'show']);

Route::post('/horror', [HorrorController::class, 'store']);

Route::patch('/horror/{horror}', [HorrorController::class, 'update']);

Route::delete('/horror/{horror}', [HorrorController::class, 'destroy']);

// Comedy routes
Route::get('/comedy', [ComedyController::class, 'index']);

Route::get('/comedy/{comedy}', [ComedyController::class, 'show']);

Route::post('/comedy', [ComedyController::class, 'store']);

Route::patch('/comedy/{comedy}', [ComedyController::class, 'update']);

Route::delete('/comedy/{comedy}', [ComedyController::class, 'destroy']);
