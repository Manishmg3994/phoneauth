import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:phoneauth/app/features/authentication/controllers/authentication_controller.dart';

class AuthenticationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AuthenticationController());
  }
}
