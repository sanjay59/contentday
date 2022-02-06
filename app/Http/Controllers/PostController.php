<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Cmm;

class PostController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $posts = Cmm::all();

        return view('posts', ['posts' => $posts]);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $request->validate([
          'description' => 'required',
        ]);

        $post = Cmm::updateOrCreate(['id' => $request->id], [
                  'description' => $request->description,
                ]);

        return response()->json(['code'=>200, 'message'=>'Post Created successfully','data' => $post], 200);

    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $post = Cmm::find($id);

        return response()->json($post);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
      $post = Cmm::find($id)->delete();

      return response()->json(['success'=>'Post Deleted successfully']);
    }
}