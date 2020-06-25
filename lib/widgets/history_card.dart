import 'dart:ui';
import 'package:flutter/material.dart';

class HistoryCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: Color.fromARGB(255, 217, 217, 217),
          width: 1,
        ),
        borderRadius: BorderRadius.circular(5),
      ),
      height: 250,
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.symmetric(vertical: 10),
      child: FlatButton(
        onPressed: () {
          print('sirfygisaiuryi');
        },
        child: Column(
          children: <Widget>[
            Container(
              height: 40,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border(
                  bottom: BorderSide(
                    color: Colors.grey,
                    width: 0.5,
                  ),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'New',
                    style: TextStyle(color: Colors.grey, fontSize: 18),
                  ),
                  Text(
                    '4000 dram ',
                    style: TextStyle(color: Colors.black, fontSize: 30),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'Number of order',
                    style: TextStyle(color: Colors.grey, fontSize: 18),
                  ),
                  Text(
                    'Number ',
                    style: TextStyle(color: Colors.black, fontSize: 18),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'Number of order',
                    style: TextStyle(color: Colors.grey, fontSize: 18),
                  ),
                  Text(
                    '20',
                    style: TextStyle(color: Colors.black, fontSize: 18),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'Number of order',
                    style: TextStyle(color: Colors.grey, fontSize: 18),
                  ),
                  Text(
                    '',
                    style: TextStyle(color: Colors.black, fontSize: 18),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(right: 30),
                    child: Text(
                      'Number of order',
                      style: TextStyle(color: Colors.grey, fontSize: 18),
                    ),
                  ),
                  Flexible(
                    flex: 2,
                    child: Text(
                      'Number of orderNumber of orderNumber of orderNumber of order',
                      textAlign: TextAlign.right,
                      style: TextStyle(color: Colors.black, fontSize: 18),
                      overflow: TextOverflow.clip,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

