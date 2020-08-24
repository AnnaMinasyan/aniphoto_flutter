// import 'dart:io';
// import 'dart:ui';
// import 'dart:async';
// import 'package:flutter/material.dart';
// import 'dart:convert';
// import 'package:http/http.dart' as http;
// import 'package:image_picker/image_picker.dart';

// class Order extends StatefulWidget {
//   @override
//   _OrderState createState() => _OrderState();
// }

// // Define a corresponding State class.
// // This class holds the data related to the Form.
// class _OrderState extends State<Order> {
//   // Create a text controller and use it to retrieve the current value
//   // of the TextField.
//   static final String uploadEndPoint ='http://annaniks.com:1515/api/file/';
//   final myController = TextEditingController();
//   String dropdownValue = 'Gyumri';
//   Future<File> file;
//   String status = '';
//   String base64Image;
//   File tmpFile;
//   String errMessage = 'Error uploading Image';

//   chooseImage() {
//     setState(() {
//       file = ImagePicker.pickImage(source: ImageSource.gallery);
//     });
//   }

//   setStatus(String message) {
//     setState(() {
//       var set = {status = message};
//             return set;
//     });
//   }

//   startUpload() {
//     setStatus('uploadiung image');
//     if (null == tmpFile) {
//       setStatus(errMessage);
//       return;
//     }
//     String fileName =tmpFile.path.split('/').last;
//     upload(fileName);
//   }
//   upload( String fileName){
//     http.post(uploadEndPoint, body: {
//       'path':base64Image
//     }).then((res){
//       setStatus(res.statusCode==200 ? res.body:errMessage);
//       print("---------------------------------------");
//       print('$res wrhiwerw');
//     }).catchError((error){
//       //print(res.statusCode);
//       print(error);
//       setStatus(error);
//     });
//   }

//   Widget showImage() {
//     return FutureBuilder<File>(
//       future: file,
//       builder: (BuildContext context, AsyncSnapshot<File> snapshot) {
//         if (snapshot.connectionState == ConnectionState.done &&
//             null != snapshot.data) {
//           tmpFile = snapshot.data;
//           base64Image = base64Encode(snapshot.data.readAsBytesSync());

//          // print(snapshot.data);
//           return Flexible(
//               child: Image.file(
//             snapshot.data,
//             fit: BoxFit.fill,
//             height: 120.0,
//           ));
//         } else if (null != snapshot.error) {
//           return const Text(
//             'Error Picking Image',
//             textAlign: TextAlign.center,
//           );
//         } else {
//           return const Text(
//             'No image Selected',
//             textAlign: TextAlign.center,
//           );
//         }
//       },
//     );
//   }

//   @override
//   void dispose() {
//     // Clean up the controller when the widget is disposed.
//     myController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       //child:
//       child: Scaffold(
//         backgroundColor: Colors.white,
//         appBar: AppBar(
//             leading: IconButton(
//               icon: Icon(
//                 Icons.arrow_back,
//                 color: Colors.black,
//                 size: 30,
//               ),
//               onPressed: () =>
//                   Navigator.pushReplacementNamed(context, '/address'),
//             ),
//             backgroundColor: Colors.white,
//             centerTitle: true,
//             title: Text(
//                   'Новый заказ',
//                   style: TextStyle(
//                     color: Colors.black,
//                     fontSize: 20,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 )),
//         body: Container(
//           child: Row(
//             children: [
//               GestureDetector(
//                 child: Container(
//                 margin: EdgeInsets.only(top: 30,left: 30),
//                 child: CircleAvatar(
//                 backgroundColor: Colors.grey[300],
//                 radius: 30,
//                 child: Icon(Icons.camera_alt_sharp, color: Colors.black, size: 20.0,)
//               ),
//               ),
//               ),
//             ],
//           ),
//         ),
//         // Column(
//         //   crossAxisAlignment: CrossAxisAlignment.center,
//         //   children: <Widget>[
//         //     OutlineButton(
//         //       onPressed: chooseImage,
//         //       child: Text('Choose Image'),
//         //     ),
//         //     SizedBox(
//         //       height: 20.0,
//         //     ),
//         //     showImage(),
//         //     SizedBox(
//         //       height: 20.0,
//         //     ),
//         //     OutlineButton(
//         //       onPressed: startUpload,
//         //       child: Text('upload image'),
//         //     ),
//         //     SizedBox(
//         //       height: 20.0,
//         //     ),
//         //     Text(
//         //       status,
//         //       textAlign: TextAlign.center,
//         //     )
//         //   ],
//         // ),
//         floatingActionButton: ButtonTheme(
//           minWidth: 380.0,
//           height: 60.0,
//           child: FlatButton(
//             color: Color.fromARGB(255, 0, 115, 230),
//             shape: RoundedRectangleBorder(
//                 side: BorderSide(
//                     color: Color.fromARGB(255, 0, 115, 230),
//                     width: 1,
//                     style: BorderStyle.solid),
//                 borderRadius: BorderRadius.circular(5)),
//             onPressed: ()
//                 {Navigator.pushReplacementNamed(context, '/address');},
//             child: Text('Заказать за 0 драм',
//                 style: TextStyle(
//                   color: Colors.white,
//                   fontSize: 20.0,
//                 )),
//           ),
//         ),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'dart:io';
// import 'package:image_picker/image_picker.dart';

// class Order extends StatefulWidget {
//   Order() : super();

//   final String title = "Upload Image Demo";

//   @override
//   OrderState createState() => OrderState();
// }

// class OrderState extends State<Order> {

//   File file;

//   String base64Image;
//   File tmpFile;
//   String errMessage = 'Error Uploading Image';

//   @override
//   chooseImage() async {
//     file = await ImagePicker.pickImage(source: ImageSource.gallery);
//     setState(() {});
//     print(file);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Upload Image Demo"),
//       ),
//       body: Container(
//         padding: EdgeInsets.all(30.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: <Widget>[
//              Container(
//           child: Row(
//             children: [
//               GestureDetector(
//                 onTap: () => chooseImage(),
//                 child: Container(
//                 margin: EdgeInsets.only(top: 30,left: 30),
//                 child: CircleAvatar(
//                 backgroundColor: Colors.grey[300],
//                 radius: 30,
//                 child: Icon(Icons.camera_alt_sharp, color: Colors.black, size: 20.0,)
//               ),
//               ),
//               ),
//             ],
//           ),
//         ),
//             SizedBox(
//               height: 20.0,
//             ),
//             // showImage(),
//             file == null
//                 ? Container()
//                 : Container(
//                     child: Image.file(file, height: 400, fit: BoxFit.cover)),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'dart:async';
import 'package:multi_image_picker/multi_image_picker.dart';

class Order extends StatefulWidget {
  @override
  OrderState createState() => new OrderState();
}

class OrderState extends State<Order> {
  List<Asset> images = List<Asset>();

  @override
  void initState() {
    super.initState();
  }

  Widget buildGridView() {
    return GridView.count(
      crossAxisCount: 3,
      children: List.generate(images.length, (index) {
        Asset asset = images[index];
        return AssetThumb(
          asset: asset,
          width: 300,
          height: 300,
        );
      }),
    );
  }

  Future<void> loadAssets() async {
    List<Asset> resultList = List<Asset>();
    try {
      resultList = await MultiImagePicker.pickImages(
        maxImages: 300,
        enableCamera: true,
        selectedAssets: images,
        cupertinoOptions: CupertinoOptions(takePhotoIcon: "chat"),
        materialOptions: MaterialOptions(
          actionBarColor: "#abcdef",
          actionBarTitle: "Example App",
          allViewTitle: "All Photos",
          useDetailsView: false,
          selectCircleStrokeColor: "#000000",
        ),
      );
    } on Exception catch (e) {}
    if (!mounted) return;
    setState(() {
      images = resultList;
    });
  }

  int _value = 1;
  int count = 0;
  Widget _MyCard() {
    return Column(
      children: <Widget>[
        Row(
          children: [
            GestureDetector(
              onTap: () => loadAssets(),
              child: Container(
                margin: EdgeInsets.only(top: 30, left: 30),
                child: CircleAvatar(
                    backgroundColor: Colors.grey[300],
                    radius: 30,
                    child: Icon(
                      Icons.camera_alt_sharp,
                      color: Colors.black,
                      size: 20.0,
                    )),
              ),
            ),
            Column(
              children: [
                Row(
                  children: [
                    Container(
                        margin: EdgeInsets.only(left: 30, right: 20),
                        child: Text('Размер')),
                    DropdownButton(
                        value: _value,
                        items: [
                          DropdownMenuItem(
                            child: Text("300x600"),
                            value: 1,
                          ),
                          DropdownMenuItem(
                            child: Text("600x900"),
                            value: 2,
                          ),
                          DropdownMenuItem(child: Text("900x1200"), value: 3),
                        ],
                        onChanged: (value) {
                          setState(() {
                            _value = value;
                          });
                        }),
                  ],
                ),
                Row(
                  children: [
                    Container(
                        margin: EdgeInsets.only(right: 60),
                        child: Text('Цена ')),
                    Text('0 драм')
                  ],
                )
              ],
            ),
          ],
        ),
        Container(
          margin: EdgeInsets.only(left: 120),
          child: Row(
            children: [
              GestureDetector(
                onTap: ()=>{count -= 1, setState(()=>{})},
                child: CircleAvatar(
                backgroundColor: Colors.grey[300],
                radius: 15,
                child: Text(
                  '-',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
              ),
              
              Container(
                margin: EdgeInsets.only(left: 15, right: 15),
                child: Text(count.toString()),
              ),
              GestureDetector(
                onTap: ()=>{count += 1, setState(()=>{})},
                child:CircleAvatar(
                backgroundColor: Colors.blue,
                radius: 15,
                child: Text(
                  '+',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
              ),
              
              Container(
                margin: EdgeInsets.only(left: 15, right: 15),
                child: Text('экземпляр'),
              )
            ],
          ),
        ),
        SizedBox(
          height: 20.0,
        ),
        Expanded(
          child: buildGridView(),
        )
      ],
    );
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
                    Navigator.pushReplacementNamed(context, '/address'),
              ),
              backgroundColor: Colors.white,
              centerTitle: true,
              title: Text(
                'Новый заказ',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            body: _MyCard(),
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
                onPressed: () {},
                child: Text('Заказать за 0 драм',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                    )),
              ),
            )));
  }
}
