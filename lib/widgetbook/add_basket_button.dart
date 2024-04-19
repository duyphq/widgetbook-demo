import 'package:flutter/material.dart';
import 'package:widget_book/widgets/add_basket_button.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@UseCase(
  name: 'Default',
  type: AddBasketButton,
)
Widget buildIconButtonUseCase(BuildContext context) {
  return const AddBasketButton(
    icon: Icons.add,
  );
}
