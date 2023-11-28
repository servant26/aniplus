<?php

namespace App\Http\Controllers;
use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;

class HomeController extends Controller
{
    //
    public function index()
    {
        $type1 = DB::table('aniplus')
                ->where('tipe', 'tv')
                ->take(4)
                ->get();
    
        $type2 = DB::table('aniplus')
                ->where('tipe', 'movie')
                ->take(4) 
                ->get();
    
        return view('pages.home', [
            'type1' => $type1,
            'type2' => $type2,
        ]);
    }
    
}
