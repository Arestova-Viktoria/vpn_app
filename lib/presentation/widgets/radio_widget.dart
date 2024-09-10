import 'package:flutter/material.dart';
import 'package:vpn_test/presentation/application_theme.dart';

class RadioWidget extends StatelessWidget {
  final bool isSelected;
  const RadioWidget({
    super.key,
    this.isSelected = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 22,
      width: 22,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: ApplicationTheme.secondaryColor),
      ),
      child: isSelected
          ? const Icon(
              Icons.done,
              size: 18,
            )
          : const SizedBox(),
    );
  }
}
