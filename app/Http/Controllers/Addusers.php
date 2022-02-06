<?php

namespace App\Http\Controllers;
use App\Adduser;
use Response;
use App\CommentModal;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Validator;
use App;
use Mail;


class Addusers extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function __construct()
    {
        date_default_timezone_set("Asia/Calcutta");
        header("Access-Control-Allow-Origin: {{url('/')}}");
        header("Access-Control-Allow-Methods: GET,HEAD,PUT,POST,DELETE,PATCH,OPTIONS");
        header('Access-Control-Allow-Credentials: true');
        header("Access-Control-Allow-Headers: Content-Type, Access-Control-Allow-Headers, Authorization, X-Requested-With");
        header("Content-Type: application/json; charset=UTF-8");
    }
    
    public function index()
    {
        $products = Adduser::all();

        return Response::json(array(
            'status' => 'success',
            'pages' => $pages->toArray()),
        200
    );
    }
    public function getDownload(){
         $file= public_path(). "/all_images/HUL-Conten-Day-2021.ics";

    $headers = array(
              'Content-Type: application/ics',
            );

    return Response::download($file, 'HUL-Conten-Day-2021.ics', $headers);
}
    public function register(Request $r)
    {
        return view('frontent.fregister');
    }

    public function saveusers(Request $r)
    {
        $r->validate([

            'name'=>'required|alpha',
            'lname'=>'required|alpha',
            'email' => 'required|email|regex:/^([a-z0-9\+_\-]+)(\.[a-z0-9\+_\-]+)*@([a-z0-9\-]+\.)+[a-z]{2,6}$/ix',

        ]);
        $name=$r->get('name');
        $lname=$r->get('lname');
        $emailuser=$r->get('email');
        $user= App\Adduser::where('email',$emailuser)->get();
        if($user->isEmpty()){
            $post = Adduser::Create(
                ['name' => $name,'lname' => $lname,'email' =>$emailuser,]);
            $client = new \GuzzleHttp\Client();
            $url = 'https://www.vgames.in/hulcontentday2021/api/signup_by_third_party';

            $form_params = [
                "first_name"=>$name,
                "last_name"=>$lname,
                "email"=>$emailuser
            ];

            $response = $client->post($url, ['form_params' => $form_params]);
            $response = $response->getBody()->getContents();
            

            $to_name='Sanjay Yadav';
            $to_email=$emailuser;
            $data=array('name'=>$name,'lname'=>$lname,'body'=>'First mail send');
            Mail::send('mail',$data,function($message) use ($to_name,$to_email){
                $message->to($to_email)
                ->subject('Welcome to HUL Content Day 2021');
            });

            return response()->json(['code'=>200, 'data' => $post], 200);
        }else{
            $message_res='Email Already Exist';
            return response()->json(['code'=>200, 'message'=>$message_res, ], 200);
        }
    }
    public function savecomments(Request $r)
    {
        $r->validate([
            'title'=>'required',
            'cname'=>'required',
            'comment'=>'required',
        ]);
       
        $title=$r->get('title');
        $cname=$r->get('cname');
        $comment=$r->get('comment');
        $post = CommentModal::Create(
            ['title' => $title,'cname' => $cname,'comment' =>$comment,]);
        
        
        return response()->json(['code'=>200, 'data' => $post], 200);
        
    }
    public function getusers(Request $request){
        $userdata=DB::table('twas_users')->select('name','surname','email','created_at')->get();
        return response()->json(['data'=>$userdata]);
        

    }

    public function signup_by_third_party(Request $request)
    {
       $validator = Validator::make($request->all(), [
        'first_name'=>'required|alpha',
        'last_name'=>'required|alpha',
        'email' => 'required|email|unique:tbl_regusers|regex:/^([a-z0-9\+_\-]+)(\.[a-z0-9\+_\-]+)*@([a-z0-9\-]+\.)+[a-z]{2,6}$/ix',

    ], [
                // 'first_name.required' => 'first name is required',
                // 'last_name.required' => 'last name is required',
                // 'email.required' => 'email is required',

    ]);

       if ($validator->fails()) {
        return response()->json(['status' => false, 'validationErrors' => $validator->errors()], 200);
    } 

    $first_name = $request->first_name;
    $last_name = $request->last_name;
    $email = $request->email;

    $post = Adduser::Create(
        ['name' => $first_name,'lname' => $last_name,'email' =>$email,]);
            // $to_name='Sanjay Yadav';
            // $to_email=$email;
            // $data=array('name'=>$first_name,'lname'=>$last_name,'body'=>'First mail send');
            // Mail::send('mail',$data,function($message) use ($to_name,$to_email){
            //     $message->to($to_email)
            //     ->subject('Welcome to HUL Content Day 2021');
            // });
    $userid = Adduser::where('email',$email)->latest('created_at')->first();
    if ($post) {
        return response()->json(['status' => true, 'message' => "User save successfully",'userid'=>$userid->id], 200);
    } 



}

public function show($id)
{
        //
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
