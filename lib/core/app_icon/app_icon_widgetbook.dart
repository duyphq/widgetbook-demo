import 'package:flutter/material.dart';
import 'package:widget_book/core/app_bar/app_bar.dart';
import 'package:widget_book/core/app_icon/app_icon.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@UseCase(
  name: 'With Icon',
  type: CustomAppBar,
)
Widget buildAppIconUseCase(BuildContext context) {
  return const AppIcon(icon: Icons.search);
}
