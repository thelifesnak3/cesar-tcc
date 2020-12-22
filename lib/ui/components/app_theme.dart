import 'package:flutter/material.dart';

ThemeData makeAppTheme() {

  final primaryColor = Colors.deepPurple[900];
  final primaryColorDark = Colors.deepPurple[900];
  final primaryColorLight = Colors.deepPurple[400];

  return ThemeData(
      primaryColor: primaryColor,
      primaryColorDark: primaryColorDark,
      primaryColorLight: primaryColorLight,
      accentColor: primaryColor,
      backgroundColor: Colors.white,
      textTheme: TextTheme(
        headline1: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Colors.white
        ),
        headline2: TextStyle(
          fontSize: 14,
          color: Colors.white
        ),
        headline3: TextStyle(
          fontSize: 12,
          color: Colors.white
        )
      ),
      inputDecorationTheme: InputDecorationTheme(
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: primaryColorLight)
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: primaryColor)
        ),
        alignLabelWithHint: true
      ),
      buttonTheme: ButtonThemeData(
        colorScheme: ColorScheme.light(primary: primaryColor),
        buttonColor: primaryColor,
        splashColor: primaryColorLight,
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        textTheme: ButtonTextTheme.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20)
        )
      )
    );
}