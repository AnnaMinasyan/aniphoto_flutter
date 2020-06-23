import 'package:aniphoto/pages/drawer_pages/history.dart';
import 'package:aniphoto/pages/registration.dart';
import 'package:flutter/material.dart';
import './pages/login.dart';
import './pages/registration.dart';
import './pages/drawer_pages/main_drawer.dart';
import './pages/drawer_pages/history.dart';
import './pages/drawer_pages/address.dart';
import './pages/drawer_pages/new_address.dart';
import './pages/order.dart';
void main() => runApp(MyApp());

// ...

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Code Sample for Navigator',
debugShowCheckedModeBanner: false,    
  initialRoute: '/',
      routes: {
        '/': (BuildContext context) => Login(),
        '/registr': (BuildContext context) => Registration(),
        '/drawer': (BuildContext context) => MainDrawer(),
        '/history': (BuildContext context) => History(),
         '/address': (BuildContext context) => Addresses(), 
          '/newaddress': (BuildContext context) => NewAddresses(),
          '/create-order': (BuildContext context) => Order(),
      },
    );
  }
}