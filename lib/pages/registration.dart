import 'dart:ui';

import 'package:flutter/material.dart';

// Define a custom Form widget.
class Registration extends StatefulWidget {
  @override
  _RegistrationState createState() => _RegistrationState();
}

// Define a corresponding State class.
// This class holds the data related to the Form.
class _RegistrationState extends State<Registration> {
  // Create a text controller and use it to retrieve the current value
  // of the TextField.
  final myController = TextEditingController();
  bool _checked = false;
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
                image: AssetImage("assets/registr.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            child: Container(
              margin: EdgeInsets.only(top: 110.0, right: 16, left: 16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                      height: 130,
                      width: 130,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/registr.jpg"),
                          fit: BoxFit.cover,
                        ),
                      ),
                      //child:Padding(

                      child: Align(
                          alignment: Alignment.bottomRight,
                          child: Container(
                              height: 45,
                              width: 45,
                              decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(80),
                              ),
                              child: FlatButton(
                                color: Colors.red,
                                  onPressed: null,
                                  child: Text(
                                    '+',
                                    style: TextStyle(
                                      fontSize: 30,
                                      color: Colors.white,
                                      
                                    ),
                                  ))))),
                  Column(
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
                          margin: EdgeInsets.only(bottom: 15.0),
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'Имя',
                              border: InputBorder.none,
                              hintStyle: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                              suffixIcon: const Icon(
                                Icons.person,
                                color: Colors.white,
                              ),
                              prefixText: ' ',
                            ),
                          )),
                      Container(
                          decoration: BoxDecoration(
                            color: Color.fromARGB(40, 255, 255, 255),
                            border: Border.all(
                              color: Color.fromARGB(150, 255, 255, 255),
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          margin: EdgeInsets.only(bottom: 15.0),
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'почта',
                              border: InputBorder.none,
                              hintStyle: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                              suffixIcon: const Icon(
                                Icons.email,
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
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                        flex: 2,
                        child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.white,
                                width: 1.0,
                              ),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5.0)),
                            ),
                            child: Checkbox(
                                value: _checked,
                                onChanged: (bool value) {
                                  setState(() {
                                    _checked = value;
                                  });
                                }),
                            width: 20,
                            height: 20),
                      ),
                      Flexible(
                        flex: 16,
                        child: new Text(
                          "Я  причитал и согласен  с условиями пользовательского соглашения ",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                          ),
                          overflow: TextOverflow.clip,
                        ),
                      )
                    ],
                  ),
                  ButtonTheme(
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
                      child: Text('Регистрация',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                          )),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 35),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          child: Text(
                            'или зарегистрируйтесь через соцсети',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          height: 100,
                          margin: EdgeInsets.symmetric(horizontal: 60.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                      ],
                    ),
                  )
                ],
              ),
            )),
      ),
    );
  }
}
