<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\TypeController;
use App\Http\Controllers\GenreController;
use App\Http\Controllers\TahunController;
use App\Http\Controllers\DetailController;
use App\Http\Controllers\CariController;
use App\Http\Controllers\StudioController;
use App\Http\Controllers\ReqAnimeController;
use App\Http\Controllers\AdminSrvntController;
use App\Http\Controllers\AuthController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

// Route::get('/', function () {
//     return view('welcome');
// });

//home
Route::get('/', [HomeController::class, 'index']);

//tipe
Route::prefix('type')->group(function () {
    Route::get('/tv', [TypeController::class, 'tv']);
    Route::get('/movie', [TypeController::class, 'movie']);
});


//genre
Route::prefix('genre')->group(function () {
    Route::get('/action', [GenreController::class, 'action']);
    Route::get('/adventure', [GenreController::class, 'adventure']);
    Route::get('/comedy', [GenreController::class, 'comedy']);
    Route::get('/drama', [GenreController::class, 'drama']);
    Route::get('/fantasy', [GenreController::class, 'fantasy']);
    Route::get('/mystery', [GenreController::class, 'mystery']);
    Route::get('/romance', [GenreController::class, 'romance']);
    Route::get('/scifi', [GenreController::class, 'scifi']);
    Route::get('/sol', [GenreController::class, 'sol']);
    Route::get('/sports', [GenreController::class, 'sports']);
    Route::get('/supernatural', [GenreController::class, 'supernatural']);
});

//studio
Route::prefix('studio')->group(function () {
    Route::get('/a1pictures', [StudioController::class, 'a1pictures']);
    Route::get('/bones', [StudioController::class, 'bones']);
    Route::get('/comixwavefilms', [StudioController::class, 'comixwavefilms']);
    Route::get('/davidproduction', [StudioController::class, 'davidproduction']);
    Route::get('/kyotoanimation', [StudioController::class, 'kyotoanimation']);
    Route::get('/madhouse', [StudioController::class, 'madhouse']);
    Route::get('/mappa', [StudioController::class, 'mappa']);
    Route::get('/productionig', [StudioController::class, 'productionig']);
    Route::get('/studioghibli', [StudioController::class, 'studioghibli']);
    Route::get('/ufotable', [StudioController::class, 'ufotable']);
    Route::get('/whitefox', [StudioController::class, 'whitefox']);
    Route::get('/witstudio', [StudioController::class, 'witstudio']);
    Route::get('/other', [StudioController::class, 'other']);
});

//tahun
Route::prefix('tahun')->group(function () {
    Route::get('/24', [TahunController::class, 'duaempat']);
    Route::get('/20', [TahunController::class, 'duapuluh']);
    Route::get('/15', [TahunController::class, 'limabelas']);
    Route::get('/10', [TahunController::class, 'sepuluh']);
    Route::get('/04', [TahunController::class, 'empat']);
    Route::get('/90', [TahunController::class, 'sembilanpuluh']);
});

//detail
Route::get('/detail/{id}', [DetailController::class, 'detail']);

//cari
Route::get('/cari', [CariController::class, 'cari']);

//request
Route::get('/req', [ReqAnimeController::class, 'index']);
Route::post('/req/store', [ReqAnimeController::class, 'store']);

Route::middleware('admin')->group(function () {
    Route::get('/adminsrvnt', [AdminSrvntController::class, 'index'])->name('adminsrvnt');
    Route::get('/list_anime', [AdminSrvntController::class, 'list'])->name('list');
    Route::get('/anime/create', [AdminSrvntController::class, 'create'])->name('anime.create');
    Route::post('/anime/store', [AdminSrvntController::class, 'store'])->name('anime.store');
    Route::get('/anime/edit/{id}', [AdminSrvntController::class, 'edit'])->name('anime.edit');
    Route::post('/anime/update/{id}', [AdminSrvntController::class, 'update'])->name('anime.update');
    Route::post('/anime/delete/{id}', [AdminSrvntController::class, 'destroy'])->name('anime.destroy');
});


//login
Route::get('/loginsrvnt', [AuthController::class, 'showLoginForm'])->name('login');
Route::post('/login', [AuthController::class, 'login'])->name('login.post');
Route::get('/logout', [AuthController::class, 'logout'])->name('logout');


