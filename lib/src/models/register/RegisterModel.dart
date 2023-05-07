import 'dart:convert';

import 'package:simpelin/src/pages/Register/index.dart';

class Register {
  String? message;

  Register({this.message});

  Register.fromJson(Map<String, dynamic> json) {
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['message'] = this.message;
    return data;
  }
}
class RegisterModel {
  String? name;
  String? email;
  String? passwords;

  RegisterModel({this.name, this.email, this.passwords});

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data["name"] = name;
    data["email"] = email;
    data["passwords"] = passwords;
    return data;
  }

  factory RegisterModel.fromJson(String str) =>
      RegisterModel.fromMap(json.decode(str));

  factory RegisterModel.fromMap(Map<String, dynamic> json) => RegisterModel(
      name: json["name"], email: json["email"], passwords: json["passwords"]);

  Map<String, dynamic> toMap() =>
      {"name": name, "email": email, "passwords": passwords};
}
