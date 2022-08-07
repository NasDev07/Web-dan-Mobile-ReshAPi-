import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:mobile/home/login_page.dart';
import 'package:mobile/page/home_screen.dart';
import './register_page.dart';
import './rounded_button.dart';
import './Services/auth_serveices.dart';
import 'package:http/http.dart' as http;

import 'Services/globals.dart';

class RegisterPage extends StatefulWidget {
  RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  String _email = '';
  String _password = '';
  String _name = '';

  createAccountPressed() async {
    if (_email.isNotEmpty && _password.isNotEmpty && _name.isNotEmpty) {
      http.Response response =
          await AuthServices.register(_name, _email, _password);
      Map responseMap = jsonDecode(response.body);
      if (response.statusCode == 200) {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (BuildContext context) => const LoginPage(),
          ),
        );
      } else {
        errorSnackBar(context, responseMap.values.first);
      }
    } else {
      errorSnackBar(context, 'enter all required fields');
    }
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        elevation: 0,
        title: const Text(
          'Register',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(5),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18),
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              Padding(padding: EdgeInsets.only(bottom: 7)),
              TextFormField(
                decoration: new InputDecoration(
                  labelText: "Name",
                  hintText: "enter your name",
                  border: new OutlineInputBorder(
                    borderRadius: new BorderRadius.circular(20.0),
                  ),
                ),
                onChanged: (value) {
                  _name = value;
                },
              ),
              const SizedBox(
                height: 30,
              ),
              TextFormField(
                decoration: new InputDecoration(
                  labelText: "Email",
                  hintText: "enter your email",
                  border: new OutlineInputBorder(
                    borderRadius: new BorderRadius.circular(20.0),
                  ),
                ),
                onChanged: (value) {
                  _email = value;
                },
              ),
              const SizedBox(
                height: 30,
              ),
              TextFormField(
                obscureText: true,
                decoration: new InputDecoration(
                  labelText: "Password",
                  hintText: "enter your password",
                  border: new OutlineInputBorder(
                    borderRadius: new BorderRadius.circular(20.0),
                  ),
                ),
                onChanged: (value) {
                  _password = value;
                },
              ),
              const SizedBox(
                height: 20,
              ),
              RoundedButton(
                btnText: 'Create Account',
                onBtnPressed: createAccountPressed,
              ),
              const SizedBox(
                height: 15,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => const LoginPage(),
                    ),
                  );
                },
                child: const Text(
                  'Already have an account?',
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                    fontSize: 15,
                    color: Colors.blue,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
