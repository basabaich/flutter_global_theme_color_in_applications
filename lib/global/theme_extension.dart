//
//THSI IS A CUSTOM COLOR DEFINITION FILE FOR FLUTTER APPLICATION
//
//ThemeExtension: You created a custom theme extension to hold additional color
// fields like custom and onCustom.
//extensions in ThemeData: This allows you to add custom extensions to your
//theme.
//extension<CustomColors>(): This is used to access the custom colors inside
//the widget's build method.
//
//

import 'package:flutter/material.dart';

class CustomColors extends ThemeExtension<CustomColors> {
  final Color? custom;
  final Color? onCustom;

  CustomColors({
    this.custom,
    this.onCustom,
  });

  @override
  CustomColors copyWith({Color? custom, Color? onCustom}) {
    return CustomColors(
      custom: custom ?? this.custom,
      onCustom: onCustom ?? this.onCustom,
    );
  }

  @override
  CustomColors lerp(ThemeExtension<CustomColors>? other, double t) {
    if (other is! CustomColors) return this;
    return CustomColors(
      custom: Color.lerp(custom, other.custom, t),
      onCustom: Color.lerp(onCustom, other.onCustom, t),
    );
  }
}
