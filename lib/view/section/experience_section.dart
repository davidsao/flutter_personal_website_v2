import 'package:davidngwebsite/app/app_text.dart';
import 'package:davidngwebsite/widget/card_widget.dart';
import 'package:flutter/material.dart';

import '../../app/app_colors.dart';
import '../../app/app_dimens.dart';

class ExperienceSection extends StatelessWidget {
  const ExperienceSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          'What Skills I Have',
          textAlign: TextAlign.center,
          style: DNTextStyles.m3.copyWith(color: AppColors.black.shade500),
        ),
        kGapTiny,
        Text(
          'My Experience',
          textAlign: TextAlign.center,
          style: DNTextStyles.h2.copyWith(color: AppColors.textTitle),
        ),
        kGapLarger,
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [frontendCard, kGapSmall, backendCard],
        ),
      ],
    );
  }

  Widget get frontendCard {
    return Expanded(
      child: DNCard(
        padding: const EdgeInsets.symmetric(
          horizontal: AppDimens.paddingLarge,
          vertical: AppDimens.paddingLarger,
        ),
        child: Column(
          children: [
            Text(
              'Frontend Development',
              textAlign: TextAlign.center,
              style: DNTextStyles.h3.bold.copyWith(color: AppColors.textTitle),
            ),
            kGapMedium,
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      skillItem('HTML', 'Experienced'),
                      skillItem('CSS', 'Intermediate'),
                      skillItem('JavaScript', 'Experienced'),
                      skillItem('TypeScript', 'Experienced'),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      skillItem('Flutter', 'Experienced'),
                      skillItem('React', 'Intermediate'),
                      skillItem('Vue', 'Beginner'),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget get backendCard {
    return Expanded(
      child: DNCard(
        radius: AppDimens.radiusMedium,
        backgroundColor: AppColors.cardBackground.withAlpha(224),
        padding: const EdgeInsets.symmetric(
          horizontal: AppDimens.paddingLarge,
          vertical: AppDimens.paddingLarger,
        ),
        child: Column(
          children: [
            Text(
              'Backend Development',
              textAlign: TextAlign.center,
              style: DNTextStyles.h3.bold.copyWith(color: AppColors.textTitle),
            ),
            kGapMedium,
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      skillItem('HTML', 'Experienced'),
                      skillItem('CSS', 'Intermediate'),
                      skillItem('JavaScript', 'Experienced'),
                      skillItem('TypeScript', 'Experienced'),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      skillItem('Flutter', 'Experienced'),
                      skillItem('React', 'Intermediate'),
                      skillItem('Vue', 'Beginner'),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget skillItem(String skill, String level) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: AppDimens.marginTiny),
      child: Row(
        children: [
          Icon(
            Icons.verified,
            color: Colors.green.shade300,
            size: AppDimens.iconMedium,
          ),
          kGapTiny,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                skill,
                style: DNTextStyles.b2.bold.copyWith(color: AppColors.white),
              ),
              Text(
                level,
                style: DNTextStyles.b3.semiBold.copyWith(
                  color: AppColors.textPrimary,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
