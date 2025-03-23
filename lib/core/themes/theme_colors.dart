import 'package:flutter/material.dart';

import 'app_color.dart';

final ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  primaryColor: primaryColor,
  scaffoldBackgroundColor: backgroundColorLight,
  colorScheme: ColorScheme.light(
    primary: primaryColor,
    secondary: secondaryColor,
    background: backgroundColorLight,
    surface: surfaceColorLight,
    onPrimary: Colors.white,
    onSecondary: Colors.black,
    onBackground: textPrimaryColorLight,
    onSurface: textPrimaryColorLight,
    error: errorColorLight,
    onError: Colors.white,
  ),
  appBarTheme: AppBarTheme(
    backgroundColor: primaryColor,
    titleTextStyle: TextStyle(
        color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
    iconTheme: IconThemeData(color: Colors.white),
  ),
  textTheme: TextTheme(
    bodyLarge: TextStyle(color: textPrimaryColorLight, fontSize: 18),
    bodyMedium: TextStyle(color: textSecondaryColorLight, fontSize: 16),
    titleLarge: TextStyle(
        color: textPrimaryColorLight,
        fontSize: 20,
        fontWeight: FontWeight.bold),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      textStyle: TextStyle(fontSize: 18),
      backgroundColor: Colors.transparent,
      foregroundColor: surfaceColorLight,
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
    ),
  ),
  textButtonTheme: TextButtonThemeData(
    style: TextButton.styleFrom(
      foregroundColor: primaryColor,
    ),
  ),
  outlinedButtonTheme: OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      foregroundColor: primaryColor,
      side: BorderSide(color: primaryColor),
    ),
  ),
  cardTheme: CardTheme(
    color: surfaceColorLight,
    shadowColor: Colors.black26,
    elevation: 4,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
  ),
  inputDecorationTheme: InputDecorationTheme(
    labelStyle: TextStyle(color: textPrimaryColorLight),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(color: textSecondaryColorLight),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: primaryColor, width: 2),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide(color: textSecondaryColorDark),
    ),
  ),
  dividerColor: Colors.grey.shade300,
  snackBarTheme: SnackBarThemeData(
    backgroundColor: primaryColor,
    contentTextStyle: TextStyle(color: Colors.white),
  ),
  checkboxTheme: CheckboxThemeData(
    fillColor: MaterialStateProperty.all(primaryColor),
  ),
  switchTheme: SwitchThemeData(
    thumbColor: MaterialStateProperty.all(primaryColor),
    trackColor: MaterialStateProperty.all(primaryColor.withOpacity(0.5)),
  ),
);

///dark theme
final ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  primaryColor: primaryColor,
  scaffoldBackgroundColor: backgroundColorDark,
  colorScheme: ColorScheme.dark(
    primary: primaryColor,
    secondary: secondaryColor,
    background: backgroundColorDark,
    surface: surfaceColorDark,
    onPrimary: Colors.white,
    onSecondary: Colors.black,
    onBackground: textPrimaryColorDark,
    onSurface: textPrimaryColorDark,
    error: errorColorDark,
    onError: Colors.white,
  ),
  appBarTheme: AppBarTheme(
    backgroundColor: primaryColor,
    titleTextStyle: TextStyle(
        color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
    iconTheme: IconThemeData(color: Colors.white),
  ),
  textTheme: TextTheme(
    bodyLarge: TextStyle(color: textPrimaryColorDark, fontSize: 18),
    bodyMedium: TextStyle(color: textSecondaryColorDark, fontSize: 16),
    titleLarge: TextStyle(
        color: textPrimaryColorDark, fontSize: 22, fontWeight: FontWeight.bold),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      textStyle: TextStyle(fontSize: 18),
      backgroundColor: primaryColor,
      foregroundColor: surfaceColorDark,
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
    ),
  ),
  textButtonTheme: TextButtonThemeData(
    style: TextButton.styleFrom(
      foregroundColor: primaryColor,
    ),
  ),
  outlinedButtonTheme: OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      foregroundColor: primaryColor,
      side: BorderSide(color: primaryColor),
    ),
  ),
  cardTheme: CardTheme(
    color: surfaceColorDark,
    shadowColor: Colors.black54,
    elevation: 4,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
  ),
  inputDecorationTheme: InputDecorationTheme(
    labelStyle: TextStyle(color: textPrimaryColorDark),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(color: textSecondaryColorDark),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: primaryColor, width: 2),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide(
        color: Color(0xFF757575),
      ),
    ),
  ),
  dividerColor: Colors.grey.shade700,
  snackBarTheme: SnackBarThemeData(
    backgroundColor: primaryColor,
    contentTextStyle: TextStyle(color: Colors.white),
  ),
  checkboxTheme: CheckboxThemeData(
    fillColor: MaterialStateProperty.all(primaryColor),
  ),
  switchTheme: SwitchThemeData(
    thumbColor: MaterialStateProperty.all(primaryColor),
    trackColor: MaterialStateProperty.all(primaryColor.withOpacity(0.5)),
  ),
);
