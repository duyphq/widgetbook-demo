import 'dart:math';

import 'package:flutter/material.dart';
import 'package:widget_book/core/primary_button.dart';
import 'package:widget_book/l10n/app_localizations.dart';
import 'package:widget_book/repositories/fruit.dart';
import 'package:widget_book/theme/app_theme.dart';
import 'package:widget_book/widgets/app_bar/app_bar.dart';

import '../basket/state/basket_state.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
    // required this.fruits,
  });

  // final List<Fruit> fruits;

  @override
  Widget build(BuildContext context) {
    final basketState = BasketState.of(context);

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
                PrimaryButton(content: 'Login'),
                SizedBox(
                  height: AppTheme.of(context).spacing.large,
                ),
                PrimaryButton(content: 'Signup')
              ],
            ),
          ),
        ),
      ],
    );
  }
}
