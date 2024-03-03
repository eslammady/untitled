import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:http/http.dart' as http;

class AuthController {
  Dio _dio = Dio();

  String _path = 'http://54.37.71.29:8055/users';

  Future<void> signup(Map data) async {
    try {
      // Response res = await _dio.post(_path, data: json.encode(data));
      final res = await http.post(Uri.parse(_path), body: json.encode(data));
      print(res.statusCode);
    } catch (e) {
      print(e);
    }
  }
}
