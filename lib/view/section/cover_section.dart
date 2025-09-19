import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:davidngwebsite/app/app_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

import '../../app/app_colors.dart';
import '../../app/app_dimens.dart';

class CoverSection extends StatelessWidget {
  const CoverSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: MediaQuery.of(context).size.height * 0.1),
        Text(
          "Hello! I'm",
          style: DNTextStyles.h3.copyWith(color: AppColors.white),
        ),
        kGapTiny,
        Text(
          "David Ng",
          style: DNTextStyles.display.copyWith(color: AppColors.white),
        ),
        kGapTiny,
        DefaultTextStyle(
          style: DNTextStyles.m2.copyWith(
            color: AppColors.white.withAlpha(128),
          ),
          child: AnimatedTextKit(
            animatedTexts: [
              TypewriterAnimatedText('A Front-end Developer', speed: 60.ms),
              TypewriterAnimatedText('A Flutter App Developer', speed: 60.ms),
              TypewriterAnimatedText('A Native iOS Developer', speed: 60.ms),
              TypewriterAnimatedText('A tech nerd and tech geek', speed: 60.ms),
            ],
            repeatForever: true,
            pause: 3000.ms,
            onTap: () {
              print("Tap Event");
            },
          ),
        ),
      ],
    );
  }
}
