<?php

use App\Http\Controllers\API\AuthController;
use App\Http\Controllers\UserController;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

Route::get('user/request', function () {
    return view('user.request_email');
});

Route::post('user/request', [UserController::class, 'checkEmail']);

Route::get('users', [UserController::class, 'userList'])->name('users.list');
// Route::post('send/link', [UserController::class, 'sendUserLink']);

// Route::get('verify/link/{email}', [AuthController::class, 'verifyLink']);

Route::get('verifyAuthtoken', [AuthController::class, 'verifyAuthtoken'])->middleware('auth:api');
Route::get('home',[AuthController::class,'homeTest']);
Route::get('logout',[AuthController::class,'logout'])->name('logout');
Route::post('signout', [AuthController::class, 'signout']);
