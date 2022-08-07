import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:mobile/view/add_data.dart';
import 'package:mobile/view/detail.dart';

class Absen extends StatefulWidget {
  const Absen({Key? key}) : super(key: key);

  @override
  State<Absen> createState() => _AbsenState();
}

class _AbsenState extends State<Absen> {
  final String url = 'http://10.0.2.2:8000/api/mahasiswa';

  getMahasiswa() async {
    final response = await http.get(Uri.parse(url));
    print(json.decode(response.body));
    return json.decode(response.body);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => AddData(),
            ),
          );
        },
        child: Icon(Icons.add),
      ),
      appBar: AppBar(
        title: Text('Absen Karyawan'),
      ),
      body: FutureBuilder(
        future: getMahasiswa(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              padding: EdgeInsets.all(10),
              itemCount: snapshot.data['data'].length,
              itemBuilder: (context, index) {
                return Container(
                  height: 100,
                  child: Card(
                    elevation: 8,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Detail(
                              mahasiswa: snapshot.data['data'][index],
                            ),
                          ),
                        );
                      },
                      child: Row(
                        children: [
                          Container(
                            margin: EdgeInsets.all(10),
                            child: Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => Detail(
                                            mahasiswa: snapshot.data['data']
                                                [index],
                                          ),
                                        ),
                                      );
                                    },
                                    child: Container(
                                      child: Text(
                                        snapshot.data['data'][index]['nama'],
                                        style: TextStyle(
                                          fontSize: 35.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    child: Text(
                                      snapshot.data['data'][index]['jenkel'],
                                      style: TextStyle(
                                        fontSize: 17.0,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            );
          } else {
            return Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}
