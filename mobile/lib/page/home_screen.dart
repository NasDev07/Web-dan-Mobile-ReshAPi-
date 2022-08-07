import 'package:flutter/material.dart';
import 'package:mobile/home/Services/globals.dart';
import 'package:mobile/home/login_page.dart';
import 'package:mobile/page/frofil.dart';
import 'package:mobile/view/absen.dart';
import 'header_drawer.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomeScreen extends StatelessWidget {
  // const HomeScreen({Key? key}) : super(key: key)

  final List<String> imgList = [
    'assets/img/satu.jpg',
    'assets/img/dua.jpg',
    'assets/img/tiga.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('K9 👩‍💻'),
        centerTitle: true,
      ),
      drawer: Drawer(
        child: SingleChildScrollView(
          child: Column(
            children: [
              MyHeaderDrawer(),
              ListTile(
                leading: const Icon(Icons.home),
                title: const Text('Beranda'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(Icons.account_box),
                title: const Text('Absen Karyawan'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Absen(),
                    ),
                  );
                },
              ),
              ListTile(
                leading: const Icon(Icons.settings),
                title: const Text('Profil'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => Frofil(),
                    ),
                  );
                },
              ),
              ListTile(
                leading: const Icon(Icons.logout),
                title: const Text('Sign out'),
                onTap: () {
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => const LoginPage(),
                    ),
                    (route) => false,
                  );
                },
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: Container(
        child: Column(
          children: [
            Container(
              child: CarouselSlider(
                options: CarouselOptions(
                  autoPlay: true,
                  aspectRatio: 2.0,
                  enlargeCenterPage: true,
                ),
                items: imgList.map((item) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                        padding: EdgeInsets.only(top: 20),
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.symmetric(horizontal: 5.0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                        ),
                        child: Image.asset(
                          item,
                          fit: BoxFit.cover,
                        ),
                      );
                    },
                  );
                }).toList(),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 20),
                  child: Container(
                    padding: const EdgeInsets.only(left: 16, right: 16),
                    child: Column(
                      children: const [
                        Text(
                          'Absen Karyawan',
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w500,
                            letterSpacing: 2.5,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 25),
              child: Container(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Column(
                  children: const [
                    Card(
                      elevation: 10,
                      child: ListTile(
                        leading: const Image(
                            image: AssetImage('assets/img/satu.jpg'),
                            height: 200),
                        title: const Text('Perusahaan Absensi'),
                      ),
                    ),
                    Card(
                      elevation: 10,
                      child: ListTile(
                        leading: const Image(
                            image: AssetImage('assets/img/dua.jpg'),
                            height: 200),
                        title: const Text('Ruang Kerja'),
                      ),
                    ),
                    Card(
                      elevation: 10,
                      child: ListTile(
                        leading: const Image(
                            image: AssetImage('assets/img/tiga.jpg'),
                            height: 200),
                        title: const Text('Karyawan Kerja'),
                      ),
                    ),
                    Card(
                      elevation: 10,
                      child: ListTile(
                        leading: const Image(
                            image: AssetImage('assets/img/empat.jpg'),
                            height: 200),
                        title: const Text('Pembelajaran Coding'),
                      ),
                    ),
                    Card(
                      elevation: 10,
                      child: ListTile(
                        leading: const Image(
                            image: AssetImage('assets/img/pngback.png'),
                            height: 200),
                        title: const Text('Tentang Kami'),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
