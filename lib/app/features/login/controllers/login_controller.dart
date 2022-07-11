import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:mobile_number_picker/mobile_number_picker.dart';
import 'package:phoneauth/app/config/routes/app_pages.dart';




class LoginController extends GetxController {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  MobileNumberPicker? mobileNumber = MobileNumberPicker();
  MobileNumber? mobileNumberObject = MobileNumber();

  var phoneNumber = TextEditingController();
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

  void goToRegistrationScreen() {
    Get.offNamed(Routes.register);
  }

  void goToAuthenticationScreen() {
    Get.toNamed(Routes.authentication);
  }

  void login() async {
    if (formKey.currentState!.validate()) {
      isLoading.value = true;

      // await UserServices.phoneNumberExists(phoneNumber.text.trim(),
      //     onError: (_) {
      //   isLoading.value = false;
      // }).then((exist) {
      //   isLoading.value = false;
      //   if (exist) {
      //     Get.toNamed(
      //       Routes.authentication,
      //       parameters: {'phone_number': phoneNumber.text},
      //     );
      //   } else {
      //     Get.snackbar(
      //       "Login Failed Or Try Register",
      //       "your phone number not exist",
      //       backgroundColor: Colors.white,
      //       snackPosition: SnackPosition.BOTTOM,
      //     );
      //   }
      // });


      //to comment this code and uncomment above code
      await Future.delayed(const Duration(seconds: 1), () {
        isLoading.value = false;
        Get.toNamed(
          Routes.authentication,
          parameters: {'phone_number': phoneNumber.text},
        );
      });
    }
  }

  void getMobileNo() async {
    try {
      mobileNumber?.mobileNumber();
      mobileNumber?.getMobileNumberStream.listen((event) {
        if (event?.states == PhoneNumberStates.PhoneNumberSelected) {
          mobileNumberObject = event;
          phoneNumber.text = mobileNumberObject!.completeNumber!;
          login();
        }
      });
    } catch (e) {}
  }
}
