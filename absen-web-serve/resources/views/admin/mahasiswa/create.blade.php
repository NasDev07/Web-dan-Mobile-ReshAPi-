@extends('layouts.admin')

@section('content')
    <div class="content">
        <div class="card card-info">
            <div class="card-header">
                <h3 class="card-title">Absen +</h3>
            </div>
            <!-- /.card-header -->
            <!-- form start -->
            <form action="{{ url('/mahasiswa/store') }}" method="POST">
                {{ csrf_field() }}
                <div class="card-body">
                    <div class="form-group">
                        <label for="nama">Nama Lengkap</label>
                        <input type="text" name="nama" class="form-control" id="exampleInputEmail1"
                            placeholder="Nama Lengkap">
                    </div>

                    <div class="form-group">
                        <label for="jenkel">Pilih Jenis Kelamin</label>
                        <select name="jenkel" id="" class="custom-select rounded-0">
                            <option selected="">Pilih Jenis Kelamin</option>
                            <option value="laki">Laki</option>
                            <option value="perempuan">Perempuan</option>
                        </select>
                    </div>

                    <div class="form-group">
                        <label for="alamat">Alamat</label>
                        <textarea name="alamat" id="floatingTextArea" class="form-control" rows="3" placeholder="Alamat"></textarea>
                    </div>

                    <div class="form-group">
                        <label for="hp">No HP</label>
                        <input type="number" name="hp" class="form-control" id="exampleInputEmail1" placeholder="+62">
                    </div>

                    <div class="form-group">
                        <label for="jurusan">Pilih Pekerjaan</label>
                        <select name="jurusan" id="" class="custom-select rounded-0">
                            <option selected="">Pilih Pekerjaan</option>
                            <option value="Web Developer">Web Developer</option>
                            <option value="SSoftwere Developer">Softwere Developer</option>
                            <option value="Data Analis">Data Analis</option>
                            <option value="Administrasi">Administrasi</option>
                            <option value="FullStack Develeper">FullStack Develeper</option>
                        </select>
                    </div>

                    <div class="form-group">
                        <label for="email">Email</label>
                        <input type="email" name="email" class="form-control" id="exampleInputEmail1"
                            placeholder="masukkan email">
                    </div>

                    <div class="form-group">
                        <label for="dosen_id">Masukkan PT Pekerjaan</label>
                        <select type="number" name="dosen_id" class="form-control" id="exampleInputEmail1"
                            placeholder="Masukkan No Pekerjaan 1 huruf">
                            <option value="">--Pilih--</option>
                            <option value="1">PT.BCA</option>
                            <option value="2">PT.ABC</option>
                            <option value="3">PT.PBAS</option>
                            <option value="4">PT.PERMATA</option>
                            <option value="5">PT.TELKOM</option>
                        </select>                            
                    </div>
                </div>
                <!-- /.card-body -->

                <div class="card-footer">
                    <button type="submit" class="btn btn-primary">Submit</button>
                </div>
            </form>
        </div>
    </div>
@endsection
