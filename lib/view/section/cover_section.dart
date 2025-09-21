import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:davidngwebsite/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

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
            animatedTexts: AppStrings.coverText.map((text) {
              return TypewriterAnimatedText(text, speed: 60.ms);
            }).toList(),
            repeatForever: true,
            pause: 3000.ms,
          ),
        ),
      ],
    );
  }
}
