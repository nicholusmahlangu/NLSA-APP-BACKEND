<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\ActivityLog;

class ActivityLogController extends Controller
{
    //
    public function store(Request $request)
    {
        $validatedData = $request->validate([
            'visitor_id' => 'required|string|max:255',
            'activity_type' => 'required|string|max:255',
            'details' => 'nullable|string',
            'timestamp' => 'nullable|date',
        ]);

        ActivityLog::create([
            'visitor_id' => $validatedData['visitor_id'],
            'activity_type' => $validatedData['activity_type'],
            'details' => $validatedData['details'],
            'timestamp' => $validatedData['timestamp'] ?? now(),
        ]);

        // $activityLog = ActivityLog::create($validatedData);

        return response()->json(['status' => 'Activity logged successfully']);
    }
}
