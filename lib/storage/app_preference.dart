import 'dart:convert';

import 'package:bloc_architecture/utils/app_log.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../data/models/login_result.dart';


class AppPreference {
  AppPreference._();

  static AppPreference? _instance;

  static AppPreference get instance => _instance ??= AppPreference._();
  LoginResult? _loginObject;

  Future<LoginResult> getLoginObject() async {
    if (_loginObject != null) return _loginObject!;

    final prefs = await SharedPreferences.getInstance();
    try {
      return LoginResult.fromJson(jsonDecode(prefs.getString(_loginData) ?? "{}"));
    } catch (e) {
      printLog(e.toString());
    }
    return LoginResult();
  }

  Future<void> setUsername(String uName) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString(_username, uName);
  }
  Future<String> username() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(_username) ?? "";
  }

  Future<void> setPassword(String pass) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString(_password, pass);
  }

  Future<String> password() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(_password) ?? "";
  }



  Future<void> setToken(String token) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString(_token, token);
  }

  Future<String> getToken() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(_token) ?? "";
  }

  Future<void> setLongitude(String lng) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString(_longitude, lng);
  }

  Future<String> longitude() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(_longitude) ?? "";
  }
  static const String _username = "username";
  static const String _password = "password";
  static const String _token = "token";

  static const String _loginData = "encypted_data";
  static const String _latitude = "_latitude";
  static const String _longitude = "_longitude";

  void saveData(LoginResult? user) async {
    if (user != null) {
      _loginObject = null;
      final prefs = await SharedPreferences.getInstance();
      // prefs.setString(_loginData, jsonEncode(user.toJson()));
    }
  }
  void clear() async {
    _loginObject = null;
    final prefs = await SharedPreferences.getInstance();
    prefs.setString(_loginData, "{}");
  }
}
