<?php

namespace App\Http\Controllers;
use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;

class ReqAnimeController extends Controller
{
    public function index()
    {
        return view('req');
    }

    public function store(Request $request)
    {
        // Periksa apakah judul anime sudah ada di database
        $exists = DB::table('req')->where('name', $request->input('animeName'))->exists();
    
        if ($exists) {
            // Jika sudah ada, kembalikan dengan alert
            return redirect('/req')->with('error', 'Wah, setelah mimin periksa, kayaknya udah ada orang lain nih yang request anime tersebut. Coba kamu cek lagi ya, siapa tau udah mimin up!');
        }
    
        // Jika belum ada, simpan data ke database
        DB::table('req')->insert([
            'name' => $request->input('animeName'),  // Gunakan 'animeName' sesuai dengan input di form
            'description' => $request->input('animeDescription'),  // Gunakan 'animeDescription' sesuai dengan input di form
            'created_at' => now(), // Set timestamp created_at
            'updated_at' => now(), // Set timestamp updated_at jika perlu
        ]);
        
        // Redirect dengan pesan sukses
        return redirect('/req')->with('success', 'Requestmu telah dikirimkan! Tunggu respon dari admin yaa :D');
    }
    
}    
