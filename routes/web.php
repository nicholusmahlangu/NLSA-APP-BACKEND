<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\NewsController;
use Illuminate\Support\Facades\Mail;
use App\Http\Controllers\ContactController;

Route::get('/', function () {
    return view('welcome');
});
Route::middleware(\Illuminate\Http\Middleware\HandleCors::class)->group(function () {
    Route::get('/news', [NewsController::class, 'index']);
});

Route::get('/news/{id}', [NewsController::class, 'show']);

// Route::get('/send-email', function () {
//     Mail::to('nicolasmahlangu75@gmail.com')
//         ->send(new \App\Mail\contactMail());
//     return "Email Sent";
// });
Route::post('/contact', [ContactController::class, 'sendEmail']);