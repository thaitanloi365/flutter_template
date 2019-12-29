import 'package:shared_preferences/shared_preferences.dart';

class LocalStorage {
  static SharedPreferences prefs;

  LocalStorage._() {
    SharedPreferences.getInstance().then((ref) => prefs = ref);
  }

  static void init() {
    LocalStorage._();
  }

  static Future<bool> clear() async {
    return await prefs.clear();
  }

  static Future<bool> saveToken(String token) async {
    return await prefs.setString('token', token);
  }

  static String getToken() {
    try {
      return prefs.getString('token');
    } catch (error) {
      return "";
    }
  }
}
