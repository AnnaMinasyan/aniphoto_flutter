import 'dart:ui';
import 'package:flutter/material.dart';

class MyInput extends StatefulWidget {
  final String placeholder;
  final IconData icontype;
  final String value;
  MyInput({this.placeholder, this.icontype, this.value});
  @override
  _MyInputState createState() => _MyInputState();
}

class _MyInputState extends State<MyInput> {
  bool showPassword = true;
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(top: 20.0),
        decoration: BoxDecoration(
          color: Color.fromARGB(40, 255, 255, 255),
          border: Border.all(
            color: Color.fromARGB(150, 255, 255, 255),
            width: 1,
          ),
          borderRadius: BorderRadius.circular(5),
        ),
        child: TextField(
          style: TextStyle(color: Colors.white),
          obscureText: widget.placeholder == 'пароль' ? showPassword : false,
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: widget.placeholder,
            hintStyle: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
            suffixIcon: GestureDetector(
              onTap: () {
                showPassword = !showPassword;
                setState(() {});
              },
              child: widget.icontype == Icons.visibility_off &&
                      showPassword == false
                  ? Icon(
                      Icons.visibility,
                      color: Colors.white,
                    )
                  : Icon(
                      widget.icontype,
                      color: Colors.white,
                    ),
            ),
            prefixText: ' ',
          ),
        ));
  }
}
