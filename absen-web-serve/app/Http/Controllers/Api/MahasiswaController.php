<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\Mahasiswa;
use Illuminate\Http\Request;

class MahasiswaController extends Controller
{ 
    public function index(){
        $mahasiswa = Mahasiswa::all();
        return response()->json(['message' => 'Success', 'data' => $mahasiswa,], 200);
    }

    public function store(Request $request){
        $mahasiswa = Mahasiswa::create($request->all());
        return response()->json(['message' => 'Success', 'data' => $mahasiswa,], 200);
    }

    public function update (Request $request, $id)
    {
        $mahasiswa = Mahasiswa::find($id);
        $mahasiswa->update($request->all());
        return response()->json(['message' => 'Success', 'data' => $mahasiswa,], 200);
    }

    public function destroy($id)
    {
        $mahasiswa = Mahasiswa::find($id);
        $mahasiswa->delete();
        return response()->json(['message' => 'Success', 'data' => $mahasiswa,], 200);
    }
}