import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Frofil extends StatefulWidget {
  @override
  State<Frofil> createState() => _FrofilState(
        mahasiswa: {
          'nama': 'Kelompok',
          'email': 'kelompok@gmail.com',
        },
      );
}

class _FrofilState extends State<Frofil> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final Map<String, dynamic> mahasiswa;
  _FrofilState({required this.mahasiswa});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profil'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Image(
                width: double.infinity,
                height: MediaQuery.of(context).size.height / 4,
                fit: BoxFit.cover,
                image: AssetImage('assets/img/back.jpg'),
              ),
              Positioned(
                bottom: 1.0,
                child: CircleAvatar(
                  radius: 60,
                  backgroundColor: Colors.white,
                  backgroundImage: AssetImage('assets/img/pngback.png'),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 35,
          ),
          ListTile(
            title: Center(
              child: Text(
                'Hallo, ' + mahasiswa['nama'],
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 20,
                    fontWeight: FontWeight.w500),
              ),
            ),
            subtitle: Center(
              child: Text(
                'Email : ' + mahasiswa['email'],
                style: TextStyle(fontFamily: 'Poppins'),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(14.0),
            child: Text(
              'Sebagai seorang Human Resource (HR) di sebuah perusahaan, kamu harus memastikan bahwa setiap karyawan akan menerima gaji yang sesuai dengan absensi kehadiran mereka setiap bulannya. Di mana data absensi karyawan berpengaruh pada jumlah gaji karyawan sesuai aturan di perusahaan kamu.\n\n',
              style: TextStyle(fontFamily: 'Poppins', fontSize: 18),
            ),
          ),
        ],
      ),
    );
  }
}
