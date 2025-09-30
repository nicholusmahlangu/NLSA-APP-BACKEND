<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Contactform;
use App\Http\Controllers\UserLogController;
use App\Http\Controllers\NewsController;

use App\Http\Controllers\AdminAuthController;
// Route::get('/user', function (Request $request) {
//      return $request->user();
// })->middleware('auth:sanctum');

Route::post('contactform/add', [Contactform::class, 'store']);
Route::post('admin/login', [AdminAuthController::class, 'login']);
// Route::middleware('auth:api')->get('/user', function (Request $request) {
//     return $request->user();
// });
Route::post('log-activity', [App\Http\Controllers\ActivityLogController::class, 'store']);

Route::post('logs', [UserLogController::class, 'store']);

//store news
Route::post('/newsstore', [NewsController::class, 'store']);

//view news
Route::middleware(\Illuminate\Http\Middleware\HandleCors::class)->group(function () {
    Route::get('/news', [NewsController::class, 'index']);
});

//search news by ID
Route::get('/news/{id}', [NewsController::class, 'show']);

//delete news by ID
Route::delete('/newsdestroy/{id}', [NewsController::class, 'destroy']);
