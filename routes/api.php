<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\EmployeeController;
use App\Http\Controllers\AuthController;
use Laravel\Sanctum\Http\Middleware\EnsureFrontendRequestsAreStateful;
use App\Http\Middleware\EnsureTokenIsValid;

Route::post('/LoginNew', [AuthController::class, 'NewLogin']);
Route::post('/register', [AuthController::class, 'Token_Register']);
Route::post('/login', [AuthController::class, 'Token_Login']);

Route::get('/get-user-id', [AuthController::class, 'GetUserDetailsFromCookies']);

Route::middleware([EnsureTokenIsValid::class])->group(function () {
    Route::post('/logout', [AuthController::class, 'Token_Logout']);
    Route::get('/emp', [EmployeeController::class, 'showall']);

});


/* Route::middleware('auth:sanctum')->group(function () {
    Route::get('/user', [AuthController::class, 'user']);
    Route::get('/emp', [EmployeeController::class, 'showall']);

}); */



//Route::middleware('auth:sanctum')->get('/emp', [EmployeeController::class, 'showall']);
//Route::middleware([EnsureFrontendRequestsAreStateful::class, 'auth:sanctum'])->group(function () {
 // Route::get('/emp', [EmployeeController::class, 'showall']);
//});



/* Route::get('/user', function (Request $request) {
    return $request->user();
})->middleware('auth:sanctum'); */
