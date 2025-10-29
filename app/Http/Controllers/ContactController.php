<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Mail;

class ContactController extends Controller
{

    public function sendEmail(Request $request)
    {
        $validatedData = $request->validate([
            'name' => 'required|string|max:255',
            'email' => 'required|email|max:255',
            'message' => 'required|string',
        ]);

        Mail::send('email.contact', $validatedData, function ($message) use ($validatedData) {
            $message->to('nicolasmahlangu75@gmail.com')
                    ->subject('Contact Form Submission from ' . $validatedData['name']);
        });

        return response()->json(['message' => 'Email sent successfully'], 200);
}
}