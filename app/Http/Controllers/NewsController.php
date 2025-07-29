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

}
