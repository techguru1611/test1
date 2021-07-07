<?php

use App\Http\Controllers\API\AuthController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

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

Route::post('send/link', [AuthController::class, 'sendUserLink']);

Route::get('verify/link/{email}', [AuthController::class, 'verifyLink']);

// Route::get('home',[AuthController::class,'homeTest'])->middleware('auth:api');
// Route::get('logout',[AuthController::class,'logout'])->name('logout');
