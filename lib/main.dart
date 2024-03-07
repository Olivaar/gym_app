import 'package:flutter/material.dart';
import 'package:gym_app/utils/app_routs.dart';
import 'package:gym_app/view/pages/login_page.dart';
import 'package:gym_app/view/pages/password_recovery_page.dart';
import 'package:gym_app/view/pages/redefine_password_page.dart';
import 'package:gym_app/view/pages/main_page.dart';
import 'package:gym_app/view/pages/about_the_app_page.dart';
import 'package:gym_app/view/pages/register_page.dart';
import 'package:gym_app/view/pages/settings_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GYM APP',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xff3a1515)),
        primaryColor: Colors.red,
        useMaterial3: true,
      ),
      home: const MainPage(),
      initialRoute: AppRouts.LOGIN_PAGE,
      routes: {
        AppRouts.LOGIN_PAGE: (context) => const LoginPage(),
        AppRouts.REGISTER_PAGE: (context) => const RegisterPage(),
        AppRouts.PASSWORD_RECOVERY_PAGE: (context) => const PasswordRecoveryPage(),
        AppRouts.REDEFINE_PASSWORD_PAGE: (context) => const RedefinePasswordPage(),
        AppRouts.MAIN_PAGE: (context) => const MainPage(),
        AppRouts.ABOUT_THE_APP_PAGE: (context) => const AboutTheAppPage(),
        AppRouts.SETTINGS_PAGE: (context) => const SettingsPage(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
