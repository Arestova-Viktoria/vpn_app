import 'package:flutter/material.dart';
import 'package:vpn_test/gen/fonts.gen.dart';
import 'package:vpn_test/presentation/application_theme.dart';

class OnboardingScreenButton extends StatelessWidget {
  const OnboardingScreenButton({super.key});

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        gradient: const LinearGradient(
          colors: [
            ApplicationTheme.firstThemeColor,
            ApplicationTheme.secondThemeColor
          ],
        ),
      ),
      child: TextButton(
        style: TextButton.styleFrom(
          elevation: 0,
          backgroundColor: Colors.transparent,
          foregroundColor: Colors.white,
          padding: const EdgeInsets.symmetric(
            vertical: 16,
            horizontal: 8,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18),
          ),
        ),
        onPressed: () {},
        child: const Text(
          'Continue',
          style: TextStyle(
            fontFamily: FontFamily.jost,
            fontWeight: FontWeight.w600,
            fontSize: 17,
            height: 22 / 17,
            letterSpacing: -0.4,
          ),
        ),
      ),
    );
  }
}
