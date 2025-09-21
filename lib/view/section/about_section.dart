import 'package:davidngwebsite/index.dart';
import 'package:flutter/material.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          'Get To Know',
          textAlign: TextAlign.center,
          style: DNTextStyles.m3.copyWith(color: AppColors.black.shade500),
        ),
        Text(
          'About Me',
          textAlign: TextAlign.center,
          style: DNTextStyles.h2.copyWith(color: AppColors.textTitle),
        ),
        kGapLarger,
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: SelectableText(
                'I have been working as a software developer for over 6 years. '
                'I mainly developed iOS application using SwiftUI, and websites using WordPress and React. '
                'I have also developed backend using Node.js and Python.'
                '\n\n'
                'Teaching software development is also my side business. '
                'I have been holding offline and online courses about SwiftUI and iOS app development '
                'in a university in Hong Kong. Feel free to contact me for any teaching collaboration.',
                style: DNTextStyles.b1.semiBold.copyWith(
                  color: AppColors.black.shade300,
                ),
              ),
            ),
            kGapTiny,
            Expanded(
              child: Column(
                children: [
                  Row(
                    children: AppStrings.aboutItems.map((e) {
                      return aboutItem(e.icon, e.title, e.content);
                    }).toList(),
                  ),
                  kGapLarge,
                  Padding(
                    padding: const EdgeInsets.all(AppDimens.paddingTiny),
                    child: SelectableText(
                      AppStrings.aboutText,
                      style: DNTextStyles.b1.copyWith(
                        color: AppColors.black.shade400,
                        fontWeight: FontWeight.w300,
                        letterSpacing: 0.0,
                        height: 1.8,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget aboutItem(IconData icon, String title, String detail) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: AppDimens.paddingText),
        child: DNCard(
          child: SizedBox(
            height: 120,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                kGapSmaller,
                Icon(
                  icon,
                  color: AppColors.primaryColor,
                  size: AppDimens.iconSmall,
                ),
                kGapSmall,
                Text(
                  title,
                  style: DNTextStyles.b2.semiBold.copyWith(
                    color: AppColors.white,
                  ),
                ),
                kGapText,
                Text(
                  detail,
                  style: DNTextStyles.b4.copyWith(
                    color: AppColors.black.shade200,
                  ),
                ),
                kGapSmaller,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
