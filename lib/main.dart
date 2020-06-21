import 'package:flutter/material.dart';
import './pages/login.dart';
import './components/history_card.dart';

void main() {
  runApp(new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new Scaffold(
        resizeToAvoidBottomInset: false,
      //  appBar: new AppBar(title: new Header()),
        body: Login(),
      ),
          initialRoute: '/register',

      routes: {
        //'/':(context)=>MyDrawer(),
        '/login':(context)=> Login(),
        '/register':(context)=>CardOfHistory()
      },
      )
      );
}
