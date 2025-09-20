import 'dart:ui';

import 'package:flutter/material.dart';

import '../app/app_colors.dart';
import '../app/app_dimens.dart';

class DNCard extends StatelessWidget {
  final Widget child;
  final bool loading;
  final double? radius;
  final bool hasShadow;
  final double blurSigma;
  final Color? backgroundColor;
  final Function()? onPressed;
  final BoxShadow? shadow;
  final Color? splashColor;
  final EdgeInsets? padding;

  const DNCard({
    super.key,
    required this.child,
    this.radius,
    this.onPressed,
    this.backgroundColor,
    this.hasShadow = true,
    this.shadow,
    this.loading = false,
    this.blurSigma = 0,
    this.splashColor,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(radius ?? AppDimens.radiusMedium),
        ),
        color: backgroundColor ?? AppColors.cardBackground.withAlpha(224),
        boxShadow: [
          if (hasShadow && !loading)
            shadow ??
                BoxShadow(
                  color: AppColors.black.withAlpha(48),
                  blurRadius: 25,
                  offset: const Offset(0, 15), // changes position of shadow
                ),
        ],
      ),
      margin: EdgeInsets.zero,
      padding: padding ?? EdgeInsets.all(AppDimens.paddingMedium),
      child: ClipRect(
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: blurSigma, sigmaY: blurSigma),
          child: Card(
            elevation: 0,
            color: Colors.transparent,
            margin: EdgeInsets.zero,
            child: (onPressed != null && !loading)
                ? InkWell(
                    onTap: () => onPressed?.call(),
                    splashColor: splashColor ?? AppColors.black.shade100,
                    highlightColor: splashColor ?? AppColors.black.shade100,
                    child: Ink(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(radius ?? 0),
                        ),
                        color: Colors.transparent,
                      ),
                      child: child,
                    ),
                  )
                : child,
          ),
        ),
      ),
    );
  }
}
