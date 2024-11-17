<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

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

    public function create()
    {
        $types = DB::table('aniplus')->distinct()->pluck('tipe');
        $seasons = DB::table('aniplus')->distinct()->pluck('season');
        $studios = DB::table('aniplus')->distinct()->pluck('studio');
    
        return view('admin.create_anime', compact('types', 'seasons', 'studios'));
    }
    
    public function store(Request $request)
    {
        DB::table('aniplus')->insert([
            'judul' => $request->judul,
            'tipe' => $request->tipe,
            'score' => $request->score,
            'episode' => $request->episode,
            'tgl_rilis' => $request->tgl_rilis,
            'season' => $request->season,
            'genre' => $request->genre,
            'studio' => $request->studio,
            'gambar' => $request->gambar,
            'trailer' => $request->trailer,
            'judul_inggris' => $request->judul_inggris,
            'link' => $request->link, 
        ]);
    
        return redirect()->route('list')->with('success', 'Anime added successfully!');
    }
    
    public function edit($id)
    {
        $anime = DB::table('aniplus')->where('id', $id)->first();
        $types = DB::table('aniplus')->distinct()->pluck('tipe');
        $seasons = DB::table('aniplus')->distinct()->pluck('season');
        $studios = DB::table('aniplus')->distinct()->pluck('studio');
        
        return view('admin.edit_anime', compact('anime', 'types', 'seasons', 'studios'));
    }
    
    public function update(Request $request, $id)
    {
        DB::table('aniplus')->where('id', $id)->update([
            'judul' => $request->judul,
            'tipe' => $request->tipe,
            'score' => $request->score,
            'episode' => $request->episode,
            'tgl_rilis' => $request->tgl_rilis,
            'season' => $request->season,
            'genre' => $request->genre,
            'studio' => $request->studio,
            'gambar' => $request->gambar,
            'trailer' => $request->trailer,
            'judul_inggris' => $request->judul_inggris,
            'link' => $request->link,
        ]);
    
        return redirect()->route('list')->with('success', 'Anime updated successfully!');
    }
    
    public function destroy($id)
    {
        DB::table('aniplus')->where('id', $id)->delete();
        return redirect()->route('list')->with('success', 'Anime deleted successfully!');
    }
    
}
