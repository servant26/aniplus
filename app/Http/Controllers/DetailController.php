<?php

namespace App\Http\Controllers;
use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;

class DetailController extends Controller
{
    public function detail($id)
    {
        $detail = DB::table('aniplus')->where('id',$id)->get();
        return view('pages.detail',['detail' => $detail]);
    }
}
