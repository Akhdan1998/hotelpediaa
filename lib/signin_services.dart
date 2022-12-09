// import 'dart:convert';
// import 'package:hotelpedia/signin_model.dart';
// import 'package:http/http.dart' as http;
//
// class Services {
//   static Future<LoginResponse> masuk(LoginModel requestModel) async {
//     String apiURL = "https://admin.yuvan.dev/api/login";
//     Uri myUri = Uri.parse(apiURL);
//     final response = await http.post(myUri, body: requestModel.toJson());
//     if (response.statusCode == 200 || response.statusCode == 400) {
//       print(response.body);
//       return LoginResponse.fromJson(
//         json.decode(response.body),
//       );
//     } else {
//       throw Exception('Failed to load Data');
//     }
//   }
// }
//
// // class Services {
// //   static Future<LoginResponse> masuk(LoginModel requestModel) async {
// //     String token = (await Services.masuk) as String;
// //     String apiURL = "https://admin.yuvan.dev/api/login";
// //     // Uri myUri = Uri.parse(apiURL);
// //     // final response = await http.post(myUri, body: requestModel.toJson());
// //     var response = await http.post(Uri.parse(apiURL),
// //         headers: {
// //           "Content-Type": "application/json",
// //           "Authorization": "Bearer $token"
// //         });
// //     print('Token : ${token}');
// //     if (response.statusCode == 200 || response.statusCode == 400) {
// //       print(response.body);
// //       return LoginResponse.fromJson(
// //         json.decode(response.body),
// //       );
// //     } else {
// //       throw Exception('Failed to load Data');
// //     }
// //   }
// // }
//
// // class GetDataServices {
// //   static Future getData() async {
// //     http.Response response;
// //     try {
// //       String token = await GetDataServices.getData();
// //       String url = 'https://admin.yuvan.dev/api/user';
// //       // final response = await http.get(Uri.parse(uri));
// //       // response = await http.get(Uri.parse(url),
// //       //     headers: {HttpHeaders.authorizationHeader: APIConstants.clientToken});
// //       var response = await http.get(Uri.parse(url),
// //       headers: {
// //         "Content-Type": "application/json",
// //         "Authorization": "Bearer $token"
// //       });
// //       print('Token : ${token}');
// //       print(response);
// //       if (response.statusCode == 200) {
// //         Iterable it = jsonDecode(response.body);
// //         List<DataGetModel> dataGetModel =
// //             it.map((e) => DataGetModel.fromJson(e)).toList();
// //         return dataGetModel;
// //       } else {
// //         throw Exception('Failed to load Data');
// //       }
// //     } catch (e) {
// //       return e.toString();
// //     }
// //   }
// // }
//
// // class GetDataServices {
// //   static Future<DataGetModel> getData(DataGetModel get) async {
// //     String apiURL = "https://admin.yuvan.dev/api/login";
// //     Uri myUri = Uri.parse(apiURL);
// //     final response = await http.get(myUri, body: get.toJson());
// //     if (response.statusCode == 200 || response.statusCode == 400) {
// //       print(response.body);
// //       return DataGetModel.fromJson(
// //         json.decode(response.body),
// //       );
// //     } else {
// //       throw Exception('Failed to load Data');
// //     }
// //   }
// // }
