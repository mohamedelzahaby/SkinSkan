// ignore_for_file: camel_case_types

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:skin_skan_v1/presentation/screens/auth/loginscreen.dart';
// import 'package:skin_skan_v1/presentation/screens/home/homescreen.dart';
import 'package:skin_skan_v1/widgets/FBA_navbar.dart';

class auth extends StatelessWidget {
  const auth({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: ((context, snapshot) {
          if (snapshot.hasData) {
            return Navbar();
          } else {
            return const Loginscreen();
          }
        }),
      ),
    );
  }
}
