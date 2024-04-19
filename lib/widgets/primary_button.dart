import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:widget_book/common/component/component.dart';

class PrimaryButton extends StatefulWidget {
  final String title;
  final Function() onPressed;
  final Color? backgroudColor;
  final double? height;
  final BorderRadius? borderRadius;
  final TextStyle? style;
  final Widget? icon;
  final BoxBorder? border;
  final bool? isActive;
  final double? sizeBorder;

  final EdgeInsetsGeometry? padding;
  final List<Color>? alignmentColor;
  final List<double>? alignmentStop;

  const PrimaryButton({
    Key? key,
    required this.title,
    required this.onPressed,
    this.backgroudColor,
    this.height,
    this.borderRadius,
    this.style,
    this.icon,
    this.border,
    this.isActive = true,
    this.sizeBorder,
    this.padding,
    this.alignmentColor,
    this.alignmentStop,
  }) : super(key: key);

  @override
  _PrimaryButtonState createState() => _PrimaryButtonState();
}

class _PrimaryButtonState extends State<PrimaryButton> {
  bool isButtonEnabled = true;
  @override
  Widget build(BuildContext context) {
    var style = widget.style ??
        Component.textStyle.mediumRegular.copyWith(color: Colors.white);
    var radius = widget.borderRadius ?? Component.radius.radius6;
    var background = widget.backgroudColor ??
        (widget.isActive! ? Component.color.darkBlue : Component.color.grey200);
    double heightButton = widget.height ?? (Platform.isIOS ? 44 : 48);

    return Material(
      borderRadius: radius,
      child: InkWell(
        onTap: () {
          if (isButtonEnabled) {
            widget.onPressed();
            isButtonEnabled = false;

            Timer(Duration(seconds: 2), () {
              isButtonEnabled = true;
            });
          }
        },
        borderRadius: radius,
        child: Ink(
          height: 32,
          decoration: BoxDecoration(
            color: background,
            borderRadius: radius,
          ),
          child: Container(
            padding: widget.padding,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (widget.icon != null) ...[
                  widget.icon!,
                  SizedBox(
                    width: 9,
                  ),
                ],
                GradientText(
                  widget.title,
                  style: style.copyWith(height: 1.2),
                  colors:
                      widget.alignmentColor ?? Component.alignmet.gradientWhite,
                  stops: widget.alignmentStop ??
                      Component.alignmet.stopsGradientWhite,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
