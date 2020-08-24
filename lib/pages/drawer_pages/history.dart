import 'dart:ui';
import '../../services/http_service.dart';

import 'package:flutter/material.dart';
import '../../widgets/history_card.dart';

class History extends StatefulWidget {
  final order;
  const History({Key key, this.order}) : super(key: key);
  @override
  _HistoryState createState() => _HistoryState();
}

class _HistoryState extends State<History> {
  List items = [];
  @override
  void initState() {
    super.initState();
    getOrders().then((value) => {
          items = value,
          setState(()=>{})
        });
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
                  onPressed: () => {
                        Navigator.pushReplacementNamed(context, '/drawer'),
                      }),
              backgroundColor: Colors.white,
              centerTitle: true,
              title: Text(
                'History',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              )),
          body: ListView.builder(
              itemCount: items.length,
              itemBuilder: (BuildContext context, int index) {
                return HistoryCard(
                  value: items[index],
                );
              })),
    );
  }
}
