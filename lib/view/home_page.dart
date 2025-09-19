import 'dart:math';

import 'package:davidngwebsite/app/app_dimens.dart';
import 'package:davidngwebsite/view/section/cover_section.dart';
import 'package:davidngwebsite/view/widget/background.dart';
import 'package:davidngwebsite/widget/glass_container.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
              GlassContainer(
                height: 64,
                width:
                    min(MediaQuery.of(context).size.width, 400) -
                    AppDimens.marginMedium * 2,
                borderRadius: BorderRadius.all(Radius.circular(32)),
              ),
              kGapMedium,
            ],
          ),
        ],
      ),
    );
  }
}
