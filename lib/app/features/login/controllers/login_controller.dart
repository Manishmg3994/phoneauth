import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:phoneauth/app/config/routes/app_pages.dart';

class LoginController extends GetxController {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final phoneNumber = TextEditingController();
  final isLoading = false.obs;
  void goToRegistrationScreen() {
    Get.off(Routes.register); //Todo we will add and create that
  }

  void goToAuthenticationScreen() {
    Get.to(Routes.authentication); //also we we will crw=eate and add <further>
  }

//For login we can create afunction but we will cover that in backend video
  void login() async {
    await Future.delayed(
      const Duration(
        milliseconds: 1000,
      ),
    );
    goToAuthenticationScreen();
  }
}
