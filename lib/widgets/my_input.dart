import 'dart:ui';
import 'package:flutter/material.dart';

class MyInput extends StatefulWidget {
   final String placeholder;
   final String icontype;
   final String value;
   MyInput({this.placeholder, this.icontype,this.value});
  @override
  _MyInputState createState() => _MyInputState();
}

class _MyInputState extends State<MyInput> {
  @override
  Widget build(BuildContext context) {
    return Container(
        //  margin: EdgeInsets.only(bottom: 15.0),
        decoration: BoxDecoration(
          color: Color.fromARGB(40, 255, 255, 255),
          border: Border.all(
            color: Color.fromARGB(150, 255, 255, 255),
            width: 1,
          ),
          borderRadius: BorderRadius.circular(5),
        ),
        child: TextField(
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: widget.placeholder,
            hintStyle: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
            //labelText: 'Life story',
            suffixIcon: const Icon(
              Icons.visibility_off,
              color: Colors.white,
            ),
            prefixText: ' ',
          ),
        ));
  }
}
