//we will make a named route here to access different pages/screens like login register home and Splash screen for now we have our initial route as Splash Screen which we create latter after this (for my case i am not using any controller for splash screen but you can use )
import 'package:get/get.dart';
import 'package:phoneauth/app/features/authentication/bindings/authentication_binding.dart';
import 'package:phoneauth/app/features/authentication/views/screens/authentication_screen.dart';
import 'package:phoneauth/app/features/home/views/views/home_view.dart';
import 'package:phoneauth/app/features/login/bindings/login_binding.dart';
import 'package:phoneauth/app/features/login/views/screens/login_screen.dart';
import 'package:phoneauth/app/features/registration/bindings/registration_binding.dart';
import 'package:phoneauth/app/features/registration/views/screens/registration_screen.dart';
import 'package:phoneauth/app/features/splash/views/screen/splash_screen.dart';

part 'app_routes.dart';

abstract class AppPages {
  static const initial = Routes
      .splash; //we will create splaash screen and also import that here and also we will create route in app_routes.dart file;
  static final routes = [
    GetPage(
        name: _Path.splash,
        page: () =>
            const SplashScreen()), //we will import that letter after creating (will be back here soon)
    GetPage(
        name: _Path.login,
        page: () => const LoginScreen(),
        binding: LoginBinding()),
    GetPage(
        name: _Path.register,
        page: () => const RegistrationScreen(),
        binding: RegistrationBinding()),
           GetPage(
        name: _Path.authentication,
        page: () => const AuthenticationScreen(),
        binding: AuthenticationBinding()),
          GetPage(
        name: _Path.home,
        page: () => const Home(),
        // binding: AuthenticationBinding() //todo binding not set 
        ),
  ];
}
