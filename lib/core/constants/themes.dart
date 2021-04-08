import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: avoid_classes_with_only_static_members
class Themes {
  static ThemeData get lightTheme => ThemeData(
        appBarTheme: const AppBarTheme(
            backgroundColor: Colors.white,
            foregroundColor: Colors.black,
            iconTheme: IconThemeData(color: Colors.black),
            brightness: Brightness.light),
        primarySwatch: Colors.blue,
        primaryColor: Colors.blue[200],
        primaryColorLight: Colors.blue[100],
        primaryColorDark: Colors.blue[400],
      );
  static ThemeData get darkTheme => ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.grey,
        primaryColorDark: Colors.blue[400],
        accentColor: Colors.grey,
        toggleableActiveColor: Colors.grey,
        toggleButtonsTheme: const ToggleButtonsThemeData(color: Colors.black),
        appBarTheme: AppBarTheme(
            backgroundColor: Colors.grey[800]!.withAlpha(50),
            foregroundColor: Colors.white,
            iconTheme: const IconThemeData(color: Colors.white),
            brightness: Brightness.dark),
      );
}
