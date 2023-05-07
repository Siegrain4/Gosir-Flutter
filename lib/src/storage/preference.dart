import 'package:shared_preferences/shared_preferences.dart';

Future setToken(String value) async {
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  return prefs.setString("Token", value);
}

Future getToken() async {
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  return prefs.getString("Token");
}

Future removeToken() async {
  final SharedPreferences shared = await SharedPreferences.getInstance();
  return shared.remove("Token");
}

Future setNama(String value) async {
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  return prefs.setString("name", value);
}

Future getNama() async {
  final SharedPreferences shared = await SharedPreferences.getInstance();
  return shared.getString("name");
}

Future removeNama() async {
  final SharedPreferences shared = await SharedPreferences.getInstance();
  return shared.remove("name");
}
Future setEmail(String value) async {
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  return prefs.setString("email", value);
}

Future getEmail() async {
  final SharedPreferences shared = await SharedPreferences.getInstance();
  return shared.getString("email");
}

Future setStore(String value) async {
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  return prefs.setString("storeName", value);
}

Future getStore() async {
  final SharedPreferences shared = await SharedPreferences.getInstance();
  return shared.getString("storeName");
}

Future removeStore() async {
  final SharedPreferences shared = await SharedPreferences.getInstance();
  return shared.remove("storeName");
}

Future setUser(String value) async {
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  return prefs.setString("id", value);
}

Future getUser() async {
  final SharedPreferences shared = await SharedPreferences.getInstance();
  return shared.getString("id");
}

