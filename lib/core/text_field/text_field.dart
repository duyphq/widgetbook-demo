import 'package:flutter/material.dart';
import 'package:widget_book/theme/app_theme.dart';
import 'package:widget_book/theme/theme.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    this.hintText = '',
  });
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppTheme.of(context).surface.primary,
      child: TextFormField(
        decoration: InputDecoration(
          hintText: hintText,
          filled: true,
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(30)),
          ),
          fillColor: AppTheme.of(context).surface.primary,
        ),
      ),
    );
  }
}
