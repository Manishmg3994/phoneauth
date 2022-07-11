import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:phoneauth/app/config/routes/app_pages.dart';
import 'package:phoneauth/app/constants/assets_constant.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    _initialize();
    return Scaffold(
      body: Center(
        child: Lottie.asset(
          LottieConstant.splash,
          fit: BoxFit.fitWidth,
        ),
      ),
    );
  }

  _initialize() async {
    await Future.delayed(Duration(seconds: 3));
    Get.offAllNamed(Routes.login);
  }
}
