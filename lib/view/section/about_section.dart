import 'package:flutter/material.dart';

import '../../app/app_colors.dart';
import '../../app/app_dimens.dart';
import '../../app/app_text.dart';
import '../../widget/card_widget.dart';

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
        kGapTiny,
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
                    children: [
                      aboutItem(
                        Icons.work_history_outlined,
                        'Experience',
                        '10+ Years',
                      ),
                      aboutItem(
                        Icons.people_alt_outlined,
                        'Clients',
                        '50+ Worldwide',
                      ),
                      aboutItem(
                        Icons.fact_check_outlined,
                        'Projects',
                        '25+ Completed',
                      ),
                    ],
                  ),
                  kGapLarge,
                  SelectableText(
                    'I have been working as a software developer for over 10 years. '
                    'I mainly developed Flutter applications (Android, iOS, Web Apps), '
                    'iOS application using SwiftUI, and websites using WordPress and React. '
                    'I have also developed backend using Node.js and Python.'
                    '\n\n'
                    'Teaching software development is also my side business.'
                    'I had held offline and online courses about SwiftUI and iOS app development '
                    'in a university in Hong Kong. Feel free to contact me for any teaching collaboration.',
                    style: DNTextStyles.b1.copyWith(
                      color: AppColors.black.shade300,
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
          child: Column(
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
                style: DNTextStyles.b3.semiBold.copyWith(
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
    );
  }
}
