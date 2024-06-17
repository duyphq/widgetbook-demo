import 'package:flutter/material.dart';
import 'package:widget_book/core/text_field/text_field.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(
  name: 'With Hint Text',
  type: CustomTextField,
)
CustomTextField defaultCustomTextField(BuildContext context) {
  return const CustomTextField();
}

@widgetbook.UseCase(
  name: 'Default Style',
  type: CustomTextField,
)
CustomTextField hintTextCustomTextField(BuildContext context) {
  return const CustomTextField(
    hintText: 'Enter your text input here',
  );
}
