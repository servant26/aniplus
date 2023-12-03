<?php

namespace App\Http\Controllers;
use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;

class TahunController extends Controller
{
    public function duatiga(){
        $duatiga = DB::table('aniplus')
            ->whereRaw("STR_TO_DATE(tgl_rilis, '%d/%m/%Y') BETWEEN '2021-01-01' AND '2023-12-31'")
            ->paginate(8);
        return view("pages.tahun.duatiga", ["duatiga" => $duatiga]);
    }

    public function duapuluh(){
        $duapuluh = DB::table('aniplus')
            ->whereRaw("STR_TO_DATE(tgl_rilis, '%d/%m/%Y') BETWEEN '2016-01-01' AND '2020-12-31'")
            ->paginate(8);
        return view("pages.tahun.duapuluh", ["duapuluh" => $duapuluh]);
    }

    public function limabelas(){
        $limabelas = DB::table('aniplus')
            ->whereRaw("STR_TO_DATE(tgl_rilis, '%d/%m/%Y') BETWEEN '2011-01-01' AND '2015-12-31'")
            ->paginate(8);
        return view("pages.tahun.limabelas", ["limabelas" => $limabelas]);
    }

    public function sepuluh(){
        $sepuluh = DB::table('aniplus')
            ->whereRaw("STR_TO_DATE(tgl_rilis, '%d/%m/%Y') BETWEEN '2006-01-01' AND '2010-12-31'")
            ->paginate(8);
        return view("pages.tahun.sepuluh", ["sepuluh" => $sepuluh]);
    }

    public function empat(){
        $empat = DB::table('aniplus')
            ->whereRaw("STR_TO_DATE(tgl_rilis, '%d/%m/%Y') BETWEEN '2000-01-01' AND '2005-12-31'")
            ->paginate(8);
        return view("pages.tahun.empat", ["empat" => $empat]);
    }

    public function sembilanpuluh(){
        $sembilanpuluh = DB::table('aniplus')
            ->whereRaw("STR_TO_DATE(tgl_rilis, '%d/%m/%Y') BETWEEN '1980-01-01' AND '1999-12-31'")
            ->paginate(8);
        return view("pages.tahun.sembilanpuluh", ["sembilanpuluh" => $sembilanpuluh]);
    }
    
}
