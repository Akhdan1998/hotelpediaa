import 'dart:convert';

dataModelFromJson(String str) => DataModel.fromJson(json.decode(str));

String dataModelToJson(DataModel data) => json.encode(data.toJson());

class DaftarResponseModel {
  late final String? message;
  late final String? errorInfo;

  DaftarResponseModel({this.message, this.errorInfo});

  factory DaftarResponseModel.fromJson(Map<String, dynamic> json) {
    return DaftarResponseModel(
        message: json['message'] != null ? json['message'] : "",
        errorInfo: json['error'] != null ? json['error'] : "");
  }
}
class DataModel {
  late String? fullname;
  late String? job;
  late String? datebirth;
  late String? email;
  late String? password;

  DataModel(
      {this.fullname, this.job, this.datebirth, this.email, this.password});

  factory DataModel.fromJson(Map<String, dynamic> json) => DataModel(
    fullname: json['fullname'],
    job: json['job'],
    datebirth: json['datebirth'],
    email: json['email'],
    password: json['password'],
  );

  Map<String, dynamic> toJson() {
    Map<String, dynamic> map = {
      'fullname': fullname?.trim(),
      'job': job?.trim(),
      'datebirth': datebirth?.trim(),
      'email': email?.trim(),
      'password': password?.trim(),
    };
    return map;
  }
}
