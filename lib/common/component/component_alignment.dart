import 'package:flutter/material.dart';
import 'package:widget_book/common/component/component.dart';

class ComponentAlignment {
  List<Color> gradientWhite = [
    const Color(0xFF797979),
    const Color(0xFF7D7D7D),
    const Color(0xFF8A8A8A),
    const Color(0xFF9F9F9F),
    const Color(0xFFBDBDBD),
    const Color(0xFFE3E3E3),
    const Color(0xFFFFFFFF),
    const Color(0xFFF9F9F9),
    const Color(0xFFEAEAEA),
    const Color(0xFFD1D1D1),
    const Color(0xFFC2C2C2),
    const Color(0xFFBABABA),
    const Color(0xFFA4A4A4),
    const Color(0xFF828282),
    const Color(0xFF797979),
  ];
  List<Color> gradientWhiteShort = [
    const Color(0xFF797979),
    const Color(0xFFBABABA),
    const Color(0xFFFAFAFA),
    const Color(0xFFBABABA),
    const Color(0xFF797979),
  ];
  List<double> stopsGradientShort = [
    0,
    0.25,
    0.5,
    0.75,
    1.0,
  ];
  List<double> stopsGradientWhite = [
    0.0001,
    0.0901,
    0.1801,
    0.2801,
    0.3801,
    0.48,
    0.54,
    0.61,
    0.69,
    0.78,
    0.83,
    0.87,
    0.92,
    0.98,
    1.0,
  ];

  List<Color> gradientYellow = [
    Component.color.yellow_1,
    Component.color.yellow_2,
    Component.color.yellow_3,
    Component.color.yellow_4,
    Component.color.yellow_5,
  ];

  List<double> stopsGradientYellow = [0.1889, 0.3481, 0.4796, 0.6394, 0.7816];

  List<Color> gradientGray = [
    const Color(0xFF797979).withOpacity(0.5),
    const Color(0xFF7D7D7D).withOpacity(0.5),
    const Color(0xFF8A8A8A).withOpacity(0.5),
    const Color(0xFF9F9F9F).withOpacity(0.5),
    const Color(0xFFBDBDBD).withOpacity(0.5),
    const Color(0xFFE3E3E3).withOpacity(0.5),
    const Color(0xFFF9F9F9).withOpacity(0.5),
    const Color(0xFFEAEAEA).withOpacity(0.5),
    const Color(0xFFD1D1D1).withOpacity(0.5),
    const Color(0xFFC2C2C2).withOpacity(0.5),
    const Color(0xFFBABABA).withOpacity(0.5),
    const Color(0xFFA4A4A4).withOpacity(0.5),
    const Color(0xFF828282).withOpacity(0.5),
    const Color(0xFF797979).withOpacity(0.5),
  ];

  List<double> stopsGradientGray = [
    0.0001,
    0.0901,
    0.1801,
    0.2801,
    0.3801,
    0.48,
    0.54,
    0.61,
    0.69,
    0.78,
    0.83,
    0.87,
    0.92,
    0.98,
    1.0,
  ];
}
