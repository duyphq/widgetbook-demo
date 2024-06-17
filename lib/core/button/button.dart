import 'package:flutter/material.dart';
import '../../theme/app_theme.dart';
import 'package:go_router/go_router.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.content,
    this.onPressed,
  });

  final String content;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.go('/sign_up'),
      child: Container(
        padding: EdgeInsets.symmetric(
          vertical: AppTheme.of(context).spacing.medium,
          horizontal: AppTheme.of(context).spacing.extraLarge,
        ),
        decoration: BoxDecoration(
          color: AppTheme.of(context).surface.brand,
          borderRadius: BorderRadius.circular(
            AppTheme.of(context).radius.medium,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              content,
              style: AppTheme.of(context).typography.labelMedium14.copyWith(
                    color: AppTheme.of(context).surface.light,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
