import 'dart:ui';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
class AddressCard extends StatefulWidget {
  @override
  _AddressCardState createState() => _AddressCardState();
}

class _AddressCardState extends State<AddressCard> {
  final String url='http://annaniks.com:5060/api/addresses/';
  List data;
  @override
  void initState(){
    super.initState();
    this.getJsonData();
  }
Future<String> getJsonData()async{
  var response =await http.get(
    Uri.encodeFull(url),
    headers: {'Accept':"application/json"}
  );
  print(response.body);
  var convertDataToJson=json.decode(response.body);
  setState(() {
    
    data=convertDataToJson['results'];
  });
  return "Success";
}

   @override
  Widget build(BuildContext context) {
    return  new ListView.builder(
        itemCount: data==null?0:data.length,
        itemBuilder: (BuildContext context, int index){
          return new Container(
            child:  new Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                new Card(
                  child: new Container(
                    child:new Text(data[index]['address']),
                    padding: EdgeInsets.only(top:20),
                    color: Colors.red,
                  ),
                )
              ],),
          );
        },
      
      // Container(
      //   padding:EdgeInsets.symmetric(horizontal:5),
      //   child: Column(
      //     children: <Widget>[
      //       Container(
      //         margin: EdgeInsets.symmetric(vertical: 5),
      //         child: Row(
      //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //           children: <Widget>[
      //             Text(
      //               'Number of order:',
      //               style: TextStyle(color: Colors.grey, fontSize: 18),
      //             ),
      //             Text(
      //               'Number ',
      //               style: TextStyle(color: Colors.black, fontSize: 18),
      //             ),
      //           ],
      //         ),
      //       ),
      //       Container(
      //         margin: EdgeInsets.symmetric(vertical: 5),
      //         child: Row(
      //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //           children: <Widget>[
      //             Text(
      //               'Number of order:',
      //               style: TextStyle(color: Colors.grey, fontSize: 18),
      //             ),
      //             Text(
      //               '20',
      //               style: TextStyle(color: Colors.black, fontSize: 18),
      //             ),
      //           ],
      //         ),
      //       ),
      //       Container(
      //         margin: EdgeInsets.symmetric(vertical: 5),
      //         child: Row(
      //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //           children: <Widget>[
      //             Text(
      //               'Number of order:',
      //               style: TextStyle(color: Colors.grey, fontSize: 18),
      //             ),
      //             Text(
      //               'Gyumri',
      //               style: TextStyle(color: Colors.black, fontSize: 18),
      //             ),
      //           ],
      //         ),
      //       ),
      //     ],
      //   ),
      // ),
    );
  }
}

class Addresses extends StatefulWidget {
  @override
  _AddressesState createState() => _AddressesState();
}

// Define a corresponding State class.
// This class holds the data related to the Form.
class _AddressesState extends State<Addresses> {
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
                  'New Addresses',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ))),
        body: AddressCard(),
        floatingActionButton: Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
            color: Colors.pink,
            borderRadius: BorderRadius.circular(30),
          ),
          //  color: Colors.pink,
          child: FlatButton(
              onPressed: (){
                Navigator.of(context)
                                      .pushReplacementNamed('/newaddress');
              },
              child: Text(
                '+',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              )),
        ),
      ),
    );
  }
}
