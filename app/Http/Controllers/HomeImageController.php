<?php

namespace App\Http\Controllers;
use App\Models\HomeImage;

use Illuminate\Http\Request;

class HomeImageController extends Controller
{
    public function index()
    { 
        $homeImage = \App\Models\HomeImage::orderBy('created_at', 'desc')->first();
    return response()->json($homeImage);
}

public function store(Request $request)
    {
       // Validate request
        $request->validate([
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
        $homeImage = HomeImage::create([
            'Image'       => $imageName,
        ]);

        return response()->json([
            'message' => 'Notification created successfully!',
            'data'    => $homeImage
        ], 201);
    
    }
}

