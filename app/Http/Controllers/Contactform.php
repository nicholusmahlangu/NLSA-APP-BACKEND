<?php

namespace App\Http\Controllers;

use DB;
use Illuminate\Http\Request;

class Contactform extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        //
    }

    /**
     * Show the form for creating a new resource.
     */
    public static function create()
    {
        $controller = new \App\Http\Controllers\Contactform();
        $controller->create();

// Insert:
    Contactform::create([
    'name' => 'Jane Doe',
    'email' => 'jane@example.com',
    'subject' => 'NLSA',
    'message' => 'I was',
]);
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
         //This is where we valid that all the fields are required on the contact us form.
        $validator = Validator::make($request->all(), [
            'name' => 'required',
            'email' => 'required',
            'subject' => 'required',
            'message' => 'required',
        ]);

        //This is the error that will show up if the endpoint does not hit successfully.
        if($validator->fails()){
            return Response(['error' =>$validator->errors()], 422);
        }

        //input is a variable which has all the contact form values.
        $input = $request->all();

        $contactform = Contactform::create($input);

        return Response([
            'success' => 1, 
            'data' => $contactform,
        ]);
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        //
    }
}
