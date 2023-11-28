<?php

namespace App\Http\Controllers;
use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;

class GenreController extends Controller
{
    public function action(){
        $action = DB::table('aniplus')
            ->where('genre', 'LIKE', '%Action%') 
            ->paginate(8);
        return view("pages.genre.action", ["action" => $action]);
    }

    public function adventure(){
        $adventure = DB::table('aniplus')
            ->where('genre', 'LIKE', '%adventure%')
            ->paginate(8);
        return view("pages.genre.adventure", ["adventure" => $adventure]);
    }
    
    public function comedy(){
        $comedy = DB::table('aniplus')
            ->where('genre', 'LIKE', '%comedy%')
            ->paginate(8);
        return view("pages.genre.comedy", ["comedy" => $comedy]);
    }
    
    public function drama(){
        $drama = DB::table('aniplus')
            ->where('genre', 'LIKE', '%drama%')
            ->paginate(8);
        return view("pages.genre.drama", ["drama" => $drama]);
    }
    
    public function fantasy(){
        $fantasy = DB::table('aniplus')
            ->where('genre', 'LIKE', '%fantasy%')
            ->paginate(8);
        return view("pages.genre.fantasy", ["fantasy" => $fantasy]);
    }

    public function mystery(){
        $mystery = DB::table('aniplus')
            ->where('genre', 'LIKE', '%mystery%')
            ->paginate(8);
        return view("pages.genre.mystery", ["mystery" => $mystery]);
    }
    
    public function romance(){
        $romance = DB::table('aniplus')
            ->where('genre', 'LIKE', '%romance%')
            ->paginate(8);
        return view("pages.genre.romance", ["romance" => $romance]);
    }
    
    public function scifi(){
        $scifi = DB::table('aniplus')
            ->where('genre', 'LIKE', '%Sci-Fi%')
            ->paginate(8);
        return view("pages.genre.scifi", ["scifi" => $scifi]);
    }
    
    public function sol(){
        $sol = DB::table('aniplus')
            ->where('genre', 'LIKE', '%Slice of Life%')
            ->paginate(8);
        return view("pages.genre.sol", ["sol" => $sol]);
    }
    
    public function sports(){
        $sports = DB::table('aniplus')
            ->where('genre', 'LIKE', '%Sports%')
            ->paginate(8);
        return view("pages.genre.sports", ["sports" => $sports]);
    }
    
    public function supernatural(){
        $supernatural = DB::table('aniplus')
            ->where('genre', 'LIKE', '%Supernatural%')
            ->paginate(8);
        return view("pages.genre.supernatural", ["supernatural" => $supernatural]);
    }
    
}
