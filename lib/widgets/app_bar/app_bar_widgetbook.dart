import 'package:flutter/material.dart';
import 'package:widget_book/widgets/app_bar/app_bar.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@UseCase(
  name: 'Default',
  type: CustomAppBar,
)
Widget buildIconButtonUseCase(BuildContext context) {
  return const CustomAppBar(
    title: 'App name',
    backgroundColor: Colors.blueAccent,
  );
}

@UseCase(
  name: 'With Icon',
  type: CustomAppBar,
)
Widget buildIconAppBarUseCase(BuildContext context) {
  return const CustomAppBar(
    title: 'App name',
    backgroundColor: Colors.blueAccent,
    actions: [
      Icon(Icons.search, color: Colors.black),
    ],
  );
}
