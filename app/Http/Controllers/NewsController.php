<?php

namespace App\Http\Controllers;

use App\Models\News;
use Illuminate\Http\Request;

class NewsController extends Controller
{
    public function index()
    {
        $news = \App\Models\News::orderBy('created_at', 'desc')->get();
    return response()->json($news);
}

public function show($id)
{
    return News::findOrFail($id);
}

public function store(Request $request)
    {
       // Validate request
        $request->validate([
            'Title'       => 'required|string|max:255',
            'Description' => 'required|string',
            'Image'       => 'nullable|file|image|max:2048', // if storing just URL/filename
            'Story'       => 'required|string',
        ]);

        // Handle file upload
     $imageName = null;
    if ($request->hasFile('Image')) {
        $image = $request->file('Image');
        $imageName = $image->getClientOriginalName(); 
        $image->storeAs('news_images', $imageName,'public'); 
    }

        // Create and save news
        $news = News::create([
            'Title'       => $request->Title,
            'Description' => $request->Description,
            'Image'       => $imageName,
            'Story'       => $request->Story,
        ]);

        return response()->json([
            'message' => 'News created successfully!',
            'data'    => $news
        ], 201);
    
    }

    public static function destroy($id)
    {
       $news = News::findOrFail($id);
        $news->delete();

        return response()->json(['message' => 'News deleted successfully!']);
    }

}
