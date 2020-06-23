import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NewOrderCard extends StatelessWidget {
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
      height: 190,
      width: 190,
      child: FlatButton(
        onPressed: () {
           Navigator.pushReplacementNamed(context,'/create-order');  
          print('sirfygisaiuryi');
        },
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(bottom: 20),
              child: Image.asset(('assets/cardimage.png'),
                  height: 130, fit: BoxFit.fill),
            ),
            Text(
              'New order',
              style: TextStyle(
                fontSize: 16,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class HeaderDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      // decoration: BoxDecoration(
      //   color: Colors.white,
      //   border: Border.all(
      //     color: Color.fromARGB(255, 217, 217, 217),
      //     width: 1,
      //   ),
      //   borderRadius: BorderRadius.circular(5),
      // ),
      height: 190,
      width: 190,
      child: FlatButton(
        onPressed: () {
           
          // print('sirfygisaiuryi');
        },
        child: Row(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(right: 20),
              child: Image.asset(('assets/ic_launcher.png'),
                  height: 80, fit: BoxFit.fill),
            ),
            Text(
              'New order',
              style: TextStyle(
                fontSize: 16,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 242, 242, 242),
      appBar: AppBar(
          iconTheme: IconThemeData(
            color: Colors.black, //change your color here
          ),
          backgroundColor: Colors.white,
          title: Align(
              alignment: Alignment.center,
              child: Text(
                'Online Photo',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ))),
      body: Container(margin: EdgeInsets.all(15.0), child: NewOrderCard()),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: HeaderDrawer(),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 242, 242, 242),
              ),
            ),
            ListTile(
              title: Row(children: [
                IconButton(
                    color: Colors.black,
                    iconSize: 20,
                    icon: FaIcon(FontAwesomeIcons.book),
                    onPressed: () {
                      print("Pressed");
                    }),
                Text('History')
              ]),
              onTap: () {
                 Navigator.pushReplacementNamed(context,'/history');          },
            ),
            ListTile(
            
              title: Row(
                children: [
                IconButton(
                    color: Colors.black,
                    iconSize: 20,
                    icon: FaIcon(FontAwesomeIcons.globe),
                    onPressed: () {
                      print("Pressed");
                    }),
                Text('Address')
              ]),
              onTap: () {
                Navigator.pushReplacementNamed(context,'/address'); 
              },
            ),
          ],
        ),
      ),
    );
  }
}
