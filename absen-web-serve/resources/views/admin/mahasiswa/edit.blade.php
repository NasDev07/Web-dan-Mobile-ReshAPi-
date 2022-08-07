@extends('layouts.admin')

@section('content')
    <div class="content">
        <div class="card card-info">
            <div class="card-header">
                <h3 class="card-title">Edit Mahasiswa</h3>
            </div>
            <!-- /.card-header -->
            <!-- form start -->
            <form action="/mahasiswa/{{ $mahasiswa->id }}/update" method="POST">
                {{ csrf_field() }}
                <div class="card-body">
                    <div class="form-group">
                        <label for="nama">Nama Lengkap</label>
                        <input type="text" name="nama" value="{{ $mahasiswa->nama }}" class="form-control" id="exampleInputEmail1" placeholder="Nama Lengkap">
                    </div>

                    <div class="form-group">
                        <label for="jenkel">Pilih Jenis Kelamin</label>
                        <select name="jenkel" id="" class="custom-select rounded-0">
                            <option selected="">Pilih Jenis Kelamin</option>
                            <option value="laki" @if($mahasiswa->jenkel=='laki') selected @endif>Laki</option>
                            <option value="perempuan" @if($mahasiswa->jenkel=='perempuan') selected @endif>Perempuan</option>
                        </select>
                    </div>

                    <div class="form-group">
                        <label for="alamat">Alamat</label>
                        <textarea name="alamat" id="floatingTextArea" class="form-control">{{ $mahasiswa->alamat}}</textarea>
                    </div>

                    <div class="form-group">
                        <label for="hp">No HP</label>
                        <input type="number" name="hp" class="form-control" id="exampleInputEmail1" placeholder="+62" value="{{ $mahasiswa->hp }}">
                    </div>

                    <div class="form-group">
                        <label for="jurusan">Pilih Pekerjaan</label>
                        <select name="jurusan" id="" class="custom-select rounded-0">
                            <option selected="">Pilih Jurusan</option>
                            <option value="Web Developer" @if($mahasiswa->jurusan=='Web Developer') selected @endif>Web Developer</option>
                            <option value="Softwere Developer" @if($mahasiswa->jurusan=='Softwere Developer') selected @endif>Softwere Developer</option>
                            <option value="Data Analis"@if($mahasiswa->jurusan=='Data Analis') selected @endif>Data Analis</option>
                            <option value="Administrasi"@if($mahasiswa->jurusan=='Administrasi') selected @endif>Administrasi</option>
                            <option value="FullStack Develeper"@if($mahasiswa->jurusan=='FullStack Develeper') selected @endif>FullStack Develeper</option>
                        </select>    

                    <div class="form-group">
                        <label for="email">Email</label>
                        <input type="email" name="email" class="form-control" id="exampleInputEmail1" placeholder="masukkan email" value="{{ $mahasiswa->email }}">
                    </div>

                </div>
                <!-- /.card-body -->

                <div class="card-footer">
                    <button type="submit" class="btn btn-warning">Update</button>
                </div>
            </form>
        </div>
    </div>
@endsection
