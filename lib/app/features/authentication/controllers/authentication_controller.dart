import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:phoneauth/app/config/routes/app_pages.dart';
import 'package:sms_autofill/sms_autofill.dart';

class AuthenticationController extends GetxController {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final otp = TextEditingController();
   String? verificationId;
  final isLoading = true.obs;
  late final String? phoneNumber;
  //  late final Registrant? registrant;

  final _durationTimeOut = Duration(seconds: 60);
  final isCanResendCode = false.obs;
  final durationCountdown = 0.obs;

  // @override
  // void onInit() {
    // registrant = _getUser();
    // phoneNumber = _getPhoneNumber();
  //   verifyPhoneNumber();
  //   try {
  //     SmsAutoFill().listenForCode();
  //   } catch (e) {}

  //   super.onInit();
  // }

  @override
  void onClose() {
    try {
      SmsAutoFill().unregisterListener();
    } catch (e) {}
    super.onClose();
  }
  
  //firrebase todo
void _validateCountdownResendCode() {
    isCanResendCode.value = false;
    var maxDurationInSecond = _durationTimeOut.inSeconds;
    var currentDurationSecond = 0;
    durationCountdown.value = maxDurationInSecond;

    Timer.periodic(Duration(seconds: 1), (timer) {
      currentDurationSecond++;
      if (maxDurationInSecond - currentDurationSecond >= 0) {
        durationCountdown.value = maxDurationInSecond - currentDurationSecond;
      } else {
        isCanResendCode.value = true;
        timer.cancel();
      }
    });
  }
  void goToHome() {
    isLoading.value = false;
    Get.offAllNamed(Routes.home); //todo we will create
  }
  //  Registrant? _getUser() {
  //   try {
  //     return Get.arguments as Registrant?;
  //   } catch (_) {
  //     return null;
  //   }
  // }
  //  String? _getPhoneNumber() {
  //   try {
  //     return Get.parameters['phone_number'];
  //   } catch (_) {
  //     return null;
  //   }
  // }
}
