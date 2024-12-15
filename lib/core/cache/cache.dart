import 'dart:developer';
import 'package:shared_preferences/shared_preferences.dart';

class Cache {
  static Cache? _instance;
  static SharedPreferences? _sharedPreferences;

  // Private constructor
  Cache._();

  // Factory method to get the single instance
  factory Cache() {
    _instance ??= Cache._();
    return _instance!;
  }

  static Future<void> init() async {
    _sharedPreferences = await SharedPreferences.getInstance();
  }

  // Save data
  static Future<void> saveData({
    required String key,
    required dynamic value,
  }) async {
    log("saving >>> $value into local >>> with key $key");

    if (_sharedPreferences == null) {
      throw Exception('SharedPreferences not initialized');
    }

    if (value is String) {
      await _sharedPreferences!.setString(key, value);
    } else if (value is int) {
      await _sharedPreferences!.setInt(key, value);
    } else if (value is double) {
      await _sharedPreferences!.setDouble(key, value);
    } else if (value is bool) {
      await _sharedPreferences!.setBool(key, value);
    } else {
      throw Exception('Unsupported value type');
    }
  }

  // Get data
  static String getString({required String key}) {
    return _sharedPreferences?.getString(key) ?? "";
  }

  static int getInteger({required String key}) {
    return _sharedPreferences?.getInt(key) ?? 0;
  }

  static bool getBoolean({required String key}) {
    return _sharedPreferences?.getBool(key) ?? false;
  }

  // Remove data
  static Future<bool> removeData({required String key}) async {
    if (_sharedPreferences == null) {
      throw Exception('SharedPreferences not initialized');
    }
    return await _sharedPreferences!.remove(key);
  }
}
