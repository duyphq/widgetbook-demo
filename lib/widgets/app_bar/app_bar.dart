import 'package:flutter/material.dart';
import 'package:widget_book/l10n/app_localizations.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
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
    return PreferredSize(
        preferredSize: preferredSize,
        child: AppBar(
            title: Text(
              AppLocalizations.of(context)!.helloWorld,
            ),
            backgroundColor: Colors.blue,
            actions: actions));
  }

  @override
  Size get preferredSize => const Size.fromHeight(100);
}
