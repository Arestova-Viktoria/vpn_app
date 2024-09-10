import 'package:flutter/material.dart';
import 'package:vpn_test/presentation/application_theme.dart';
import 'package:vpn_test/presentation/onboarding_screen.dart';

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Vpn App',
      theme: ApplicationTheme.lightTheme,
      home: const OnboardingScreen(),
    );
  }
}
