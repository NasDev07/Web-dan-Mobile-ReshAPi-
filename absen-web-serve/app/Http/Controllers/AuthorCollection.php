<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Http\Controllers\Controller;

class AuthorCollection extends Controller
{
    public function login()
    {
        return view('auth.login');
    }

    public function authenticate(Request $request)
    {
        $credentials = $request->validate([
            'email' => 'required|email:dns',
            'password' => 'required',
        ]);

        if(Auth::attempt($credentials)) {
            $request->session()->regenerate();
            return redirect()->intended('/dashboard');
        }

        return back()->with('loginError', 'Login failed');
        // dd('berhasil login!!');
    }


    public function register()
    {
        return view('auth.register');
    }

    public function store(Request $request) {
        $validateData = $request->validate([
            'name' => 'required|max:255',
            'email' => 'required|email:dns|unique:users',
            'password' => 'required|min:5|max:255',
        ]);

        $validateData['password'] = bcrypt($validateData['password']);

        User::create($validateData);
        // $request->session()->flash('success', 'Berhasil Register successfully!! please login');
        return redirect('/login')->with('success', 'Berhasil Register successfully!! please login');
    }


    // public function postregister( Request $request ) {
    //     $user = new \App\Models\User;    
    //     $user->name = $request->nama;
    //     $user->email = $request->email;
    //     $user->password = bcrypt($request->password);
    //     $user->remember_token = Str::random(50);
    //     $user->save();

    //     return redirect('/login');
    // }

}
