<?php

namespace App\Http\Controllers;
use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;

class IsiController extends Controller
{
    public function isi($id)
    {
        $isi = DB::table('aniplus')->where('id',$id)->get();
        return view('pages.isi',['isi' => $isi]);
    }
}
