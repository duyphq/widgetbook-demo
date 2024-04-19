import 'package:flutter/material.dart';

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
            title: const Text('AppBar Demo'),
            backgroundColor: Colors.blue,
            actions: actions));
  }

  @override
  Size get preferredSize => const Size.fromHeight(100);
}
