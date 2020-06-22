import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../components/history_card.dart';

class NewAddresses extends StatefulWidget {
  @override
  _NewAddressesState createState() => _NewAddressesState();
}

// Define a corresponding State class.
// This class holds the data related to the Form.
class _NewAddressesState extends State<NewAddresses> {
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
        backgroundColor: Colors.white,
        appBar: AppBar(
            leading: IconButton(
              icon: Icon(
                Icons.arrow_back,
                color: Colors.black,
                size: 30,
              ),
              onPressed: () =>
                  Navigator.pushReplacementNamed(context, '/drawer'),
            ),
            backgroundColor: Colors.white,
            title: Align(
                alignment: Alignment.center,
                child: Text(
                  'Addresses',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ))),
        body: Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Column(children: [
              Row(children: [
                Text('City'),
              ]),
              Container(
                  decoration: BoxDecoration(
                    color: Color.fromARGB(120, 230, 230, 230),
                    border: Border.all(
                      color: Color.fromARGB(255, 217, 217, 217),
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  // color: Color.fromARGB(40, 255, 255, 255),
                  margin: EdgeInsets.only(bottom: 15.0),
                  // color: Colors.red,
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Address',
                      border: InputBorder.none,
                      hintStyle: TextStyle(
                        color: Colors.grey,
                      ),

                      prefixText: ' ',
                      // suffixText: 'USD',
                      // suffixStyle: const TextStyle(color: Colors.green)),
                    ),
                  )),
              Container(
                  decoration: BoxDecoration(
                    color: Color.fromARGB(120, 230, 230, 230),
                    border: Border.all(
                      color: Color.fromARGB(255, 217, 217, 217),
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'User',
                      border: InputBorder.none,
                      hintStyle: TextStyle(color: Colors.grey),

                      prefixText: ' ',
                    ),
                  )),
            ])),
        floatingActionButton: ButtonTheme(
          minWidth: 380.0,
          height: 60.0,
          child: FlatButton(
            color: Color.fromARGB(255, 0, 115, 230),
            shape: RoundedRectangleBorder(
                side: BorderSide(
                    color: Color.fromARGB(255, 0, 115, 230),
                    width: 1,
                    style: BorderStyle.solid),
                borderRadius: BorderRadius.circular(5)),
            onPressed: () =>
                {Navigator.pushReplacementNamed(context, '/drawer')},
            child: Text('Create new order',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                )),
          ),
        ),
      ),
    );
  }
}
