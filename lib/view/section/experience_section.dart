import 'package:dartx/dartx.dart';
import 'package:davidngwebsite/index.dart';
import 'package:flutter/material.dart';

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
          children: [
            skillCard(
              title: 'Frontend Development',
              skills: AppStrings.frontEndSkills,
            ),
            kGapSmall,
            skillCard(
              title: 'Backend Development',
              skills: AppStrings.backEndSkills,
            ),
          ],
        ),
      ],
    );
  }

  Widget skillCard({
    required String title,
    required Map<String, String> skills,
  }) {
    return Expanded(
      child: DNCard(
        padding: const EdgeInsets.symmetric(
          horizontal: AppDimens.paddingLarge,
          vertical: AppDimens.paddingLarger,
        ),
        child: Column(
          children: [
            Text(
              title,
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
                    children: skills.entries.mapIndexed((index, skill) {
                      if (index % 2 == 0) {
                        return skillItem(skill.key, skill.value);
                      } else {
                        return const SizedBox.shrink();
                      }
                    }).toList(),
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: skills.entries.mapIndexed((index, skill) {
                      if (index % 2 == 1) {
                        return skillItem(skill.key, skill.value);
                      } else {
                        return const SizedBox.shrink();
                      }
                    }).toList(),
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
