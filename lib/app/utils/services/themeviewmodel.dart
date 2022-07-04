import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class ThemeViewModel extends GetxController { //for provider use with change notifier in place of extends GetxController
  final _box = GetStorage();
  final _key = "isDarkMode";
  ThemeMode get theme => _darkMode ? ThemeMode.dark : ThemeMode.light;
  bool get darkMode => _darkMode;
  set darkMode(bool value) {
    if (_darkMode == value) {
      return;
    }
    _darkMode = value;
    Get.changeThemeMode(theme);
    //for provider change to notifyListners(); and also change the extends of class to with change notifier
  }

  bool _darkMode = GetStorage().read("isDarkMode") ?? false;
  void saveTheme(bool isDarkMode) => _box.write(_key, isDarkMode);
}
