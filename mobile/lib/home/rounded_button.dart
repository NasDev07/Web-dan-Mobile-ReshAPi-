import 'package:flutter/material.dart';
import './register_page.dart';

class RoundedButton extends StatelessWidget {
  final String btnText;
  final Function onBtnPressed;

  const RoundedButton(
      {Key? key, required this.btnText, required this.onBtnPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 2.0,
      color: Colors.blue,
      borderRadius: BorderRadius.circular(25.0),
      child: MaterialButton(
        onPressed: () {
          onBtnPressed();
        },
        minWidth: 220.0,
        height: 50.0,
        child: Text(
          btnText,
          style: TextStyle(
            color: Colors.white,
            fontSize: 20.0,
          ),
        ),
      ),
    );
  }
}
