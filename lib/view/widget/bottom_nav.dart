import 'dart:math';

import 'package:davidngwebsite/model/enums/nav_enums.dart';
import 'package:flutter/material.dart';

import '../../app/app_colors.dart';
import '../../app/app_dimens.dart';
import '../../widget/glass_container.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({
    required this.currentSection,
    required this.onTap,
    super.key,
  });

  final NavEnums currentSection;
  final Function(NavEnums) onTap;

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  @override
  Widget build(BuildContext context) {
    final barWidth =
        min(MediaQuery.of(context).size.width, 400) -
        AppDimens.marginMedium * 2;
    final itemWidth =
        (barWidth - AppDimens.marginSmall * 2) / NavEnums.values.length;

    return GlassContainer(
      height: 64,
      width:
          min(MediaQuery.of(context).size.width, 400) -
          AppDimens.marginMedium * 2,
      borderRadius: BorderRadius.all(Radius.circular(32)),
      child: Stack(
        alignment: Alignment.center,
        children: [
          AnimatedPositioned(
            duration: const Duration(seconds: 1),
            top: 4,
            curve: Curves.elasticOut,
            left: indicatorOffset(
              index: widget.currentSection.index,
              itemWidth: itemWidth,
            ),
            child: GlassContainer(
              color: AppColors.black.withAlpha(100),
              width: itemWidth,
              height: 56,
              borderRadius: BorderRadius.all(Radius.circular(28)),
            ),
          ),
          Row(
            children: [
              kGapSmall,
              ...NavEnums.values.map((e) {
                return Expanded(
                  child: InkWell(
                    onTap: () => widget.onTap(e),
                    child: Icon(
                      e.icon(selected: e == widget.currentSection),
                      color: AppColors.white,
                    ),
                  ),
                );
              }),
              kGapSmall,
            ],
          ),
        ],
      ),
    );
  }

  double indicatorOffset({required int index, required double itemWidth}) {
    return index * itemWidth + AppDimens.marginSmall;
  }
}
