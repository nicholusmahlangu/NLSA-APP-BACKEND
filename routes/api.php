<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Contactform;
use App\Http\Controllers\UserLogController;
use App\Http\Controllers\NewsController;
use App\Http\Controllers\NotificationsController;
use App\Http\Controllers\HomeImageController;

use App\Http\Controllers\AdminAuthController;
use App\Http\Controllers\contacFormtController;
use App\Http\Controllers\ContactController;
use Illuminate\Support\Facades\Mail;
use App\Mail\mailGenerator;

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

//store news
Route::post('/notificationsstore', [NotificationsController::class, 'store']);

Route::middleware(\Illuminate\Http\Middleware\HandleCors::class)->group(function () {
    Route::get('/notificationget', [NotificationsController::class, 'index']);
});

Route::post('/Imagestore', [HomeImageController::class, 'store']);

Route::middleware(\Illuminate\Http\Middleware\HandleCors::class)->group(function () {
    Route::get('/Image', [HomeImageController::class, 'index']);
});

Route::get('/send-email', function(){
    $name = "NLSA Mobile App";
    $email = "nicholus.mahlangu@nlsa.ac.za";
    Mail::to('nicolasmahlangu75@gmail.com')->send(new mailGenerator($name, $email));
});

Route::get('/', function () {
    \illuminate\Support\Facades\Mail::send(new \App\Mail\ContactformMail());    
    return view('welcome');
});
