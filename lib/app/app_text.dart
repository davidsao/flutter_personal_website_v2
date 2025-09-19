import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_colors.dart';

class DNTextStyles {
  static final _ibmPlexSans = GoogleFonts.ibmPlexSans(
    height: 1.28,
    fontWeight: FontWeight.w600,
    color: AppColors.textPrimary,
  );
  static final _jetBrainMono = GoogleFonts.jetBrainsMono(
    height: 1.5,
    fontWeight: FontWeight.w500,
    color: AppColors.textPrimary,
  );
  static final _pontanoSans = GoogleFonts.pontanoSans(
    height: 1.3,
    fontWeight: FontWeight.w400,
    color: AppColors.textPrimary,
    letterSpacing: 0.1,
  );

  static TextStyle get display {
    return _ibmPlexSans.copyWith(fontSize: 40, fontWeight: FontWeight.w700);
  }

  static TextStyle get h1 {
    return _ibmPlexSans.copyWith(fontSize: 32);
  }

  static TextStyle get h2 {
    return _ibmPlexSans.copyWith(fontSize: 28);
  }

  static TextStyle get h3 {
    return _ibmPlexSans.copyWith(fontSize: 24);
  }

  static TextStyle get h4 {
    return _ibmPlexSans.copyWith(fontSize: 17);
  }

  static TextStyle get m1 {
    return _jetBrainMono.copyWith(fontSize: 24);
  }

  static TextStyle get m2 {
    return _jetBrainMono.copyWith(fontSize: 18);
  }

  static TextStyle get m3 {
    return _jetBrainMono.copyWith(fontSize: 15);
  }

  static TextStyle get cta {
    return _ibmPlexSans.copyWith(
      fontSize: 16,
      fontWeight: FontWeight.w700,
      color: AppColors.white,
    );
  }

  static TextStyle get b1 {
    return _pontanoSans.copyWith(fontSize: 16);
  }

  static TextStyle get b2 {
    return _pontanoSans.copyWith(fontSize: 14);
  }

  static TextStyle get b3 {
    return _pontanoSans.copyWith(fontSize: 12);
  }
}

extension TextStyleExtensions on TextStyle {
  TextStyle get bold => copyWith(fontWeight: FontWeight.bold);
  TextStyle get semiBold => copyWith(fontWeight: FontWeight.w600);
  TextStyle get regular => copyWith(fontWeight: FontWeight.w500);
  TextStyle get light => copyWith(fontWeight: FontWeight.w300);
  TextStyle get italic => copyWith(fontStyle: FontStyle.italic);
}
