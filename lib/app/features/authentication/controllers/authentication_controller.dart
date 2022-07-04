import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:phoneauth/app/config/routes/app_pages.dart';

class AuthenticationController extends GetxController {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final otp = TextEditingController();
  //firrebase todo

  void goToHome() {
    Get.offAllNamed(Routes.home); //todo we will create
  }
}
