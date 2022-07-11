import 'package:flutter/material.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:phoneauth/app/config/routes/app_pages.dart';
import 'package:url_launcher/url_launcher.dart';

class RegistrationController extends GetxController {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController name = TextEditingController();
  double? latitude;
  double? longitude;
  Position? position;
  List<Placemark?>? placeMarks;
  final isLoading = false.obs;

  final TextEditingController phoneNumber = TextEditingController();
  final location = TextEditingController();
  void goToLoginScreen() {
    Get.offNamed(Routes.login); //we will create that
  }

  //hard code but we will delete this
  void goToAuthScreen() {
    Get.offNamed(Routes.authentication); //we will create that
  }

  //get location
  getLocation() async {
    bool serviceEnabled;
    try {
      serviceEnabled = await Geolocator.isLocationServiceEnabled();
      var locationpermission = await Permission.location.request();
      if (locationpermission.isGranted) {
        if (!serviceEnabled) {
          Geolocator.requestPermission();
        }

        try {
          Position newPosition = await Geolocator.getCurrentPosition(
            desiredAccuracy: LocationAccuracy.bestForNavigation,
          );
          position = newPosition; //having latitde and logitude
          var placemarkFromCoordinates2 = placemarkFromCoordinates;
          placeMarks = await placemarkFromCoordinates2(
              position!.latitude, position!.longitude);
          latitude = position!.latitude;
          longitude = position!.longitude;
          Placemark? pMark = placeMarks![0];
          String completeAddress =
              '${pMark?.subThoroughfare} ${pMark?.thoroughfare}, ${pMark?.subLocality} ${pMark?.locality}, ${pMark?.subAdministrativeArea}, ${pMark?.administrativeArea} ${pMark?.postalCode}, ${pMark?.country}';
          location.text = completeAddress;
        } catch (e) {
          print(e);
          Get.snackbar('No Internet', "Require Internet connection !");
        }
      } else {
        Get.snackbar(
            'Need Permission', 'Please Give Location Access Permission');
      }
    } on LocationServiceDisabledException catch (e) {
      //PlatformException  LocationServiceDisabledException
      Get.snackbar('Turn on GPS', 'Location is off');
    }
  }

  Future<void> locate() async {
    String _url =
        'https://www.google.com/maps/search/?api=1&query=$latitude,$longitude';
    if (latitude != null && longitude != null) {
      if (await canLaunchUrl(Uri.parse(_url))) {
        await launchUrl(
          Uri.parse(_url),
        ); //implement forceSafariVC for ios
      }
    }
  }
   void register() async {
    if (formKey.currentState!.validate()) {
      formKey.currentState!.save();
      isLoading.value = true;
      await Future.delayed(
        const Duration(
          milliseconds: 1000,
        ),
      );
      isLoading.value = false;
      goToAuthScreen();
    }
   }
}
