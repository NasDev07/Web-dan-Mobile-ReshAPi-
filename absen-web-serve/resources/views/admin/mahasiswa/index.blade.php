@extends('layouts.admin')

@section('content')
    <div class="col-12 mt-3">
        <div class="card card-info">
            <div class="card-header">
                <h3 class="card-title">Data Absen Karyawan</h3>

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
                            <th>Nama</th>
                            <th>Jenis Kelamin</th>
                            <th>Alamat</th>
                            <th>No Hp</th>
                            <th>Pekerjaan</th>
                            <th>Email</th>
                            <th>Jadwal</th>
                            <th>Opsi</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach ($mahasiswa as $mahasiswa)
                            <tr>
                                <td>{{ $mahasiswa->nama }}</td>
                                <td>{{ $mahasiswa->jenkel }}</td>
                                <td>{{ $mahasiswa->alamat }}</td>
                                <td>{{ $mahasiswa->hp }}</td>
                                <td>{{ $mahasiswa->jurusan }}</td>
                                <td>{{ $mahasiswa->email }}</td>
                                <td>{{ $mahasiswa->created_at }}</td> <!-- ->diffForHumans() (ini unutk 01 minute ago , format) -->
                                <td>
                                    <a href="/mahasiswa/{{ $mahasiswa->id }}/delete" class="btn btn-danger btn-sm"
                                        onclick="return confirm('Apakah Yakin Dihapus? {{ $mahasiswa->nama }}');">Hapus</a>
                                    <a href="/mahasiswa/{{ $mahasiswa->id }}/edit" class="btn btn-warning btn-sm">Edit</a>
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
