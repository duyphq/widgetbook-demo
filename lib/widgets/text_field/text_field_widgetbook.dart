import 'package:flutter/material.dart';
import 'package:widget_book/widgets/text_field/text_field.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(
  name: 'With Hint Text',
  type: CustomTextField,
)
CustomTextField defaultCustomTextField(BuildContext context) {
  return CustomTextField(
    controller: TextEditingController(),
  );
}

@widgetbook.UseCase(
  name: 'Default Style',
  type: CustomTextField,
)
MaterialApp hintTextCustomTextField(BuildContext context) {
  return MaterialApp(
      title: 'Widgetbook Demo',
      theme: ThemeData(colorScheme: ColorScheme.light(primary: Colors.white54)),
      color: Colors.blue,
      home: Container(
        color: Colors.blue,
        child: CustomTextField(
          controller: TextEditingController(),
          hintText: 'Enter your text input here',
        ),
      ));
}
