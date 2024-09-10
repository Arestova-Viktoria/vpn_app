import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:vpn_test/gen/fonts.gen.dart';
import 'package:vpn_test/presentation/application_theme.dart';
import 'package:vpn_test/presentation/widgets/radio_widget.dart';

class TileWidget extends StatelessWidget {
  final String emoji;
  final String title;

  const TileWidget({
    super.key,
    required this.emoji,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 12,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: ApplicationTheme.secondaryColor),
      ),
      child: Row(
        children: [
          SizedBox.square(
            dimension: 32,
            child: Center(
              child: Text(
                emoji,
                style: const TextStyle(
                  fontFamily: FontFamily.jost,
                  fontSize: 22,
                  height: 28 / 22,
                ),
              ),
            ),
          ),
          const Gap(4),
          Text(
            title,
          ),
          const Spacer(),
          const RadioWidget(),
        ],
      ),
    );
  }
}
