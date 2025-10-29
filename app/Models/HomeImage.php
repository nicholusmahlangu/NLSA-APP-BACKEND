<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class HomeImage extends Model
{
    use HasFactory;

    protected $table = 'home_image'; 

    protected $fillable = [
        'Image',
        
    ];
}
