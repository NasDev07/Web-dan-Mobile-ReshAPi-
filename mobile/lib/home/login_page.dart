import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:mobile/home/Services/auth_serveices.dart';
import 'package:mobile/home/Services/globals.dart';
import 'package:mobile/home/register_page.dart';
import 'package:mobile/home/rounded_button.dart';
import 'package:http/http.dart' as http;
import 'package:mobile/page/home_screen.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String _email = '';
  String _password = '';

  loginPressed() async {
    if (_email.isNotEmpty && _password.isNotEmpty) {
      http.Response response = await AuthServices.login(_email, _password);
      Map responseMap = jsonDecode(response.body);
      if (response.statusCode == 200) {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (BuildContext context) => HomeScreen(),
          ),
        );
      } else {
        errorSnackBar(context, responseMap.values.first);
      }
    } else {
      errorSnackBar(context, 'enter all required fields');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        elevation: 0,
        title: const Text(
          'Login',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 7),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(padding: EdgeInsets.only(bottom: 20)),
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
                    height: 20,
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/img/loading.gif',
                        width: 180,
                      ),
                    ],
                  ),
                  RoundedButton(
                    btnText: 'LOG IN',
                    onBtnPressed: () => loginPressed(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
