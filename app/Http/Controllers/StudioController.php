<?php

namespace App\Http\Controllers;
use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;

class StudioController extends Controller
{
    public function a1pictures(){
        $a1pictures = DB::table('aniplus')
            ->where('studio', 'LIKE', '%A-1 Pictures%') 
            ->paginate(8);
        return view("pages.studio.a1pictures", ["a1pictures" => $a1pictures]);
    }

    public function bones(){
        $bones = DB::table('aniplus')
            ->where('studio', 'LIKE', '%Bones%') 
            ->paginate(8);
        return view("pages.studio.bones", ["bones" => $bones]);
    }

    public function comixwavefilms(){
        $comixwavefilms = DB::table('aniplus')
            ->where('studio', 'LIKE', '%CoMix Wave Films%') 
            ->paginate(8);
        return view("pages.studio.comixwavefilms", ["comixwavefilms" => $comixwavefilms]);
    }
    
    public function davidproduction(){
        $davidproduction = DB::table('aniplus')
            ->where('studio', 'LIKE', '%David Production%') 
            ->paginate(8);
        return view("pages.studio.davidproduction", ["davidproduction" => $davidproduction]);
    }
    
    public function kyotoanimation(){
        $kyotoanimation = DB::table('aniplus')
            ->where('studio', 'LIKE', '%Kyoto Animation%') 
            ->paginate(8);
        return view("pages.studio.kyotoanimation", ["kyotoanimation" => $kyotoanimation]);
    }
    
    public function madhouse(){
        $madhouse = DB::table('aniplus')
            ->where('studio', 'LIKE', '%Madhouse%') 
            ->paginate(8);
        return view("pages.studio.madhouse", ["madhouse" => $madhouse]);
    }
    
    public function mappa(){
        $mappa = DB::table('aniplus')
            ->where('studio', 'LIKE', '%Mappa%') 
            ->paginate(8);
        return view("pages.studio.mappa", ["mappa" => $mappa]);
    }

    public function productionig(){
        $productionig = DB::table('aniplus')
            ->where('studio', 'LIKE', '%Production I.G%') 
            ->paginate(8);
        return view("pages.studio.productionig", ["productionig" => $productionig]);
    }
    
    public function studioghibli(){
        $studioghibli = DB::table('aniplus')
            ->where('studio', 'LIKE', '%Studio Ghibli%') 
            ->paginate(8);
        return view("pages.studio.studioghibli", ["studioghibli" => $studioghibli]);
    }
    
    public function ufotable(){
        $ufotable = DB::table('aniplus')
            ->where('studio', 'LIKE', '%ufotable%') 
            ->paginate(8);
        return view("pages.studio.ufotable", ["ufotable" => $ufotable]);
    }
    
    public function whitefox(){
        $whitefox = DB::table('aniplus')
            ->where('studio', 'LIKE', '%White Fox%') 
            ->paginate(8);
        return view("pages.studio.whitefox", ["whitefox" => $whitefox]);
    }
    
    public function witstudio(){
        $witstudio = DB::table('aniplus')
            ->where('studio', 'LIKE', '%Wit Studio%') 
            ->paginate(8);
        return view("pages.studio.witstudio", ["witstudio" => $witstudio]);
    }
}
