import 'package:flutter/material.dart';
import 'package:widget_book/core/app_bar/app_bar.dart';
import 'package:widget_book/core/button/button.dart';
import 'package:widget_book/core/text_field/text_field.dart';
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
          title: AppLocalizations.of(context)!.appName,
          backgroundColor: Colors.black,
        ),
        SizedBox(
          height: AppTheme.of(context).spacing.large,
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: AppTheme.of(context).spacing.medium,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  AppLocalizations.of(context)!.appName,
                  style: AppTheme.of(context).typography.displayRegular32,
                ),
                Material(
                  child: CustomTextField(
                    title: AppLocalizations.of(context)!.username,
                    hintText: AppLocalizations.of(context)!.enterInput,
                  ),
                ),
                SizedBox(
                  height: AppTheme.of(context).spacing.large,
                ),
                Material(
                  child: CustomTextField(
                    title: AppLocalizations.of(context)!.email,
                    hintText: AppLocalizations.of(context)!.enterInput,
                  ),
                ),
                SizedBox(
                  height: AppTheme.of(context).spacing.large,
                ),
                Material(
                  child: CustomTextField(
                    title: AppLocalizations.of(context)!.pass,
                    hintText: AppLocalizations.of(context)!.enterInput,
                  ),
                ),
                SizedBox(
                  height: AppTheme.of(context).spacing.extraExtraExtraLarge,
                ),
                const CustomButton(
                  content: 'SignUp',
                ),
                SizedBox(
                  height: AppTheme.of(context).spacing.large,
                ),
                const CustomButton(content: 'Login'),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
