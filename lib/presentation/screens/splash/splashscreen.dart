// ignore_for_file: camel_case_types, depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:page_transition/page_transition.dart';
import 'package:skin_skan_v1/core/resources/image_manager.dart';
import 'package:skin_skan_v1/presentation/screens/onbaording/onbaordingscreen.dart';

class splashscreen extends StatelessWidget {
  const splashscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: const BoxDecoration(
        // image: DecorationImage(
        //   image: AssetImage(ImageAssets.splash),
        // ),
        gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xff0688C0),
              Color(0xff00AA99),
              Color(0xff75C163),
            ]),
      ),
      child: AnimatedSplashScreen(
        duration: 8000,
        splash: ImageAssets.logo,
        splashIconSize: 200,
        nextScreen: const OnboardingoneScreen(),
        splashTransition: SplashTransition.fadeTransition,
        animationDuration: Durations.extralong4,
        pageTransitionType: PageTransitionType.leftToRightWithFade,
      ),
    ));
  }
}
