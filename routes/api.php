<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Contactform;
// Route::get('/user', function (Request $request) {
//      return $request->user();
// })->middleware('auth:sanctum');

Route::post('contactform/add', [Contactform::class, 'store']);
// Route::middleware('auth:api')->get('/user', function (Request $request) {
//     return $request->user();
// });