import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../models/login.dart';
import './drawer_pages/main_drawer.dart';
import 'package:aniphoto/widgets/my_input.dart';

class Login extends StatefulWidget {
  Login({Key key}) : super(key: key);
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController mailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final SingIn data = SingIn();
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Container(
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/sing_in.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            child: Container(
              margin: EdgeInsets.only(top: 110.0, right: 16, left: 16),
              child: Column(
                children: <Widget>[
                  Container(
                    height: 150,
                    child: Text(
                      'Привет',
                      style: TextStyle(fontSize: 40, color: Colors.white),
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      MyInput(placeholder: 'почта', icontype: Icons.person,),
                      MyInput(placeholder: 'пароль', icontype: Icons.visibility_off),
                      Container(
                        alignment: Alignment.topRight,
                        margin: EdgeInsets.only(top: 20),
                        child: Text(
                          'Забыли пароль?',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 40),
                    child: ButtonTheme(
                      minWidth: 370.0,
                      height: 55.0,
                      child: FlatButton(
                        color: Color.fromARGB(255, 0, 0, 255),
                        shape: RoundedRectangleBorder(
                            side: BorderSide(
                                color: Color.fromARGB(255, 0, 0, 255),
                                width: 1,
                                style: BorderStyle.solid),
                            borderRadius: BorderRadius.circular(5)),
                        onPressed: () {
                          // singIn(mailController.text, passwordController.text)
                          //     .then((res) =>
                          //         (getMe(res).then((value) => 
                                  Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              MainDrawer(),
                                        ),
                                      );
                        },
                        child: Text('Вайти',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                            )),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      padding: EdgeInsets.only(top: 35),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            child: Text(
                              'или вайдите через соцсети',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 60.0),
                            padding: EdgeInsets.only(bottom: 80,top: 40),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                IconButton(
                                    color: Colors.white,
                                    iconSize: 30,
                                    icon: FaIcon(FontAwesomeIcons.facebookF),
                                    onPressed: () {
                                      print("Pressed");
                                    }),
                                IconButton(
                                    color: Colors.white,
                                    iconSize: 30,
                                    icon: FaIcon(FontAwesomeIcons.google),
                                    onPressed: () {
                                      print("Pressed");
                                    }),
                              ],
                            ),
                          ),
                          FlatButton(
                            onPressed: () {
                              Navigator.of(context)
                                  .pushReplacementNamed('/registr');
                            },
                            child: Container(
                              alignment: Alignment.bottomCenter,
                              child: Text(
                              'Если нету профиля, то зарегистрируйтесь',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 13.0,
                                  fontWeight: FontWeight.bold),
                            ),
                            )
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )),
      ),
    ));
  }
}
