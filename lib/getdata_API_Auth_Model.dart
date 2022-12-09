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

class DataUser {
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

  DataUser(
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

  DataUser.fromJson(Map<String, dynamic> json) {
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