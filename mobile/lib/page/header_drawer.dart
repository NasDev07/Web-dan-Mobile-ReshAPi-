import 'package:flutter/material.dart';
import '../home/register_page.dart';
import '../home/Services/auth_serveices.dart';
import '../home/Services/globals.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import '../home/login_page.dart';

class MyHeaderDrawer extends StatefulWidget {
  @override
  _MyHeaderDrawerState createState() => _MyHeaderDrawerState();
}

class _MyHeaderDrawerState extends State<MyHeaderDrawer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue[600],
      width: double.infinity,
      height: 200,
      padding: const EdgeInsets.only(top: 20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 10.0),
            height: 70.0,
            decoration: const BoxDecoration(
              shape: BoxShape.rectangle,
              image: DecorationImage(
                image: AssetImage('assets/img/pngback.png'),
              ),
            ),
          ),
          Text(
            'Welcome',
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          const Text(
            'Selamat Datang di APP kami🚀',
            style: TextStyle(color: Colors.white, fontSize: 15),
          ),
        ],
      ),
    );
  }
}
