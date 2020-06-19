import 'package:flutter/material.dart';
import './pages/login.dart';


void main() {
  runApp(new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new Scaffold(
        resizeToAvoidBottomInset: false,
      //  appBar: new AppBar(title: new Header()),
        body: Login(),
      ),
          initialRoute: '/login',

      routes: {
        //'/':(context)=>MyDrawer(),
        '/login':(context)=> Login()
      },
      )
      );
}
