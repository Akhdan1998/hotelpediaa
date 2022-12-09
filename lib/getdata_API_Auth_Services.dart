// import 'dart:convert';
// import 'dart:io';
//
// import 'package:hotelpedia/getdata_API_Auth_Model.dart';
// import 'package:http/http.dart' as http;
//
// import 'couses_api.dart';

// class GetdataServices {
//   final Url = 'https://admin.yuvan.dev/api/user';
//
//   Future getData() async {
//     http.Response response;
//     try {
//       // final response = await http.get(Uri.parse(Url));
//       response = await http.get(Uri.parse(Url), headers: {
//         HttpHeaders.authorizationHeader:APIConstants.clientToken
//       });
//       if (response.statusCode == 201) {
//         print(response.body);
//         Iterable it = jsonDecode(response.body);
//         List dataGetModel = it.map((e) => DataGetModel.fromJson(e)).toList();
//         return dataGetModel;
//       }
//     } catch (e) {
//       print(e.toString());
//     }
//   }
// }

// class GetDataServices {
//   static Future getData() async {
//     try {
//       String token = (await GetDataServices.getData()) as String;
//       String Url = 'https://admin.yuvan.dev/api/user';
//       // Uri myUri = Uri.parse(Url);
//       // var apiResult = await http.get(myUri);
//       var apiResult = await http.get(Uri.parse(Url),
//           headers: {
//             "Content-Type": "application/json",
//             "Authorization": "Bearer 205|Kfpoje0Yty0KULXkYHjfe6yNYJ0csa66pj7FhdWW"
//           });
//       print('Token : ${token}');
//       // print(response);
//       print(apiResult.body);
//       var jsonObject = json.decode(apiResult.body);
//       List<dynamic> listDataGetModel = (jsonObject as Map<String, dynamic>)['data'];
//
//       List<DataGetModel> getdata = [];
//       for (int i = 0; i < listDataGetModel.length; i++) {
//         getdata.add(DataGetModel.fromJson(listDataGetModel[i]));
//       }
//       return getdata;
//     } catch (e) {
//       return e.toString();
//     }
//
//   }
// }

// class GetDataServices {
//   static Future<GetModel> getData() async {
//     String token = (await GetDataServices.getData()) as String;
//     String apiURL = "https://admin.yuvan.dev/api/user";
//     // Uri myUri = Uri.parse(apiURL);
//     // final response = await http.post(myUri, body: requestModel.toJson());
//     var apiResult = await http.get(Uri.parse(apiURL),
//           headers: {
//             "Content-Type": "application/json",
//             "Authorization": "Bearer $token"
//           });
//       // print('Token : ${token}');
//     if (apiResult.statusCode == 200 || apiResult.statusCode == 400) {
//       print(apiResult.body);
//       return GetModel.fromJson(
//         json.decode(apiResult.body),
//       );
//     } else {
//       throw Exception('Failed to load Data');
//     }
//   }
// }

// class GetDataServices {
//   static Future getData() async {
//     http.Response response;
//     try {
//       String token = await GetDataServices.getData();
//       String url = 'https://admin.yuvan.dev/api/user';
//       // final response = await http.get(Uri.parse(uri));
//       // response = await http.get(Uri.parse(url),
//       //     headers: {HttpHeaders.authorizationHeader: APIConstants.clientToken});
//       var response = await http.get(Uri.parse(url),
//       headers: {
//         "Content-Type": "application/json",
//         "Authorization": "Bearer $token"
//       });
//       print('Token : ${token}');
//       print(response);
//       if (response.statusCode == 200) {
//         Iterable it = jsonDecode(response.body);
//         List<DataGetModel> dataGetModel =
//             it.map((e) => DataGetModel.fromJson(e)).toList();
//         return dataGetModel;
//       } else {
//         throw Exception('Failed to load Data');
//       }
//     } catch (e) {
//       return e.toString();
//     }
//   }
// }

// class GetDataServices {
//   static Future<DataGetModel> getData(DataGetModel get) async {
//     String apiURL = "https://admin.yuvan.dev/api/login";
//     Uri myUri = Uri.parse(apiURL);
//     final response = await http.get(myUri, body: get.toJson());
//     if (response.statusCode == 200 || response.statusCode == 400) {
//       print(response.body);
//       return DataGetModel.fromJson(
//         json.decode(response.body),
//       );
//     } else {
//       throw Exception('Failed to load Data');
//     }
//   }
// }
