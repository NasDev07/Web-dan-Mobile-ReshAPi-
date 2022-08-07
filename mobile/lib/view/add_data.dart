import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:http/http.dart' as http;
import 'package:mobile/view/absen.dart';

class AddData extends StatelessWidget {
  AddData({Key? key}) : super(key: key);

  final _formkey = GlobalKey<FormState>();
  TextEditingController _nameController = TextEditingController();
  TextEditingController _jenkelController = TextEditingController();
  TextEditingController _alamatController = TextEditingController();
  TextEditingController _hpController = TextEditingController();
  TextEditingController _pekerjaan = TextEditingController();

  Future saveMahasiswa() async {
    final response = await http.post(
      Uri.parse("http://10.0.2.2:8000/api/mahasiswa/store"),
      body: {
        "nama": _nameController.text,
        "jenkel": _jenkelController.text,
        "alamat": _alamatController.text,
        "hp": _hpController.text,
        "jurusan": _pekerjaan.text,
      },
    );
    print(response.body);
    return json.decode(response.body);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tambah Data'),
      ),
      body: Form(
          key: _formkey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Padding(padding: EdgeInsets.all(10)),
              TextFormField(
                controller: _nameController,
                decoration: new InputDecoration(
                  labelText: "Nama",
                  hintText: "Masukkan Nama",
                  icon: new Icon(Icons.person),
                  border: new OutlineInputBorder(
                    borderRadius: new BorderRadius.circular(20.0),
                  ),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'plese fill the name';
                  }
                  return null;
                },
              ),
              const Padding(padding: EdgeInsets.all(10)),
              TextFormField(
                controller: _jenkelController,
                decoration: new InputDecoration(
                  labelText: "Pr/Lk",
                  hintText: "Masukkan Jenis Kelamin",
                  icon: new Icon(Icons.portrait),
                  border: new OutlineInputBorder(
                    borderRadius: new BorderRadius.circular(20.0),
                  ),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'plese fill the jenkel';
                  }
                  return null;
                },
              ),
              const Padding(padding: EdgeInsets.all(10)),
              TextFormField(
                controller: _alamatController,
                decoration: new InputDecoration(
                  labelText: "Alamat",
                  hintText: "Masukkan Alamat",
                  icon: new Icon(Icons.map),
                  border: new OutlineInputBorder(
                    borderRadius: new BorderRadius.circular(20.0),
                  ),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'plese fill the alamat';
                  }
                  return null;
                },
              ),
              const Padding(padding: EdgeInsets.all(10)),
              TextFormField(
                controller: _hpController,
                decoration: new InputDecoration(
                  labelText: "No HP",
                  hintText: "Masukkan No HP",
                  icon: new Icon(Icons.phone),
                  border: new OutlineInputBorder(
                    borderRadius: new BorderRadius.circular(20.0),
                  ),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'plese fill the no hp';
                  }
                  return null;
                },
              ),
              const Padding(padding: EdgeInsets.all(10)),
              TextFormField(
                controller: _pekerjaan,
                decoration: new InputDecoration(
                  labelText: "Pekerjaan",
                  hintText: "Masukkan Perkerjaan",
                  icon: new Icon(Icons.kayaking),
                  border: new OutlineInputBorder(
                    borderRadius: new BorderRadius.circular(20.0),
                  ),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'plese fill the pekerjaan';
                  }
                  return null;
                },
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  if (_formkey.currentState!.validate()) {
                    saveMahasiswa().then(
                      (value) => {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Absen()),
                        ),
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text('Data berhasil add'),
                          ),
                        ),
                      },
                    );
                  } else {
                    print('error');
                  }
                },
                child: Text('Save'),
              ),
            ],
          )),
    );
  }
}
