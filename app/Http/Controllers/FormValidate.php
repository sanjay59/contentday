<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Response;
use Illuminate\Support\Facades\Validator;
use App;
use App\Addvuser;


class FormValidate extends Controller
{
    public function __construct()
    {
        date_default_timezone_set("Asia/Calcutta");
    }
    public function index()
    {
        return view('frontent.index');
    }
    public function savedata(Request $r)
    {
        $validator = Validator::make($r->all(), [
            'name' => 'required',
            'email' => 'required|email',
            'password' => 'required',
        ]);
        $name=$r->get('name');
        $email=$r->get('email');
        $password=$r->get('password');
        $post = Addvuser::Create(
            ['name' => $name,'email' => $email,'password' =>$password,]);
        return response()->json(['code'=>200,'msg'=>'User Save Success ', 'data' => $post,'error'=>$validator->errors()], 200);
        
    }

    public function store(Request $request)
    {
        //
    }

    public function show(Request $r)
    {
        $userdata=Addvuser::get();
        return view('frontent.userdata',compact('userdata'));
    }
    public function edit($id)
    {
        //
    }

    public function update(Request $request, $id)
    {
        //
    }

    
    public function destroy($id)
    {
        //
    }
}
