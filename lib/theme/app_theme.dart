import 'package:flutter/material.dart';

abstract class AppTheme {
  static final ThemeData lightTheme = ThemeData(
    primaryColor: Colors.purple[500],
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: const AppBarTheme(
      elevation: 0,
    ),
    popupMenuTheme: const PopupMenuThemeData(
      surfaceTintColor: Colors.white,
      color: Colors.white,
    ),
    dialogBackgroundColor: Colors.white,
    dialogTheme: const DialogTheme(
      surfaceTintColor: Colors.white,
    ),
    datePickerTheme: const DatePickerThemeData(
      backgroundColor: Colors.white,
      surfaceTintColor: Colors.white,
      rangePickerHeaderBackgroundColor: Colors.white,
    ),
    timePickerTheme: const TimePickerThemeData(
      backgroundColor: Colors.white,
    ),
    canvasColor: Colors.white,
    cardColor: Colors.white,
  );
}
