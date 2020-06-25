import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


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
  String dropdownValue = 'Gyumri';

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
                  Navigator.pushReplacementNamed(context, '/address'),
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
          margin: EdgeInsets.only(top:40.0),
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Column(children: [
             Container(
               margin: EdgeInsets.only(bottom:15.0),
               child:  Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                children: [
                Text('City', style: TextStyle(color:Colors.grey, fontWeight: FontWeight.bold, fontSize: 16.0),),
                Container(
                  width: 180.0,
                  height: 40,
                
                  decoration: BoxDecoration(
                    color: Color.fromARGB(120, 230, 230, 230),
                    border: Border.all(
                      color: Color.fromARGB(255, 217, 217, 217),
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: DropdownButton<String>(

                    value: dropdownValue,
                    icon: FaIcon(FontAwesomeIcons.chevronDown),
                    iconSize: 20,
                    elevation: 20,
                    style: TextStyle(color: Colors.black,),
                    onChanged: (String newValue) {
                      setState(() {
                        dropdownValue = newValue;
                      });
                    },
                    items: <String>['Gyumri', 'Erevan', 'Moscow', 'Four']
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        
                        value: value,
                        child: Container(
                          
                          margin: EdgeInsets.only(right:75.0, left: 10),
                          child:Text(
                          value,
                          style: TextStyle(fontSize: 16.0, color: Colors.black),
                        ),)
                      );
                    }).toList(),
                  ),
                )
              ]),),
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
                {Navigator.pushReplacementNamed(context, '/address')},
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
