import 'package:flutter/cupertino.dart';

class ComponentWidget {
  // final inputText = SelectInputText();

  final shimmerGradient = const LinearGradient(
    colors: [
      Color(0xCCEBEBF4),
      Color(0xCCF4F4F4),
      Color(0xCCEBEBF4),
    ],
    stops: [
      0.1,
      0.3,
      0.4,
    ],
    begin: Alignment(-1.0, -0.3),
    end: Alignment(1.0, 0.3),
    tileMode: TileMode.clamp,
  );
}
