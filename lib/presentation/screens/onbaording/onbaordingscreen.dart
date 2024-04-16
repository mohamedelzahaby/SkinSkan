import 'package:flutter/material.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:skin_skan_v1/presentation/screens/auth/loginscreen.dart';

import 'package:skin_skan_v1/widgets/basedbutton.dart';

// import '../../../core/theme/custom_text_style.dart';
import '../../../core/resources/image_manager.dart';
import '../../../core/theme/theme_helper.dart';

class OnboardingoneScreen extends StatelessWidget {
  const OnboardingoneScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            height: 90,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Welcome to",
                style: theme.textTheme.titleLarge,
              ),
              const Text(
                " ",
              ),
              GradientText(
                "SKINSKAN !",
                style: theme.textTheme.titleLarge,
                colors: const <Color>[
                  Color(0xFF0688C0),
                  Color(0xFF00AA99),
                  Color(0xFF75C163),
                ],
              )
              // Text(
              //   "SKINSKAN !",
              //   style: theme.textTheme.titleLarge,
              // ),
            ],
          ),
          Text(
            "Scan, Discover,Care:Unveil",
            style: theme.textTheme.titleLarge,
          ),
          Text(
            "Your Skin's Secrets.",
            style: theme.textTheme.titleLarge,
          ),
          const Spacer(),
          Image.asset(
            ImageAssets.onbaordinglogo,
          ),
          const Spacer(),
          BaseButton(text: "Get Started !", onpressed: () {Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Loginscreen()
                    ));}),
          const SizedBox(
            height: 50,
          )
        ],
      )),
    );
  }
}
