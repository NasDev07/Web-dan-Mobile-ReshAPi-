import 'dart:async';

import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/material.dart';
import './home/wrapper.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 14), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Wrapper()),
      );
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: Colors.white,
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          Image.asset(
            'assets/progress.gif',
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
          ),
        ],
      ),
    ));
  }
}
