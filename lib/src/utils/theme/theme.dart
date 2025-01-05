import 'package:flutter/material.dart';
import 'package:login_app_with_flutter_and_firebase/src/utils/theme/widget_themes/text_theme.dart';

class TAppTheme {
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    colorScheme: ColorScheme(
      brightness: Brightness.light,
      primary: Colors.blue, // Primary color for light theme
      onPrimary: Colors.white, // Text/icon color on primary
      secondary: Colors.green, // Secondary color
      onSecondary: Colors.white, // Text/icon color on secondary
      error: Colors.red, // Error color
      onError: Colors.white, // Text/icon color on error
      background: Colors.white, // Background color
      onBackground: Colors.black, // Text/icon color on background
      surface: Colors.grey.shade100, // Surface color (e.g., cards)
      onSurface: Colors.black, // Text/icon color on surface
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.blue,
      foregroundColor: Colors.white,
    ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: Colors.blue,
    ),
    textTheme: TTextTheme.lightTextTheme,
  );

  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    colorScheme: ColorScheme(
      brightness: Brightness.dark,
      primary: Colors.yellow, // Primary color for dark theme
      onPrimary: Colors.black, // Text/icon color on primary
      secondary: Colors.orange, // Secondary color
      onSecondary: Colors.black, // Text/icon color on secondary
      error: Colors.redAccent, // Error color
      onError: Colors.black, // Text/icon color on error
      background: Colors.black, // Background color
      onBackground: Colors.white, // Text/icon color on background
      surface: Colors.grey.shade800, // Surface color (e.g., cards)
      onSurface: Colors.white, // Text/icon color on surface
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.yellow,
      foregroundColor: Colors.black,
    ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: Colors.yellow,
    ),
    textTheme: TTextTheme.darkTextTheme,
  );
}
