import 'dart:ui';
import 'package:aniphoto/widgets/my_input.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Registration extends StatefulWidget {
  @override
  _RegistrationState createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  final myController = TextEditingController();
  bool _checked = false;
  @override
  void dispose() {
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
          body: SingleChildScrollView(
        child: Container(
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/registr.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            child: Container(
              margin: EdgeInsets.only(top: 40.0, right: 16, left: 16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                      height: 130,
                      width: 130,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/user.jpg"),
                          fit: BoxFit.cover,
                        ),
                      ),
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
                                      fontSize: 22,
                                      color: Colors.white,
                                    ),
                                  ))))),
                  Column(
                    children: <Widget>[
                      MyInput(
                        placeholder: 'Имя',
                        icontype: Icons.person,
                      ),
                      MyInput(
                        placeholder: 'почта',
                        icontype: Icons.mail,
                      ),
                      MyInput(
                          placeholder: 'пароль',
                          icontype: Icons.visibility_off),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 20),
                          child: Checkbox(
                              value: _checked,
                              onChanged: (bool value) {
                                setState(() {
                                  _checked = value;
                                });
                              }),
                          width: 20,
                          height: 20),
                      Expanded(
                        child: Text(
                          "Я  причитал и согласен  с условиями пользовательского соглашения ",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                          ),
                          overflow: TextOverflow.clip,
                        ),
                      ),
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
                                  })
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )),
      )),
    );
  }
}
