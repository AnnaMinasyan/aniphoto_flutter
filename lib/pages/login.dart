import 'dart:ui';

import 'package:flutter/material.dart';

// Define a custom Form widget.
class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

// Define a corresponding State class.
// This class holds the data related to the Form.
class _LoginState extends State<Login> {
  // Create a text controller and use it to retrieve the current value
  // of the TextField.
  final myController = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        body: Container(
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
                  Flexible(
                    flex: 5,
                    child: Container(
                      height: 150,
                      child: Text(
                        'Привет',
                        style: TextStyle(fontSize: 40, color: Colors.white),
                      ),
                    ),
                  ),
                  Flexible(
                      flex: 9,
                      child: Column(
                        children: <Widget>[
                          Container(
                              decoration: BoxDecoration(
                                color: Color.fromARGB(40, 255, 255, 255),
                                border: Border.all(
                                  color: Color.fromARGB(150, 255, 255, 255),
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              // color: Color.fromARGB(40, 255, 255, 255),
                              margin: EdgeInsets.only(bottom: 15.0),
                              // color: Colors.red,
                              child: TextField(
                                decoration: InputDecoration(
                                  hintText: 'почта',
                                  border: InputBorder.none,
                                  hintStyle: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                  //labelText: 'Life story',
                                  suffixIcon: const Icon(
                                    Icons.person,
                                    color: Colors.white,
                                  ),
                                  prefixText: ' ',
                                  // suffixText: 'USD',
                                  // suffixStyle: const TextStyle(color: Colors.green)),
                                ),
                              )),
                          Container(
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
                                  hintText: 'пароль',
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
                                  // suffixText: 'USD',
                                  // suffixStyle: const TextStyle(color: Colors.green)),
                                ),
                              )),
                          Padding(
                            padding: EdgeInsets.only(left: 230.0, top: 10),
                            child: Text(
                              'забыли пароль?',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  ),
                            ),
                          ),
                        ],
                      )),
                  Flexible(
                    flex: 3,
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
                        onPressed: () => {},
                        child: Text('вaйти',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                            )),
                      ),
                    ),
                  ),
                  Flexible(
                      flex: 9,
                      child: Container(
                        padding: EdgeInsets.only(top:35),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,

                          children: <Widget>[
                            Flexible(
                              flex: 7,
                              child: Container(
                                child: Text(
                                  'или вoйдите через соцсети',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            Flexible(
                              flex: 10,
                              child: Container(
                                margin: EdgeInsets.symmetric(horizontal:60.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Flexible(
                                      flex: 2,
                                      child: Icon(
                                        Icons.mood,
                                        color: Colors.white,
                                        size: 50.0,
                                      ),
                                    ),
                                    Flexible(
                                      flex: 2,
                                      child: Icon(
                                        Icons.mood,
                                        color: Colors.white,
                                        size: 50.0,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Flexible(
                              flex: 8,
                              child: Container(
                                margin: EdgeInsets.only(top: 40),
                                child: Text(
                                  'Если нету профиля, то зарегистрируйтесь',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                      //
                      ),
                ],
              ),
            )),
      ),
    );
  }
}
