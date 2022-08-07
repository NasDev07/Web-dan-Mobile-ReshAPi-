<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\AdminController;
use App\Http\Controllers\DosenController;
use App\Http\Controllers\PortoController;
use App\Http\Controllers\AuthorCollection;
use App\Http\Controllers\DinamisController;
use App\Http\Controllers\MahasiswaController;

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

Route::get('/', [PortoController::class, 'index']);

Route::get('web/beranda', [DinamisController::class, 'beranda']);
Route::get('web/profil', [DinamisController::class, 'profil']);
Route::get('web/kontak', [DinamisController::class, 'kontak']);

Route::get('/login', [AuthorCollection::class, 'login']);
Route::post('/login', [AuthorCollection::class, 'authenticate']);

Route::get('/register', [AuthorCollection::class, 'register']);
Route::post('/register', [AuthorCollection::class, 'store']);

Route::get('/dashboard', [AdminController::class, 'dashboard'])->name('dashboard');

Route::get('/mahasiswa', [MahasiswaController::class, 'index']);
Route::get('/mahasiswa/create', [MahasiswaController::class, 'create']);
Route::post('/mahasiswa/store', [MahasiswaController::class, 'store']);
Route::get('/mahasiswa/{id}/edit', [MahasiswaController::class, 'edit']);
Route::post('/mahasiswa/{id}/update', [MahasiswaController::class, 'update']);
Route::get('/mahasiswa/{id}/delete', [MahasiswaController::class, 'destroy']);

Route::get('/mahasiswa/search', [MahasiswaController::class, 'search']);

//1-n
Route::get('/mahasiswa/dosen', [MahasiswaController::class, 'dosen']);

// n-n
Route::get('/mahasiswa/matkul', [MahasiswaController::class, 'matkul']);