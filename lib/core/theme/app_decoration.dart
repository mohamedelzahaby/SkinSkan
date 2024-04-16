import 'package:flutter/material.dart';

import 'theme_helper.dart';

class AppDecoration {
  // Fill decorations
  static BoxDecoration get fillOnPrimary => BoxDecoration(
        color: theme.colorScheme.onPrimary,
      );
// Gradient decorations
  static BoxDecoration get gradientOnPrimaryContainerToGreen => BoxDecoration(
        color: theme.colorScheme.onPrimary,
        gradient: LinearGradient(
          begin: const Alignment(0.5, 0),
          end: const Alignment(0.5, 1),
          colors: [
            theme.colorScheme.onPrimaryContainer,
            theme.colorScheme.primary,
            appTheme.green400
          ],
        ),
      );




      
}

class BorderRadiusStyle {
  // Custom borders
  static BorderRadius get customBorderTL30 => const BorderRadius.vertical(
        top: Radius.circular(30),
      );
}
