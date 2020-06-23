import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Order extends StatefulWidget {
  @override
  _OrderState createState() => _OrderState();
}

// Define a corresponding State class.
// This class holds the data related to the Form.
class _OrderState extends State<Order> {
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
                Text('Size', style: TextStyle(color:Colors.grey, fontWeight: FontWeight.bold, fontSize: 16.0),),
                Container(
                  width: 120.0,
                  height: 50,
                
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
                    iconSize: 15,
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
                          
                          margin: EdgeInsets.only(left: 10),
                          child:Text(
                          value,
                          style: TextStyle(fontSize: 16.0, color: Colors.black),
                        ),)
                      );
                    }).toList(),
                  ),
                )
              ]),),
              
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
            child: Text('Order of 0 dram',
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
