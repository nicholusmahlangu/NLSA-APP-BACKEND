<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\NewsController;

Route::get('/', function () {
    return view('welcome');
});
Route::middleware(\Illuminate\Http\Middleware\HandleCors::class)->group(function () {
    Route::get('/news', [NewsController::class, 'index']);
});

Route::get('/news/{id}', [NewsController::class, 'show']);
