import 'dart:ui';

import 'package:flutter/material.dart';
import '../../widgets/history_card.dart';

// Define a custom Form widget.
class History extends StatefulWidget {
   final order;
  const History({Key key, this.order}) : super(key: key);
  @override
  _HistoryState createState() => _HistoryState();
}

// Define a corresponding State class.
// This class holds the data related to the Form.
class _HistoryState extends State<History> {
  // Create a text controller and use it to retrieve the current value
  // of the TextField.

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
                    'History',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ))),
          body: Container(
            child: HistoryCard(),
          )),
    );
  }
}
