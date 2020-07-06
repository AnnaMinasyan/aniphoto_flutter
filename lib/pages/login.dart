// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;

// Future<Album> createAlbum(String mail) async {
//   final http.Response response = await http.post(
//     'http://annaniks.com:5060/api/client-login/',
//     headers: <String, String>{
//       'Content-Type': 'application/json; charset=UTF-8',
//     },
//     body: jsonEncode(<String, String>{
//      "username": mail,
//      "password": 'minasyan2662'
//     }),
//   );
// print('${response.statusCode }  ${mail}');
//   if (response.statusCode == 200) {
//     return Album.fromJson(json.decode(response.body));
//   } else {
//     throw Exception('Failed to create album.');
//   }
// }

// class Album {
//   final int id;
//   final String title;

//   Album({this.id, this.title});

//   factory Album.fromJson(Map<String, dynamic> json) {
//     return Album(
//       id: json['id'],
//       title: json['title'],
//     );
//   }
// }

// class Login extends StatefulWidget {
//   Login({Key key}) : super(key: key);

//   @override
//   _LoginState createState() {
//     return _LoginState();
//   }
// }

// class _LoginState extends State<Login> {
//   final TextEditingController _controller = TextEditingController();
//   Future<Album> _futureAlbum;

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Create Data Example',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Create Data Example'),
//         ),
//         body: Container(
//           alignment: Alignment.center,
//           padding: const EdgeInsets.all(8.0),
//           child: (_futureAlbum == null)
//               ? Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: <Widget>[
//                     TextField(
//                       controller: _controller,
//                       decoration: InputDecoration(hintText: 'Enter Title'),
//                     ),
//                     RaisedButton(
//                       child: Text('Create Data'),
//                       onPressed: () {
//                         setState(() {
//                           _futureAlbum = createAlbum(_controller.text);
//                         });
//                       },
//                     ),
//                   ],
//                 )
//               : FutureBuilder<Album>(
//                   future: _futureAlbum,
//                   builder: (context, snapshot) {
//                     if (snapshot.hasData) {
//                       return Text(snapshot.data.title);
//                     } else if (snapshot.hasError) {
//                       return Text("${snapshot.error}");
//                     }

//                     return CircularProgressIndicator();
//                   },
//                 ),
//         ),
//       ),
//     );
//   }
// }

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../models/login.dart';
//import 'package:shared_preferences/shared_preferences.dart';
import './drawer_pages/main_drawer.dart';
import '../services/http_service.dart';
// Future<SingIn> singIn(String mail,String password) async {
//   final http.Response response = await http.post(
//     'http://annaniks.com:5060/api/client-login/',
//     headers: <String, String>{
//       'Content-Type': 'application/json; charset=UTF-8',
//     },
//     body: jsonEncode(<String, String>{
//      "username": mail,
//      "password": password
//     }),
//   );
//   if (response.statusCode == 200) {

//     return SingIn.fromJson(json.decode(response.body));
//   } else {
//     throw Exception('Failed to create album.');
//   }
// }
// class SingIn {
//   final int id;
//   final String title;

//   SingIn({this.id, this.title});

//   factory SingIn.fromJson(Map<String, dynamic> json) {
//     return SingIn(
//       id: json['id'],
//       title: json['title'],
//     );
//   }
// }
// Define a custom Form widget.
class Login extends StatefulWidget {
  Login({Key key}) : super(key: key);
  @override
  _LoginState createState() => _LoginState();
}

// Define a corresponding State class.
// This class holds the data related to the Form.
// Future<String> getTokenPreference() async {
//   SharedPreferences prefs = await SharedPreferences.getInstance();
//    String token =prefs.getString('access');
//   return token;
// }
class _LoginState extends State<Login> {
  final TextEditingController mailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final SingIn data = SingIn();
  @override

//   void initState() {
//  getTokenPreference().then((name)=>(
//    print("///////////////////////$name")
//  ));

  // super.initState();

  // }
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
                            controller: mailController,
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
                            controller: passwordController,
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
                      onPressed: () {
                        singIn(mailController.text, passwordController.text)
                            .then((res) =>
                           
                                (getMe(res).then((value) => (
                                   //print(value['id'])
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => MainDrawer(userData:value),
                                      ),
                                    )
                                    ))
                                ));
                      },
                      child: Text('вaйти',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                          )),
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
                              'или вoйдите через соцсети',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
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
                                    }),
                              ],
                            ),
                          ),
                          FlatButton(
                            onPressed: () {
                              Navigator.of(context)
                                  .pushReplacementNamed('/registr');
                            },
                            child: Text(
                              'Если нету профиля, то зарегистрируйтесь',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold),
                            ),
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
