<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Admin;
use Illuminate\Support\Facades\Hash;

class AdminAuthController extends Controller
{
    /**
     * Handle admin login request
     */
    public function login(Request $request)
    {
        // Validate input
        $validated = $request->validate([
            'username' => 'required|string',
            'password' => 'required|string',
        ]);

        // Find admin by username
        $admin = Admin::where('username', $validated['username'])->first();

        // Verify password
        if (!$admin || !Hash::check($validated['password'], $admin->password)) {
            return response()->json([
                'message' => 'Invalid credentials',
            ], 401);
        }

        // Return response
        return response()->json([
            'message' => 'Login successful',
            'admin'   => [
                'id'       => $admin->id,
                'username' => $admin->username,
            ],
        ]);
    }
}
