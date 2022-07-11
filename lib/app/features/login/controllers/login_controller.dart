import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:mobile_number_picker/mobile_number_picker.dart';
import 'package:phoneauth/app/config/routes/app_pages.dart';

class LoginController extends GetxController {
  MobileNumberPicker? mobileNumber = MobileNumberPicker();
  MobileNumber? mobileNumberObject = MobileNumber();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final phoneNumber = TextEditingController();
  final isLoading = false.obs;
  int mobilenogot = 0;
  @override
  void onInit() {
    if (mobilenogot == 0) {
      Future.delayed(const Duration(seconds: 1), () {
        getMobileNo();
      });
      mobilenogot = 1;
    }

    super.onInit();
  }

  void getMobileNo() async {
    try {
      mobileNumber?.mobileNumber();
      mobileNumber?.getMobileNumberStream.listen((event) {
        if (event?.states == PhoneNumberStates.PhoneNumberSelected) {
          mobileNumberObject = event;
          phoneNumber.text = mobileNumberObject!
              .completeNumber!; //you can choose it without country code and can make a different column for country code in ui
          login();
        }
      });
    } catch (e) {}
  }

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
