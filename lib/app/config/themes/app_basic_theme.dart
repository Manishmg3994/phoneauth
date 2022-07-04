import 'package:flutter/material.dart';

abstract class AppBasicTheme {
  static ThemeData getThemeData() { //for light theme
    return ThemeData(
        primarySwatch: Colors.green, //choose your primaryswatch color
        textTheme: TextTheme(
            bodyText2: TextStyle(
          color: Colors.grey[800],
        )),
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: Colors.grey[200],
          errorStyle:
              TextStyle(fontSize: 0), //we dont want to show error validation
          errorMaxLines: 1,
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Colors.transparent,
            ),
            borderRadius: BorderRadius.circular(30),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Colors.grey,
            ),
            borderRadius: BorderRadius.circular(30),
          ),
          errorBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Colors.redAccent,
            ),
            borderRadius: BorderRadius.circular(30),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.grey),
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
                minimumSize: const Size(double.infinity, 550),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(35),
                ))));
  }



  //if you need dark theme mode then create a themedata as shown above for dark theme (or copy paste the above code with some changements)
static ThemeData getDarkThemeData() { //for light theme
    return ThemeData(
        primarySwatch: Colors.green, //choose your primaryswatch color
        textTheme: TextTheme(
            bodyText2: TextStyle(
          color: Colors.grey[800],
        )),
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: Colors.grey[200],
          errorStyle:
              TextStyle(fontSize: 0), //we dont want to show error validation
          errorMaxLines: 1,
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Colors.transparent,
            ),
            borderRadius: BorderRadius.circular(30),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Colors.grey,
            ),
            borderRadius: BorderRadius.circular(30),
          ),
          errorBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Colors.redAccent,
            ),
            borderRadius: BorderRadius.circular(30),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.grey),
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
                minimumSize: const Size(double.infinity, 550),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(35),
                ))));
  }
}
