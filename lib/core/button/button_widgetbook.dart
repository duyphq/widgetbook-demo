import 'package:flutter/material.dart';
import 'package:widget_book/core/button/button.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@UseCase(
  name: 'Default',
  type: CustomButton,
)
Widget buildContinueButtonUseCase(BuildContext context) {
  return const Padding(
    padding: EdgeInsets.all(8),
    child: CustomButton(
      content: 'String',
    ),
  );
}
