<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;

class AdminSrvntController extends Controller
{
    public function index()
    {
        // Ambil data dari tabel req
        $data = DB::table('req')
        ->orderBy('created_at', 'desc')
        ->get();
        return view('admin.dashboard', compact('data'));
    }

    public function list()
    {
        // Ambil data dari tabel req
        $data = DB::table('aniplus')
        ->get();
        return view('admin.list_anime', compact('data'));
    }
}
