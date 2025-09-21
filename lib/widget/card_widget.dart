import 'dart:ui';

import 'package:dartx/dartx.dart';
import 'package:davidngwebsite/index.dart';
import 'package:flutter/material.dart';

class DNCard extends StatefulWidget {
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
    this.hasShadow = false,
    this.shadow,
    this.loading = false,
    this.blurSigma = 0,
    this.splashColor,
    this.padding,
  });

  @override
  State<DNCard> createState() => _DNCardState();
}

class _DNCardState extends State<DNCard> {
  bool isHovering = false;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: 200.milliseconds,
      curve: Curves.easeOut,
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(widget.radius ?? AppDimens.radiusMedium),
        ),
        color:
            widget.backgroundColor ?? AppColors.cardBackground.withAlpha(224),
        boxShadow: [
          if (widget.hasShadow && !widget.loading)
            widget.shadow ??
                BoxShadow(
                  color: AppColors.black.withAlpha(48),
                  blurRadius: 24,
                  offset: const Offset(0, 15), // changes position of shadow
                )
          else if (isHovering)
            BoxShadow(
              color: AppColors.hoverCardShadow.withAlpha(184),
              blurRadius: 12,
              offset: const Offset(0, 0), // changes position of shadow
            )
          else
            BoxShadow(
              color: AppColors.black.withAlpha(48),
              blurRadius: 24,
              offset: const Offset(0, 15), // changes position of shadow
            ),
        ],
      ),
      margin: EdgeInsets.zero,
      padding: widget.padding ?? EdgeInsets.all(AppDimens.paddingMedium),
      child: ClipRect(
        child: BackdropFilter(
          filter: ImageFilter.blur(
            sigmaX: widget.blurSigma,
            sigmaY: widget.blurSigma,
          ),
          child: InkWell(
            onTap: () => widget.onPressed?.call(),
            onHover: (hovering) {
              setState(() {
                isHovering = hovering;
              });
            },
            splashColor: widget.splashColor ?? AppColors.black.shade100,
            highlightColor: widget.splashColor ?? AppColors.black.shade100,
            child: Ink(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(widget.radius ?? 0),
                ),
                color: Colors.transparent,
              ),
              child: widget.child,
            ),
          ),
        ),
      ),
    );
  }
}
