import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:vpn_test/gen/fonts.gen.dart';
import 'package:vpn_test/presentation/onboarding_screen_button.dart';
import 'package:vpn_test/presentation/widgets/progress_bar.dart';
import 'package:vpn_test/presentation/widgets/tile_widget.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  List<String> emojis = [
    '🫣',
    '💬',
    '🔐',
    '🌐',
  ];

  List<String> titles = [
    'Hide Browsing History',
    'Secure Digital Conversations',
    'Encrypt Online Data',
    'Mark IP Address',
  ];

  final _pageCount = 3;
  final _activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 16, 16, 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                children: [
                  ...List.generate(
                    _pageCount,
                    (index) => Expanded(
                      child: Padding(
                        padding: index < _pageCount - 1
                            ? const EdgeInsets.only(right: 5)
                            : EdgeInsets.zero,
                        child: ProgressBar(
                          isActive: _activeIndex == index,
                        ),
                      ),
                    ),
                  )
                ],
              ),
              const Gap(40),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 32),
                child: Text(
                  'What’s your purpose\nof using VPN?',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: FontFamily.sFProDisplay,
                    fontSize: 27.0,
                    fontWeight: FontWeight.w700,
                    height: 33 / 27,
                    letterSpacing: 0.29,
                  ),
                ),
              ),
              const Gap(20),
              Expanded(
                child: ListView.separated(
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: titles.length,
                  separatorBuilder: (context, index) => const Gap(16),
                  itemBuilder: (context, index) => TileWidget(
                    emoji: emojis[index],
                    title: titles[index],
                  ),
                ),
              ),
              const OnboardingScreenButton(),
            ],
          ),
        ),
      ),
    );
  }
}
