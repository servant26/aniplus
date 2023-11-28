<?php

namespace App\Http\Controllers;
use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;

class CariController extends Controller
{
public function cari(Request $request)
{
    $cari = $request->cari;
    $aniplus = DB::table('aniplus')
        ->where(function($query) use ($cari) {
            $query->where('judul', 'like', "%".$cari."%")
                  ->orWhere('judul_inggris', 'like', "%".$cari."%");
        })
        ->orderByRaw("STR_TO_DATE(tgl_rilis, '%d/%m/%Y') ASC")
        ->get();
    return view('pages.cari', ['cari' => $aniplus]);
}
  
}
