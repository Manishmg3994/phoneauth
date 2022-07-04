import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:phoneauth/app/config/routes/app_pages.dart';

class RegistrationController extends GetxController {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController name = TextEditingController();

  final TextEditingController phoneNumber = TextEditingController();

  void goToLoginScreen() {
    Get.offNamed(Routes.login); //we will create that
  }

  //hard code but we will delete this
  void goToAuthScreen() {
    Get.offNamed(Routes.authentication); //we will create that
  }
}
