import 'package:flutter/material.dart';
import 'package:login_app_with_flutter_and_firebase/src/features/authentication/screens/splash_screen/splash_screen.dart';
import 'package:login_app_with_flutter_and_firebase/src/utils/theme/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Power Fit',
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
      themeMode: ThemeMode.system,
      home: CustomSplashScreen(),
    );
  }
}
