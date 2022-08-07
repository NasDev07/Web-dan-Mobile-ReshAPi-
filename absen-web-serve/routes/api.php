<?php

use App\Http\Controllers\API\AuthController;
use App\Http\Controllers\Api\Authorcontroller;
use App\Http\Controllers\Api\MahasiswaController;
use App\Models\Mahasiswa;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});


// login api
Route::post('/register', [Authorcontroller::class, 'register']);
Route::post('/login', [Authorcontroller::class, 'login']);


// crud api
Route::get('/mahasiswa', [MahasiswaController::class, 'index']);
Route::post('/mahasiswa/store', [MahasiswaController::class, 'store']);
Route::put('/mahasiswa/{id}', [MahasiswaController::class, 'update']);
Route::delete('/mahasiswa/{id}', [MahasiswaController::class, 'destroy']);

Route::get('/mahasiswa/dosen', [MahasiswaController::class, 'dosen']);
