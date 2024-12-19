<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\EmployeeController;
use App\Http\Controllers\AuthController;
use Laravel\Sanctum\Http\Middleware\EnsureFrontendRequestsAreStateful;

Route::post('/register', [AuthController::class, 'Token_Register']);
Route::post('/login', [AuthController::class, 'Token_Login']);
Route::post('/logout', [AuthController::class, 'Token_Logout']);
Route::get('/get-user-id', [AuthController::class, 'GetUserDetailsFromCookies']);



Route::middleware(['auth:sanctum'])->group(function () {
    Route::get('/emp', [EmployeeController::class, 'showall']);


});

//Route::middleware('auth:sanctum')->get('/emp', [EmployeeController::class, 'showall']);
//Route::middleware([EnsureFrontendRequestsAreStateful::class, 'auth:sanctum'])->group(function () {
 // Route::get('/emp', [EmployeeController::class, 'showall']);
//});



/* Route::get('/user', function (Request $request) {
    return $request->user();
})->middleware('auth:sanctum'); */
