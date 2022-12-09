// import 'package:firebase_auth/firebase_auth.dart';
//
// class UpdateUser {
//   String? accessToken;
//   String? tokenType;
//   User? user;
//
//   UpdateUser({this.accessToken, this.tokenType, this.user});
//
//   UpdateUser.fromJson(Map<String, dynamic> json) {
//     accessToken = json['access_token'];
//     tokenType = json['token_type'];
//     user = json['user'] != null ? User.fromJson(json['user']) : null;
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['access_token'] = accessToken;
//     data['token_type'] = tokenType;
//     if (user != null) {
//       data['user'] = user!.toJson();
//     }
//     return data;
//   }
// }
//
// class editUser {
//   int? id;
//   String? name;
//   String? saldo;
//   String? email;
//   String? nomorHp;
//   String? gender;
//   dynamic location;
//   dynamic alamat;
//   String? username;
//   dynamic status;
//   String? userId;
//   dynamic vendorId;
//   dynamic idChat;
//   dynamic poin;
//   dynamic roles;
//   dynamic tokenMessage;
//   bool? isVerified;
//   dynamic fotoKtp;
//   dynamic fotoKtpSelfie;
//   dynamic emailVerifiedAt;
//   dynamic currentTeamId;
//   String? profilePhotoUrl;
//   String? createdAt;
//   String? updatedAt;
//   dynamic deletedAt;
//
//   editUser(
//       {this.id,
//         this.name,
//         this.saldo,
//         this.email,
//         this.nomorHp,
//         this.gender,
//         this.location,
//         this.alamat,
//         this.username,
//         this.status,
//         this.userId,
//         this.vendorId,
//         this.idChat,
//         this.poin,
//         this.roles,
//         this.tokenMessage,
//         this.isVerified,
//         this.fotoKtp,
//         this.fotoKtpSelfie,
//         this.emailVerifiedAt,
//         this.currentTeamId,
//         this.profilePhotoUrl,
//         this.createdAt,
//         this.updatedAt,
//         this.deletedAt});
//
//   editUser.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     name = json['name'];
//     saldo = json['saldo'];
//     email = json['email'];
//     nomorHp = json['nomor_hp'];
//     gender = json['gender'];
//     location = json['location'];
//     alamat = json['alamat'];
//     username = json['username'];
//     status = json['status'];
//     userId = json['user_id'];
//     vendorId = json['vendor_id'];
//     idChat = json['id_chat'];
//     poin = json['poin'];
//     roles = json['roles'];
//     tokenMessage = json['token_message'];
//     isVerified = json['is_verified'];
//     fotoKtp = json['foto_ktp'];
//     fotoKtpSelfie = json['foto_ktp_selfie'];
//     emailVerifiedAt = json['email_verified_at'];
//     currentTeamId = json['current_team_id'];
//     profilePhotoUrl = json['profile_photo_url'];
//     createdAt = json['created_at'];
//     updatedAt = json['updated_at'];
//     deletedAt = json['deleted_at'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> dataEdit = <String, dynamic>{};
//     dataEdit['id'] = id;
//     dataEdit['name'] = name;
//     dataEdit['saldo'] = saldo;
//     dataEdit['email'] = email;
//     dataEdit['nomor_hp'] = nomorHp;
//     dataEdit['gender'] = gender;
//     dataEdit['location'] = location;
//     dataEdit['alamat'] = alamat;
//     dataEdit['username'] = username;
//     dataEdit['status'] = status;
//     dataEdit['user_id'] = userId;
//     dataEdit['vendor_id'] = vendorId;
//     dataEdit['id_chat'] = idChat;
//     dataEdit['poin'] = poin;
//     dataEdit['roles'] = roles;
//     dataEdit['token_message'] = tokenMessage;
//     dataEdit['is_verified'] = isVerified;
//     dataEdit['foto_ktp'] = fotoKtp;
//     dataEdit['foto_ktp_selfie'] = fotoKtpSelfie;
//     dataEdit['email_verified_at'] = emailVerifiedAt;
//     dataEdit['current_team_id'] = currentTeamId;
//     dataEdit['profile_photo_url'] = profilePhotoUrl;
//     dataEdit['created_at'] = createdAt;
//     dataEdit['updated_at'] = updatedAt;
//     dataEdit['deleted_at'] = deletedAt;
//     return dataEdit;
//   }
// }

// class GetModel {
//   late final String? code;
//   late final String? status;
//   late final String? message;
//
//   GetModel({this.code, this.status, this.message});
//
//   factory GetModel.fromJson(Map<String, dynamic> json) {
//     return GetModel(
//       code: json['code'] != null ? json['code'] : "",
//       status: json['status'] != null ? json['status'] : "",
//       message: json['message'] != null ? json['message'] : "",
//     );
//   }
// }
//
// class DataGetModel {
//   late final String? id;
//   late final String? fullname;
//   late final String? job;
//
//   DataGetModel({this.id, this.fullname, this.job});
//
//   factory DataGetModel.fromJson(Map<String, dynamic> object) {
//     return DataGetModel(
//       id: object['id'],
//       fullname: object['fullname'],
//       job: object['job'],
//     );
//   }
//
//   // static Future<DataGetModel> connectAPI(String id) async {
//   //   String apiURL = "https://admin.yuvan.dev/api/user/" + id;
//   //   Uri myUri = Uri.parse(apiURL);
//   //   var apiResult = await http.get(myUri);
//   //   var jsonObject = json.decode(apiResult.body);
//   //   var userData = (jsonObject as Map<String, dynamic>)['data'];
//   //
//   //   return DataGetModel.createUser(userData);
//   // }
//   //
//   // Map<String, dynamic> toJson() {
//   //   Map<String, dynamic> map = {
//   //     'nama': nama?.trim(),
//   //     'job': job?.trim(),
//   //     'email': id?.trim(),
//   //   };
//   //   return map;
//   // }
// }

class editUser {
  int? id;
  String? name;
  String? saldo;
  String? email;
  String? nomorHp;
  String? gender;
  dynamic location;
  dynamic alamat;
  String? username;
  dynamic status;
  String? userId;
  dynamic vendorId;
  dynamic idChat;
  dynamic poin;
  dynamic roles;
  dynamic tokenMessage;
  bool? isVerified;
  dynamic fotoKtp;
  dynamic fotoKtpSelfie;
  dynamic emailVerifiedAt;
  dynamic currentTeamId;
  String? profilePhotoUrl;
  String? createdAt;
  String? updatedAt;
  dynamic deletedAt;

  editUser(
      {this.id,
        this.name,
        this.saldo,
        this.email,
        this.nomorHp,
        this.gender,
        this.location,
        this.alamat,
        this.username,
        this.status,
        this.userId,
        this.vendorId,
        this.idChat,
        this.poin,
        this.roles,
        this.tokenMessage,
        this.isVerified,
        this.fotoKtp,
        this.fotoKtpSelfie,
        this.emailVerifiedAt,
        this.currentTeamId,
        this.profilePhotoUrl,
        this.createdAt,
        this.updatedAt,
        this.deletedAt});

  editUser.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    saldo = json['saldo'];
    email = json['email'];
    nomorHp = json['nomor_hp'];
    gender = json['gender'];
    location = json['location'];
    alamat = json['alamat'];
    username = json['username'];
    status = json['status'];
    userId = json['user_id'];
    vendorId = json['vendor_id'];
    idChat = json['id_chat'];
    poin = json['poin'];
    roles = json['roles'];
    tokenMessage = json['token_message'];
    isVerified = json['is_verified'];
    fotoKtp = json['foto_ktp'];
    fotoKtpSelfie = json['foto_ktp_selfie'];
    emailVerifiedAt = json['email_verified_at'];
    currentTeamId = json['current_team_id'];
    profilePhotoUrl = json['profile_photo_url'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    deletedAt = json['deleted_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['saldo'] = saldo;
    data['email'] = email;
    data['nomor_hp'] = nomorHp;
    data['gender'] = gender;
    data['location'] = location;
    data['alamat'] = alamat;
    data['username'] = username;
    data['status'] = status;
    data['user_id'] = userId;
    data['vendor_id'] = vendorId;
    data['id_chat'] = idChat;
    data['poin'] = poin;
    data['roles'] = roles;
    data['token_message'] = tokenMessage;
    data['is_verified'] = isVerified;
    data['foto_ktp'] = fotoKtp;
    data['foto_ktp_selfie'] = fotoKtpSelfie;
    data['email_verified_at'] = emailVerifiedAt;
    data['current_team_id'] = currentTeamId;
    data['profile_photo_url'] = profilePhotoUrl;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    data['deleted_at'] = deletedAt;
    return data;
  }
}

// class editUser {
//   late String? email;
//   late String? job;
//   late String? password;
//
//   editUser({this.email, this.job, this.password});
//
//   factory editUser.fromJson(Map<String, dynamic> json) => editUser(
//     email: json['email'],
//     job: json['job'],
//     password: json['password'],
//   );
//
//   Map<String, dynamic> toJson() {
//     Map<String, dynamic> map = {
//       'fullname': email?.trim(),
//       'job': job?.trim(),
//       'password': password?.trim(),
//     };
//     return map;
//   }
// }

// loginModelFromJson(String str) => LoginModel.fromJson(json.decode(str));
//
// String loginModelToJson(LoginModel data) => json.encode(data.toJson());
//
// class LoginResponse {
//   late final String? code;
//   late final String? status;
//   late final String? message;
//
//   LoginResponse({this.code, this.status, this.message});
//
//   factory LoginResponse.fromJson(Map<String, dynamic> json) {
//     return LoginResponse(
//       code: json['code'] != null ? json['code'] : "",
//       status: json['status'] != null ? json['status'] : "",
//       message: json['message'] != null ? json['message'] : "",
//     );
//   }
// }
//
// class LoginModel {
//   late final String? email;
//   late final String? password;
//
//   LoginModel({this.email, this.password});
//
//   factory LoginModel.fromJson(Map<String, dynamic> json) => LoginModel(
//         email: json['email'],
//         password: json['password'],
//       );
//
//   Map<String, dynamic> toJson() {
//     Map<String, dynamic> map = {
//       'email': email?.trim(),
//       'password': password?.trim(),
//     };
//     return map;
//   }
// }
