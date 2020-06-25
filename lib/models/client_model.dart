// To parse this JSON data, do
//
//     final clientModel = clientModelFromJson(jsonString);

import 'dart:convert';

ClientModel clientModelFromJson(String str) => ClientModel.fromJson(json.decode(str));

String clientModelToJson(ClientModel data) => json.encode(data.toJson());

class ClientModel {
    ClientModel({
        this.id,
        this.url,
        this.user,
    });

    int id;
    String url;
    User user;

    factory ClientModel.fromJson(Map<String, dynamic> json) => ClientModel(
        id: json["id"],
        url: json["url"],
        user: User.fromJson(json["user"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "url": url,
        "user": user.toJson(),
    };
}

class User {
    User({
        this.email,
        this.password,
        this.firstName,
        this.lastName,
    });

    String email;
    String password;
    String firstName;
    String lastName;

    factory User.fromJson(Map<String, dynamic> json) => User(
        email: json["email"],
        password: json["password"],
        firstName: json["first_name"],
        lastName: json["last_name"],
    );

    Map<String, dynamic> toJson() => {
        "email": email,
        "password": password,
        "first_name": firstName,
        "last_name": lastName,
    };
}
