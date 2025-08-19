<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class ActivityLog extends Model
{
    //
    protected $fillable = [
        'visitor_id',
        'activity_type',
        'details',
        'timestamp',
    ];
}
