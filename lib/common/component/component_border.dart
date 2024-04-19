import 'package:flutter/material.dart';
import 'package:widget_book/common/component/component.dart';

class ComponentBorder {
  BoxBorder border({Color? color}) =>
      Border.all(color: color ?? Component.color.borderColor, width: 1);

  OutlineInputBorder borderTextField = OutlineInputBorder(
    borderRadius: Component.radius.radius6,
    borderSide: BorderSide(color: Component.color.whiteColor, width: 0.5),
  );

  OutlineInputBorder focusedBorderTextField = OutlineInputBorder(
    borderRadius: Component.radius.radius6,
    borderSide: BorderSide(color: Component.color.blue_02, width: 0.5),
  );

  OutlineInputBorder borderTextFieldRadiusZero = OutlineInputBorder(
    borderRadius: BorderRadius.zero,
    borderSide: BorderSide(color: Component.color.whiteColor, width: 0.5),
  );

  OutlineInputBorder focusedBorderTextFieldRadiusZero = OutlineInputBorder(
    borderRadius: BorderRadius.zero,
    borderSide: BorderSide(color: Component.color.whiteColor, width: 0.5),
  );
}
