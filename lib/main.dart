// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:skin_skan_v1/presentation/screens/auth/loginscreen.dart';
import 'package:skin_skan_v1/presentation/screens/auth/signup.dart';
import 'package:skin_skan_v1/presentation/screens/home/homescreen.dart';
import 'package:skin_skan_v1/presentation/screens/more/morescreen.dart';
import 'package:skin_skan_v1/presentation/screens/onbaording/onbaordingscreen.dart';
import 'package:skin_skan_v1/presentation/screens/select_body_part/select_body_part.dart';
import 'package:skin_skan_v1/presentation/screens/splash/splashscreen.dart';
import 'package:skin_skan_v1/widgets/FBA_navbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      // ignore: prefer_const_constructors
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Skin skan',
        home: Signupscreen(),
      );
    });
  }
}
