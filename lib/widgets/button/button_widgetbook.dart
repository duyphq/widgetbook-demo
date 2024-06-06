import 'package:flutter/material.dart';
import 'package:widget_book/widgets/button/button.dart';
import 'package:widget_book/widgets/button/button_widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@UseCase(
  name: 'Default',
  type: CustomButton,
)
Widget buildIconButtonUseCase(BuildContext context) {
  return const CustomButton();
}
