import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:phoneauth/app/config/routes/app_pages.dart';
import 'package:phoneauth/app/config/themes/app_basic_theme.dart';
import 'package:phoneauth/app/utils/services/servicelocator.dart';
import 'package:phoneauth/app/utils/services/themeviewmodel.dart';

void main() async {
  await GetStorage.init();
  ServiceLocator.init();
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());
}

class MyApp extends GetView<ThemeViewModel> {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(ThemeViewModel());
    Get.find<ThemeViewModel>();

    return GetMaterialApp(
      initialRoute: AppPages.initial, //TODO We will create route page
      title: "Phone Auth",
      theme: AppBasicTheme.getThemeData(), //Todo Create a theme Design
      darkTheme: AppBasicTheme.getThemeDataDark(),
      themeMode: controller
          .theme, // if you are using provider then you can register your provider in main function and can use ThemeVidewModel().theme;
      debugShowCheckedModeBanner: false,
      getPages: AppPages.routes, //Todo routes
    );
  }
}
