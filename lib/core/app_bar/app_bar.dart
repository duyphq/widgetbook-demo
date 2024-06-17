import 'package:flutter/material.dart';
import 'package:widget_book/core/app_icon/app_icon.dart';

import '../../theme/app_theme.dart';

class CustomAppBar extends StatelessWidget {
  final String title;
  final Color backgroundColor;
  final List<Widget> actions;

  const CustomAppBar({
    Key? key,
    required this.title,
    required this.backgroundColor,
    this.actions = const [],
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: AppTheme.of(context).spacing.extraSmall,
        vertical: AppTheme.of(context).spacing.small,
      ),
      child: Row(
        children: [
          const AppIcon(
            icon: Icons.menu_rounded,
          ),
          Expanded(
            child: Align(
              child: Text(
                title,
                style: AppTheme.of(context).typography.logoSemiBold20,
              ),
            ),
          ),
          Stack(
            children: [
              AppIcon(icon: Icons.shopping_bag_outlined, onPressed: () => {}),
              // if (basketSize > 0)
              //   Positioned(
              //     right: 6,
              //     top: 6,
              //     child: core.Badge(
              //       number: basketSize,
              //     ),
              //   ),
            ],
          ),
        ],
      ),
    );
  }
}
