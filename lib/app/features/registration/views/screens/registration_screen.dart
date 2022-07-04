library registration_view;

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:phoneauth/app/constants/assets_constant.dart';
import 'package:phoneauth/app/features/registration/controllers/registration_controller.dart';

part '../components/header_text.dart';
part '../components/illustration_image.dart';
part '../components/login_button.dart';
part '../components/name_field.dart';
part '../components/phone_number_field.dart';
part '../components/register_button.dart';

class RegistrationScreen extends GetView<RegistrationController> {
  const RegistrationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverList(
              delegate: SliverChildListDelegate([
            SizedBox(
                width: Get.width,
                height: Get.height,
                child: Form(
                  key: controller.formKey,
                  child: Form(
                      key: controller.formKey,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Spacer(
                            flex: 6,
                          )
                        ],
                      )),
                ))
          ]))
        ],
      ),
    );
  }
}
