import 'dart:ui';

import 'package:flutter/material.dart';

import 'gradient_box_border.dart';
import 'hollow_shadow_painter.dart';

class GlassContainer extends StatelessWidget {
  final double opacity;

  final Widget? child;
  final double blur;
  final double shadowStrength;
  final Color shadowColor;
  final BorderRadius? borderRadius;

  final double? height;
  final double? width;
  final Color? color;
  final BoxBorder? border;

  final BoxShape shape;

  const GlassContainer({
    super.key,
    this.opacity = 0.05,
    this.child,
    this.blur = 5,
    this.border,
    this.height,
    this.width,
    this.borderRadius,
    this.shadowStrength = 5,
    this.shadowColor = const Color(0x3D333333),
    this.color = Colors.white,
    this.shape = BoxShape.rectangle,
  });

  @override
  Widget build(BuildContext context) {
    final _color =
        color ?? Colors.grey.shade100.withAlpha((opacity * 255).toInt());
    final _borderRadius = borderRadius ?? BorderRadius.circular(24);
    final _border =
        border ??
        GradientBoxBorder(
          gradient: LinearGradient(
            colors: [Colors.white.withAlpha(100), Colors.black.withAlpha(25)],
          ),
          width: 1,
        );

    Widget _child = DecoratedBox(
      decoration: BoxDecoration(
        shape: shape,
        color: _color,
        borderRadius: shape == BoxShape.circle ? null : _borderRadius,
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Colors.white.withAlpha(60), Colors.white.withAlpha(100)],
        ),
      ),
      child: child,
    );

    if (blur > 0) {
      _child = ClipRRect(
        borderRadius: _borderRadius,
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: blur, sigmaY: blur),
          child: _child,
        ),
      );
    }

    return CustomPaint(
      painter: HollowShadowPainter(
        shape: shape,
        shadowStrength: shadowStrength,
        shadowColor: shadowColor,
        borderRadius: _borderRadius,
      ),
      child: Container(
        width: width,
        height: height,
        foregroundDecoration: BoxDecoration(
          borderRadius: _borderRadius,
          border: _border,
        ),
        child: _child,
      ),
    );
  }
}
