import 'package:shared_preferences/shared_preferences.dart';

class StorageService {
  static const String _keyPhone = 'phone';
  static const String _keyPassword = 'password';
  static const String _keyIsLoggedIn = 'is_logged_in';

  static Future<void> saveLogin({
    required String phone,
    String? password,
    bool rememberMe = false,
  }) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_keyPhone, phone);
    await prefs.setBool(_keyIsLoggedIn, true);

    if (rememberMe && password != null) {
      await prefs.setString(_keyPassword, password);
    } else {
      await prefs.remove(_keyPassword);
    }
  }

  static Future<Map<String, dynamic>> getLoginData() async {
    final prefs = await SharedPreferences.getInstance();
    return {
      'phone': prefs.getString(_keyPhone) ?? '',
      'password': prefs.getString(_keyPassword),
      'isLoggedIn': prefs.getBool(_keyIsLoggedIn) ?? false,
    };
  }

  static Future<void> logout() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(_keyIsLoggedIn);
    await prefs.remove(_keyPhone);
    await prefs.remove(_keyPassword);
  }
}
