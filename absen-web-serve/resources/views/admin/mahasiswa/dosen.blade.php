@extends('layouts.admin')

@section('content')
    <div class="col-12 mt-3">
        <div class="card card-info">
            <div class="card-header">
                <h3 class="card-title">Tambah Data Perusahan</h3>

                <div class="card-tools">
                    <form action="/mahasiswa/search" class="form-inline" method="GET">
                        <input type="search" name="search" class="form-control float-right" placeholder="isi nama pencarian">
                        <div class="input-group-append">
                            <button type="submit" class="btn btn-default">
                                <i class="fas fa-search"></i>
                            </button>
                        </div>
                    </form>
                </div>
            </div>
            <!-- /.card-header -->
            <div class="card-body table-responsive p-0">
                <table class="table table-hover text-nowrap">
                    <thead>
                        <tr>
                            <th>Nomor PT</th>
                            <th>Nama PT</th>
                            <th>Nama Karyawan</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach ($dosen as $dosen)
                            <tr>
                                <td>{{ $dosen->nidn }}</td>
                                <td>{{ $dosen->nama_dosen }}</td>
                                <td>
                                    @foreach ($dosen->mahasiswa as $mhs)
                                        {{ $mhs->nama }}  <sub><i class="right fas fa-angle-right"></i></sub>
                                    @endforeach
                                </td>

                            </tr>
                        @endforeach
                    </tbody>
                </table>
            </div>
            <!-- /.card-body -->
        </div>
        <!-- /.card -->
    </div>
@endsection
