import 'dart:ui';
import 'package:flutter/material.dart';

class HistoryCard extends StatelessWidget {
  final value;
  HistoryCard({this.value});
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
                    'Новый',
                    style: TextStyle(color: Colors.black, fontSize: 16),
                  ),
                  Text(
                    value['amount'].toString(),
                    style: TextStyle(color: Colors.black, fontSize: 25),
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
                    'Номер заказа:',
                    style: TextStyle(color: Colors.grey, fontSize: 16),
                  ),
                  Text(
                    value['id'].toString(),
                    style: TextStyle(color: Colors.black, fontSize: 15),
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
                    'Адрес:',
                    style: TextStyle(color: Colors.grey, fontSize: 16),
                  ),
                  Text(
                    value['order_address']['address'],
                    style: TextStyle(color: Colors.black, fontSize: 15),
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
                    'Количество:',
                    style: TextStyle(color: Colors.grey, fontSize: 16),
                  ),
                  Text(
                    '',
                    style: TextStyle(color: Colors.black, fontSize: 15),
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
                      'Комментарии:',
                      style: TextStyle(color: Colors.grey, fontSize: 16),
                    ),
                  ),
                  Flexible(
                    flex: 2,
                    child: Text(
                      value['comment'],
                      textAlign: TextAlign.right,
                      style: TextStyle(color: Colors.black, fontSize: 15),
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
