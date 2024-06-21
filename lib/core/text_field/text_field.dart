import 'package:flutter/material.dart';
import 'package:widget_book/theme/app_theme.dart';
import 'package:widget_book/theme/theme.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    this.hintText = '',
    this.title = '',
    this.obscureText = false,
  });
  final String hintText;
  final String title;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return Container(
        color: AppTheme.of(context).surface.primary,
        child: Column(
          children: [
            Container(
              alignment: Alignment.topLeft,
              child: Text(title,
                  style: AppTheme.of(context).typography.labelMedium14),
            ),
            TextField(
              decoration: InputDecoration(
                  hintText: hintText,
                  filled: true,
                  fillColor: AppTheme.of(context).surface.primary,
                  contentPadding: const EdgeInsets.all(0)),
              obscureText: obscureText,
            ),
          ],
        ));
  }
}
