import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:phoneauth/app/features/registration/controllers/registration_controller.dart';


class RegistrationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RegistrationController());
  }
}
