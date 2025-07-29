<?php

namespace App\Http\Controllers;
use Illuminate\Support\Facades\Input;
use Illuminate\Support\Facades\Validator;
use DB;
use Illuminate\Http\Request;


use Illuminate\Database\Eloquent\Model;

class Contactform extends Model
{
    protected $fillable = ['name', 'email', 'subject', 'message'];
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        //
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

        $contactform = new Contactform();
        $contactform->name = $input['name'];
        $contactform->email = $input['email'];
        $contactform->subject = $input['subject'];
        $contactform->message = $input['message'];
        $contactform->save();
      //  $contactform = Contactform::create($input);

        //return Response()->json(['message' => 'Contact form info submitted successfully!'], 200);
         return Response([
             'success' => 1, 
             'data' => $contactform,
        ]);

     return response()->json(['success' => 'Contact form submitted successfully!']);
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
     * Update the specified contact form resource in storage.
     */
    public function updateContactForm(Request $request, string $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public static function destroy($ids)
    {
        return parent::destroy($ids);
    }
}
