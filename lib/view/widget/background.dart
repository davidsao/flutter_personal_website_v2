import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';

import '../../app/app_dimens.dart';

class BackgroundWidget extends StatelessWidget {
  const BackgroundWidget({required this.offset, super.key});

  final double offset;

  @override
  Widget build(BuildContext context) {
    final size = [
      AppDimens.responsiveSize,
      MediaQuery.of(context).size.width,
      MediaQuery.of(context).size.height,
    ].reduce(min);

    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(color: Colors.blue.shade900),
      clipBehavior: Clip.hardEdge,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          _ballDecoration(
            size: size * 1.5,
            transform: Offset(-size * 0.75, 0),
            position: (0.0, size * 0.5),
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(128, 160, 203, 255),
                Color.fromARGB(64, 216, 222, 255),
              ],
              stops: [0.4, 0.8],
            ),
          ),
          _ballDecoration(
            size: size * 1.5,
            transform: Offset(
              MediaQuery.of(context).size.width - size * 0.75,
              0.0,
            ),
            position: (0.0, -size * 0.75),
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(64, 225, 213, 255),
                Color.fromARGB(128, 160, 203, 255),
              ],
              stops: [0.2, 0.6],
            ),
          ),
          _blurFilter(
            blur: size / 15,
            size: Size(
              MediaQuery.of(context).size.width,
              MediaQuery.of(context).size.height,
            ),
          ),
        ],
      ),
    );
  }

  Widget _ballDecoration({
    required LinearGradient gradient,
    required Offset transform,
    required (double, double) position,
    required double size,
  }) {
    return Positioned(
      left: position.$1,
      top: position.$2,
      child: Transform.translate(
        offset: transform,
        child: Container(
          width: size,
          height: size,
          decoration: BoxDecoration(shape: BoxShape.circle, gradient: gradient),
        ),
      ),
    );
  }

  Widget _blurFilter({required double blur, required Size size}) {
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: blur, sigmaY: blur),
      child: Container(
        width: size.width,
        height: size.height,
        color: Colors.white.withAlpha(0),
      ),
    );
  }
}
