import 'package:flutter/material.dart';
import 'package:vpn_test/presentation/application_theme.dart';

class ProgressBar extends StatelessWidget {
  final bool isActive;

  const ProgressBar({
    super.key,
    this.isActive = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 4,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(7.0),
        gradient: isActive
            ? const LinearGradient(
                colors: [
                  ApplicationTheme.firstThemeColor,
                  ApplicationTheme.secondThemeColor,
                ],
              )
            : null,
        color: !isActive ? ApplicationTheme.secondaryColor : null,
      ),
    );
  }
}
