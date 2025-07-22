<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Contactform;
// Route::get('/user', function (Request $request) {
//     return $request->user();
// })->middleware('auth:sanctum');

// Route::get('create_contactform', [Contactform::class,'store']);
// Route::resource('contactform', Contactform::class); 

Route::post('/contactinfo', function (){
    Contactform::create([
        'name' => 'Test User',
        'email' => 'test@gmail.com',
        'subject' => 'I wanna hire you',
        'message' => 'Aha!',
    ]);
    return 'Contact added';
});

// Route::post('create_contactform', 'Contactform@getdata');
