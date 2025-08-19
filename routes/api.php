<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Contactform;
use App\Http\Controllers\UserLogController;
// Route::get('/user', function (Request $request) {
//      return $request->user();
// })->middleware('auth:sanctum');

Route::post('contactform/add', [Contactform::class, 'store']);
// Route::middleware('auth:api')->get('/user', function (Request $request) {
//     return $request->user();
// });
Route::post('log-activity', [App\Http\Controllers\ActivityLogController::class, 'store']);

Route::post('logs', [UserLogController::class, 'store']);