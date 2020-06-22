import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../components/history_card.dart';

// Define a custom Form widget.
class History extends StatefulWidget {
  @override
  _HistoryState createState() => _HistoryState();
}

// Define a corresponding State class.
// This class holds the data related to the Form.
class _HistoryState extends State<History> {
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
