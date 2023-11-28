<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
class TypeController extends Controller
{
    public function tv(){
        $tv = DB::table('aniplus')
            ->where('tipe', 'tv') 
            ->paginate(8);
        return view("pages.type.tv", ["tv" => $tv]);
    }    

    public function movie(){
        $movie = DB::table('aniplus')
            ->where('tipe', 'movie') 
            ->paginate(8);
        return view("pages.type.movie", ["movie" => $movie]);
    } 
}
