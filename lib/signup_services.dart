import 'dart:convert';
import 'package:hotelpedia/signup_model.dart';
import 'package:http/http.dart' as http;

class Services {
  static Future<DaftarResponseModel> daftar(DataModel requestModel) async {
    String apiURL = "https://admin.yuvan.dev/api/register";
    Uri myUri = Uri.parse(apiURL);
    final response = await http.post(myUri, body: requestModel.toJson());
    if (response.statusCode == 200 || response.statusCode == 400) {
      print(response.body);
      return DaftarResponseModel.fromJson(json.decode(response.body),
      );
    } else {
      throw Exception('Failed to load Data');
    }
  }
}