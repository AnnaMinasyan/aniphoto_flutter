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
     
      child:
    Scaffold(
      body: Container(
          color: Colors.brown,
          child: Container(
            margin: EdgeInsets.only(top: 110.0, right: 16, left: 16),
            child: Column(
              children: <Widget>[
                Text(
                  'Привет',
                  style: TextStyle(fontSize: 40, color: Colors.white),
                ),
                Theme(
                    data: new ThemeData(
                        // primaryColor: Colors.redAccent,
                        // primaryColorDark: Colors.red,
                        ),
                    child: Opacity(
                      opacity: 0.2,
                      child: Container(
                          margin: EdgeInsets.only(bottom: 8.0, top: 80.0),
                          color: Colors.white,
                          child: TextField(
                            decoration: InputDecoration(
                              border: new OutlineInputBorder(
                                  borderSide:
                                      new BorderSide(color: Colors.teal)),
                              hintText: 'почта',

                              //labelText: 'Life story',
                              suffixIcon: const Icon(
                                Icons.person,
                                color: Colors.green,
                              ),
                              prefixText: ' ',
                              // suffixText: 'USD',
                              // suffixStyle: const TextStyle(color: Colors.green)),
                            ),
                          )),
                    )),
                Theme(
                    data: new ThemeData(
                        // primaryColor: Colors.redAccent,
                        // primaryColorDark: Colors.red,
                        ),
                    child: Opacity(
                      opacity: 0.2,
                      child: Container(
                          margin: EdgeInsets.only(bottom: 15.0),
                          color: Colors.white,
                          child: TextField(
                            decoration: InputDecoration(
                              border: new OutlineInputBorder(
                                  borderSide:
                                      new BorderSide(color: Colors.teal)),
                              hintText: 'пароль',

                              //labelText: 'Life story',
                              suffixIcon: const Icon(
                                Icons.visibility_off,
                                color: Colors.green,
                              ),
                              prefixText: ' ',
                              // suffixText: 'USD',
                              // suffixStyle: const TextStyle(color: Colors.green)),
                            ),
                          )),
                    )),
                Padding(
                  padding: EdgeInsets.only(left: 230.0,bottom: 40.0),
                  child: Text(
                    'забыли пароль?',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
                ButtonTheme(
                  minWidth: 370.0,
                  height: 65.0,
                  child: FlatButton(
                    color: Colors.blue,
                    shape: RoundedRectangleBorder(
                        side: BorderSide(
                            color: Colors.blue,
                            width: 1,
                            style: BorderStyle.solid),
                        borderRadius: BorderRadius.circular(5)),
                    onPressed: () => {},
                    child: Text('вaйти',
                        style: TextStyle(color: Colors.white, fontSize: 25.0)),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 15,bottom: 30.0),
                  child: Text(
                    'или вoйдите через соцсети',
                    style: TextStyle(color: Colors.white, fontSize: 16.0),
                  ),
                ),
                Container(
                  width: 220.0,
                  child:
                   Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Flexible(
                        flex: 2,
                        child:  Icon(
                          Icons.mood,
                          color: Colors.white,
                          size: 50.0,
                        ),),
                     Flexible(
                       flex:2,
                       child:  Icon(
                          Icons.mood,
                          color: Colors.white,
                          size: 50.0,
                        ),),
                      
                    ],
                  ),
                
                ),
                Container(
                  margin: EdgeInsets.only(top: 30),
                  child: Text(
                    'Если нету профиля, то зарегистрируйтесь',
                    style: TextStyle(color: Colors.white, fontSize: 16.0),
                  ),
                ),
              ],
            ),
          )),
    ),);
  }
}
