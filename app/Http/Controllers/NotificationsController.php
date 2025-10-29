<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Notifications;


class NotificationsController extends Controller
{

     public function index()
    {
        $notifications = \App\Models\Notifications::orderBy('created_at', 'desc')->get();
    return response()->json($notifications);
}

public function show($id)
{
    return Notifications::findOrFail($id);
}

public function store(Request $request)
    {
       // Validate request
        $request->validate([
            'Title'       => 'required|string|max:255',
            'Description' => 'required|string',
            'Image'       => 'nullable|file|image|max:2048', 
        ]);

        // Handle file upload
     $imageName = null;
    if ($request->hasFile('Image')) {
        $image = $request->file('Image');
        $imageName = $image->getClientOriginalName(); 
        $image->storeAs('news_images', $imageName,'public'); 
    }

        // Create and save news
        $notifications = Notifications::create([
            'Title'       => $request->Title,
            'Description' => $request->Description,
            'Image'       => $imageName,
        ]);

        return response()->json([
            'message' => 'Notification created successfully!',
            'data'    => $notifications
        ], 201);
    
    }

    public static function destroy($id)
    {
       $notifications = Notifications::findOrFail($id);
        $notifications->delete();

        return response()->json(['message' => 'News deleted successfully!']);
    }

}


