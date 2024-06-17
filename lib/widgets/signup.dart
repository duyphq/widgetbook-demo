import 'package:flutter/material.dart';
import 'package:widget_book/core/app_bar/app_bar.dart';
import 'package:widget_book/core/button/button.dart';
import 'package:widget_book/l10n/app_localizations.dart';
import 'package:widget_book/theme/theme.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomAppBar(
          title: 'Grocery App',
          backgroundColor: Colors.black,
        ),
        // SizedBox(
        //   height: AppTheme.of(context).spacing.large,
        // ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: AppTheme.of(context).spacing.medium,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  AppLocalizations.of(context)!.fruitsHeadline,
                  style: AppTheme.of(context).typography.displayRegular32,
                ),
                SizedBox(
                  height: AppTheme.of(context).spacing.large,
                ),
                CustomButton(content: 'Login'),
                SizedBox(
                  height: AppTheme.of(context).spacing.large,
                ),
                CustomButton(content: 'Signup')
              ],
            ),
          ),
        ),
      ],
    );
  }
}
