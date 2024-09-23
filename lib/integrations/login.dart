import 'package:http/http.dart' as http;
import 'dart:convert';
import '../models/res_login.dart';

class Login {
  String getUrl(String method) {
    return "https://poputti.com/ajax/api.php?method=$method&is_app=Y";
  }

  String getUrlPhoto() {
    return "https://poputti.com/ajax/mobile/upload_photo.php";
  }

  Future<Map<String, String>> getHeaders() async {
    final headersRest = <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    };

    return headersRest;
  }

  Future<ResLogin> getCodeEmail(phoneOrEmail, type) async {
    final response = await http.post(
      Uri.parse(getUrl('getCode')),
      headers: await getHeaders(),
      body: jsonEncode(
          <String, String>{'phone_email': phoneOrEmail, 'type': type}),
    );
    if (response.statusCode == 200) {
      return ResLogin.fromJson(
          jsonDecode(response.body) as Map<String, dynamic>);
    } else {
      return const ResLogin(ok: 0, error: "Ошибка подключения");
    }
  }

  Future<ResLogin> checkCode(phoneOrEmail, type, code) async {
    final response = await http.post(
      Uri.parse(getUrl('checkCode')),
      headers: await getHeaders(),
      body: jsonEncode(<String, String>{
        'phone_email': phoneOrEmail,
        'type': type,
        'code': code
      }),
    );
    if (response.statusCode == 200) {
      return ResLogin.fromJson(
          jsonDecode(response.body) as Map<String, dynamic>);
    } else {
      return const ResLogin(ok: 0, error: "Ошибка подключения");
    }
  }

  Future<ResLogin> regUser(Map<String, String> data) async {
    final response = await http.post(Uri.parse(getUrl('regUser')),
        headers: await getHeaders(), body: const JsonEncoder().convert(data));
    if (response.statusCode == 200) {
      return ResLogin.fromJson(
          jsonDecode(response.body) as Map<String, dynamic>);
    } else {
      return const ResLogin(ok: 0, error: "Ошибка подключения");
    }
  }

  Future<ResLogin> loginPass(Map<String, String> data) async {
    final response = await http.post(Uri.parse(getUrl('loginByPass')),
        headers: await getHeaders(), body: const JsonEncoder().convert(data));
    if (response.statusCode == 200) {
      return ResLogin.fromJson(
          jsonDecode(response.body) as Map<String, dynamic>);
    } else {
      return const ResLogin(ok: 0, error: "Ошибка подключения");
    }
  }

  Future<ResLogin> newPass(Map<String, String> data) async {
    final response = await http.post(Uri.parse(getUrl('newPass')),
        headers: await getHeaders(), body: const JsonEncoder().convert(data));
    if (response.statusCode == 200) {
      return ResLogin.fromJson(
          jsonDecode(response.body) as Map<String, dynamic>);
    } else {
      return const ResLogin(ok: 0, error: "Ошибка подключения");
    }
  }

  Future<ResLogin> confirmPass(Map<String, String> data) async {
    final response = await http.post(Uri.parse(getUrl('confirmPass')),
        headers: await getHeaders(), body: const JsonEncoder().convert(data));
    if (response.statusCode == 200) {
      return ResLogin.fromJson(
          jsonDecode(response.body) as Map<String, dynamic>);
    } else {
      return const ResLogin(ok: 0, error: "Ошибка подключения");
    }
  }
}
