import 'dart:ffi';

import 'package:http/http.dart';

class Select {
  late final String? id;
  late final int? nominal;
  late final String? pilih;

  Select({this.id, this.nominal, this.pilih});
}