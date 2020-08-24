import 'dart:ui';
import 'package:aniphoto/services/http_service.dart';
import 'package:flutter/material.dart';

class AddressCard extends StatefulWidget {
  @override
  _AddressCardState createState() => _AddressCardState();
}

class _AddressCardState extends State<AddressCard> {
  List data;
  @override
  void initState() {
    super.initState();
    getAddresses()
        .then((value) => {data = value, print(data), setState(() => {})});
  }

  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
      itemCount: data == null ? 0 : data.length,
      itemBuilder: (BuildContext context, int index) {
        return new Container(
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              new Card(
                margin: EdgeInsets.only(top: 20),
                child: new Container(
                  alignment: Alignment.center,
                  color: Colors.blue[50],
                  child: new Text(data[index]['address']),
                  padding: EdgeInsets.only(bottom: 15, top: 15),
                ),
              )
            ],
          ),
        );
      },
    );
  }
}

class Addresses extends StatefulWidget {
  @override
  _AddressesState createState() => _AddressesState();
}

class _AddressesState extends State<Addresses> {
  final myController = TextEditingController();
  @override
  void dispose() {
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
            centerTitle: true,
            title: Text(
              'Адреса доставки',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            )),
        body: AddressCard(),
        floatingActionButton: Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(30),
          ),
          child: FlatButton(
              onPressed: (){
                Navigator.of(context).pushReplacementNamed('/newaddress');
              },
              child: Text(
                '+',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              )),)
      ),
    );
  }
}
