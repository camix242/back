<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\User;
use App\City;

class UserController extends Controller
{
    
    public function __construct()
    {
        $this->middleware('auth');
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $users = User::orderBy('id','DESC')->paginate(10);
        
        return view('users.index',compact('users')); 
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $cities = City::all();
        
        return view('users.create',compact('cities'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $this->validate($request,[ 'name'=>'required', 'user_name'=>'required', 'email'=>'required', 'password'=>'required', 'city_id'=>'numeric']);
        $data = $request->all();
        
        $data['password'] = bcrypt($data['password']);
        if($data['password'] == '') {
            unset($data);
        }
        User::create($request->all());
        
        return redirect()->route('users.index')->with('success','Registro creado satisfactoriamente');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $Users = User::find($id);

        return view('users.show',compact('Users'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $user = User::find($id);
        $cities = City::all();

        
        return view('users.edit',compact('user','cities'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $this->validate($request,[ 'name'=>'required', 'user_name'=>'required', 'email'=>'required', 'city_id'=>'numeric']);
        $data = $request->all();
        
        $data['password'] = bcrypt($data['password']);
        if($data['password'] == '') {
            unset($data['password']);
        }
        
        User::find($id)->update($data);

        return redirect()->route('users.index')->with('success','Registro actualizado satisfactoriamente');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        User::find($id)->delete();

        return redirect()->route('users.index')->with('success','Registro eliminado satisfactoriamente');
    }
}
