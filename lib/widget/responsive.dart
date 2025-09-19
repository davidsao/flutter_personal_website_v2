import 'package:flutter/material.dart';

import '../app/app_dimens.dart';

EdgeInsets responsivePadding(
  BuildContext context, {
  double defaultPadding = AppDimens.paddingMedium,
}) {
  if (MediaQuery.of(context).size.width > AppDimens.responsiveSize) {
    return EdgeInsets.symmetric(
      horizontal:
          (MediaQuery.of(context).size.width - AppDimens.responsiveSize) / 2 +
          defaultPadding,
    );
  }
  return EdgeInsets.symmetric(horizontal: defaultPadding);
}
