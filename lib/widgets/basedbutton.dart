// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:skin_skan_v1/core/resources/colors.dart';
import 'package:skin_skan_v1/core/theme/theme_helper.dart';

Widget BaseButton({required String text, required VoidCallback onpressed}) {
  return GestureDetector(
    onTap: onpressed,
    child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Mycolors.bottuncolor),
        height: 50,
        width: 250,
        child: Center(
          child: Text(
            text,
            style: theme.textTheme.headlineSmall!,
          ),
        )),
  );
}
