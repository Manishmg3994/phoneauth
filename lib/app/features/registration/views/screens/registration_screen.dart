library registration_view;


import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:phoneauth/app/constants/assets_constant.dart';
import 'package:phoneauth/app/features/registration/controllers/registration_controller.dart';
import 'package:lottie/lottie.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';

part '../components/phone_number_field.dart';
part '../components/illustration_image.dart';
part '../components/header_text.dart';
part '../components/register_button.dart';
part '../components/login_button.dart';
part '../components/name_field.dart';
part '../components/location_field.dart';
part '../components/privacypolicy.dart';

class RegistrationScreen extends GetView<RegistrationController> {
  const RegistrationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
 
    return Scaffold(
      body: CustomScrollView(
        scrollDirection:
            (MediaQuery.of(context).orientation == Orientation.portrait)
                ? Axis.vertical
                : Axis.horizontal,
        slivers: [
          SliverList(
              delegate: SliverChildListDelegate([
            SizedBox(
              width: Get.width,
              height: Get.height,
              child: Form(
                key: controller.formKey,
                child:
                    GetBuilder<RegistrationController>(builder: (controller) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Spacer(flex: 6),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: _HeaderText(),
                      ),
                      Spacer(flex: 4),
                      _IllustrationImage(),
                      Spacer(flex: 3),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: _NameField(),
                      ),
                      Spacer(flex: 1),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: _PhoneNumberField(),
                      ),
                      Spacer(flex: 5),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: _LocationField(),
                      ),
                      Spacer(flex: 2),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: _RegisterButton(),
                      ),
                      Spacer(),
                      _PrivacyPolicy(),
                      Spacer(),
                      _LoginButton(),
                      Spacer(flex: 4),
                    ],
                  );
                }),
              ),
            ),
          ]))
        ],
      ),
    );
  }
}
