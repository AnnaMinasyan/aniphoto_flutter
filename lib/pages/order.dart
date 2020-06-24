import 'dart:io';
import 'dart:ui';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:image_picker/image_picker.dart';

class Order extends StatefulWidget {
  @override
  _OrderState createState() => _OrderState();
}

// Define a corresponding State class.
// This class holds the data related to the Form.
class _OrderState extends State<Order> {
  // Create a text controller and use it to retrieve the current value
  // of the TextField.
  static final String uploadEndPoint ='http://annaniks.com:1515/api/file/';
  final myController = TextEditingController();
  String dropdownValue = 'Gyumri';
  Future<File> file;
  String status = '';
  String base64Image;
  File tmpFile;
  String errMessage = 'Error uploading Image';

  chooseImage() {
    setState(() {
      file = ImagePicker.pickImage(source: ImageSource.gallery);
    });
  }

  setStatus(String message) {
    setState(() => {status = message});
  }

  startUpload() {
    setStatus('uploadiung image');
    if (null == tmpFile) {
      setStatus(errMessage);
      return;
    } 
    String fileName =tmpFile.path.split('/').last;
    upload(fileName);
  }
  upload( String fileName){
    http.post(uploadEndPoint, body: {
      'path':base64Image
    }).then((res){
      setStatus(res.statusCode==200 ? res.body:errMessage);
      print("---------------------------------------");
      print('$res wrhiwerw');
    }).catchError((error){
      //print(res.statusCode);
      print(error);
      setStatus(error);
    });
  }


  Widget showImage() {
    return FutureBuilder<File>(
      future: file,
      builder: (BuildContext context, AsyncSnapshot<File> snapshot) {
        if (snapshot.connectionState == ConnectionState.done &&
            null != snapshot.data) {
          tmpFile = snapshot.data;
          base64Image = base64Encode(snapshot.data.readAsBytesSync());
          
         // print(snapshot.data);
          return Flexible(
              child: Image.file(
            snapshot.data,
            fit: BoxFit.fill,
            height: 120.0,
          ));
        } else if (null != snapshot.error) {
          return const Text(
            'Error Picking Image',
            textAlign: TextAlign.center,
          );
        } else {
          return const Text(
            'No image Selected',
            textAlign: TextAlign.center,
          );
        }
      },
    );
  }

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      //child:
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
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            OutlineButton(
              onPressed: chooseImage,
              child: Text('Choose Image'),
            ),
            SizedBox(
              height: 20.0,
            ),
            showImage(),
            SizedBox(
              height: 20.0,
            ),
            OutlineButton(
              onPressed: startUpload,
              child: Text('upload image'),
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              status,
              textAlign: TextAlign.center,
            )
          ],
        ),
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
            onPressed: ()
                {Navigator.pushReplacementNamed(context, '/address');},
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
