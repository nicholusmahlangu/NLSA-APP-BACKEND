<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\UserLog;
use Illuminate\Support\Facades\Log;

class UserLogController extends Controller
{
    //
    public function store(Request $request)
    {
        $log = new UserLog();
        $log->event = $request->input('event');
        $log->details = $request->input('details');
        $log->ip = $request->ip();
        $log->user_agent = $request->header('User-Agent');
        $log->save();   
        Log::info("User log created for user ID: {$log->user_id}", $request->all());
                return response()->json(['message' => 'Log saved successfully'], 201);
    }
}
