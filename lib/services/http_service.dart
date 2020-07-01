import 'dart:convert';
import 'dart:io';
import '../models/login.dart';
import 'package:aniphoto/models/posts_model.dart';
import 'package:http/http.dart';
import 'package:http/http.dart' as http;
//import 'package:shared_preferences/shared_preferences.dart';

class HttpService {
  final String postsURL = "https://jsonplaceholder.typicode.com/posts";

  Future<List<Post>> getPosts() async {
    Response res = await get(postsURL);

    if (res.statusCode == 200) {
      List<dynamic> body = jsonDecode(res.body);

      List<Post> posts = body
          .map(
            (dynamic item) => Post.fromJson(item),
          )
          .toList();

      return posts;
    } else {
      throw "Can't get posts.";
    }
  }
}

// ignore: missing_return
Future<String> singIn(String mail, String password) async {
  final http.Response response = await http.post(
    'http://annaniks.com:5060/api/client-login/',
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
    body: jsonEncode(<String, String>{"username": mail, "password": password}),
  );
  if (response.statusCode == 200) {
    print(jsonDecode(response.body)['access']);
    return jsonDecode(response.body)['access'];
  }
  
}

// ignore: missing_return
Future<dynamic> getMe(String token) async {
    final http.Response response = await http.get(
    'http://annaniks.com:5060/api/client-get/me/',
    // Send authorization headers to the backend.
    headers: {HttpHeaders.authorizationHeader: "Bearer $token"},
  );
 
  
    
    if (response.statusCode == 200) {
     final responseJson = json.decode(response.body);
          print(responseJson['data']);
          return SingIn.fromJson(responseJson['data']);
  //  return responseJson['data'];
  
    } else {
      throw Exception('Failed to create album.');
    }
  }
  // ignore: missing_return
Future<dynamic> getOrders(String id) async {
    final http.Response response = await http.get(
    'http://annaniks.com:5060/api/order/?client=$id',
  );
    if (response.statusCode == 200) {
     final responseJson = json.decode(response.body);
          print(responseJson);
    } else {
      throw Exception('Failed to create album.');
    }
  }
//ignore: missing_return
// Future<bool> saveTokenPreference(String key,String value) async {
//   print("99999999999999999999");
//   SharedPreferences prefs = await SharedPreferences.getInstance();
//   prefs.setString(key, value);

// }
// Future<String> getTokenPreference() async {
//   SharedPreferences prefs = await SharedPreferences.getInstance();
//    String token =prefs.getString('access');
//    print("--------${token}");
//   return token;
// }
