import 'dart:math';

import 'package:davidngwebsite/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

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
              color: AppColors.primaryColor,
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
                    child:
                        Icon(
                              e.icon(selected: e == widget.currentSection),
                              color: e == widget.currentSection
                                  ? AppColors.primaryColor
                                  : AppColors.white,
                            )
                            .animate(target: e == widget.currentSection ? 1 : 0)
                            .scale(
                              begin: Offset(1, 1),
                              end: Offset(1.25, 1.25),
                              duration: const Duration(milliseconds: 300),
                              curve: Curves.easeOutBack,
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
