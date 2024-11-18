<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Session;
use App\Models\Admin;

class AuthController extends Controller
{
    public function showLoginForm()
    {
        return view('auth.login');
    }

    public function login(Request $request)
    {
        $request->validate([
            'username' => 'required',
            'password' => 'required',
        ]);

        $admin = Admin::where('username', $request->username)->first();

        if ($admin && Hash::check($request->password, $admin->password)) {
            Session::put('admin', $admin->id);
            return redirect()->route('adminsrvnt');
        }

        return back()->withErrors(['loginError' => 'Incorrect username or password']);
    }
    
    public function logout()
    {
        Session::forget('admin'); // Hapus sesi admin
        return redirect()->route('login')->with('success', 'You have successfully logged out.');
    }
    
}
