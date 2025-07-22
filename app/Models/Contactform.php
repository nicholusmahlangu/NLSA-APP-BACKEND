<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Contactform extends Model
{
    use HasFactory;

    protected $fillable = [
        'name',
        'email',
        'subject',
        'message',
    ];
// //insert:
// Contactform::create([
//     'name' => 'Nicholus',
//     'email' => 'nicolasmahlangu75@gmail.com',
//     'subject' => 'I want to inquire',
//     'message' => 'Monyama',
// ]);
}
