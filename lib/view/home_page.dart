import 'package:davidngwebsite/index.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  NavEnums currentSection = NavEnums.home;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Stack(
        alignment: Alignment.center,
        children: [
          BackgroundWidget(offset: 0.0),
          SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            padding: responsivePadding(context),
            child: Column(
              children: [
                const CoverSection(),
                kGapSection,
                const AboutSection(),
                kGapSection,
                const ExperienceSection(),
                SizedBox(height: 168),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Spacer(),
              BottomNav(
                currentSection: currentSection,
                onTap: (section) {
                  setState(() {
                    currentSection = section;
                  });
                },
              ),
              kGapMedium,
            ],
          ),
        ],
      ),
    );
  }
}
