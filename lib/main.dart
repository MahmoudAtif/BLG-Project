import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:project/Modules/forget_password.dart';
import 'package:project/Modules/history.dart';
import 'package:project/Modules/resetpassword.dart';
import 'Modules/home_screen/home_screen.dart';
import 'Modules/profile.dart';
import 'Modules/report_violation/report_violation.dart';
import 'Modules/sign_in/sign_in.dart';
import 'Modules/sign_up/sign_up.dart';
import 'Modules/start_screen/start_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),

      // translations: Translation(),
      // locale: const Locale("English"),
      routes: {
        "signup": (context) => const Register(),
        "signin": (context) => const LoginScreen(),
        "home": (context) => const HomeScreen(),
        "report": (context) => const Report(),
        "profile": (context) => Profile(),
        "forgetpassword": (context) => ForgetPassword(),
        "reset": (context) => ResetPassword(),
        "history": (context) => History(),
      },
    );
  }
}
