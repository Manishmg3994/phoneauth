part of "app_pages.dart";

abstract class Routes {
  static const splash = _Path.splash;
  static const login= _Path.splash;
  static const register = _Path.splash;
  static const authentication = _Path.splash;
  static const home = _Path.splash;
}

abstract class _Path {
  static const splash =
      "/splash/"; //never forget to add / before thenamed routes unless it will not work
      static const login =
      "/login/";
      static const register =
      "/register/";
      static const authentication =
      "/authentication/";
       static const home =
      "/home/";
}
