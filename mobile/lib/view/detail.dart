import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import './detail.dart';

class Detail extends StatelessWidget {
  final Map<String, dynamic> mahasiswa;
  // final Map mahasiswa;

  const Detail({required this.mahasiswa, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail'),
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Row(
                children: [
                  Image.asset(
                    'assets/img/scren.png',
                    width: 370,
                  ),
                ],
              ),
              Padding(padding: EdgeInsets.all(10)),
              Row(
                children: [
                  Text(
                    'Nama : ',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    mahasiswa['nama'],
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              Padding(padding: EdgeInsets.all(7)),
              Row(
                children: [
                  Text(
                    'Jenis Kelamin : ',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    mahasiswa['jenkel'],
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              Padding(padding: EdgeInsets.all(7)),
              Row(
                children: [
                  Text(
                    'HP : ',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    mahasiswa['hp'],
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              Padding(padding: EdgeInsets.all(7)),
              Row(
                children: [
                  Text(
                    'Pekerjaan : ',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    mahasiswa['jurusan'],
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              Padding(padding: EdgeInsets.all(7)),
              Row(
                children: [
                  Text(
                    'Alamat: ',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    mahasiswa['alamat'],
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              Padding(padding: EdgeInsets.all(7)),
              Row(
                children: [
                  Text(
                    'Jadwal : ',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    mahasiswa['created_at'],
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
