import 'package:davidngwebsite/app/app_dimens.dart';
import 'package:davidngwebsite/view/section/cover_section.dart';
import 'package:davidngwebsite/view/widget/background.dart';
import 'package:davidngwebsite/view/widget/bottom_nav.dart';
import 'package:flutter/material.dart';

import '../model/enums/nav_enums.dart';

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
      backgroundColor: Colors.blue.shade900,
      body: Stack(
        alignment: Alignment.center,
        children: [
          BackgroundWidget(offset: 0.0),
          SingleChildScrollView(
            child: Column(children: [const CoverSection()]),
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
