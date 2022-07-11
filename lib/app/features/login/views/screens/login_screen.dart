library login_view;

import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:phoneauth/app/constants/assets_constant.dart';
import 'package:phoneauth/app/features/login/controllers/login_controller.dart';

part '../components/header_text.dart';
part '../components/illustration_image.dart';
part '../components/login_button.dart';
part '../components/phone_number_field.dart';
part '../components/registration_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen>
    with SingleTickerProviderStateMixin {
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
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Spacer(flex: 6),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: _HeaderText(),
                ),
                Spacer(flex: 4),
                _IllustrationImage(),
                Spacer(flex: 4),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: _PhoneNumber(),
                ),
                Spacer(flex: 2),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: _LoginButton(),
                ),
                Spacer(flex: 5),
                _RegistrationButton(),
                Spacer(flex: 2),
              ],
            ),
          ),
        ]))
      ],
    ));
  }
}
