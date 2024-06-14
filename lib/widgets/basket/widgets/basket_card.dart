import 'package:flutter/material.dart';
import 'package:widget_book/l10n/app_localizations.dart';
import 'package:widget_book/repositories/fruit.dart';
import 'package:widget_book/theme/theme.dart';
import 'package:widget_book/core/core.dart' as core;

class BasketCard extends StatelessWidget {
  const BasketCard({
    super.key,
    required this.fruit,
    required this.count,
    this.onFruitAdded,
    this.onFruitRemoved,
  });

  final Fruit fruit;
  final int count;
  final VoidCallback? onFruitAdded;
  final VoidCallback? onFruitRemoved;

  double get total => fruit.price * count;

  @override
  Widget build(BuildContext context) {
    return core.Card(
      child: Padding(
        padding: EdgeInsets.all(
          AppTheme.of(context).spacing.small,
        ),
        child: Row(
          children: [
            Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(
                    AppTheme.of(context).radius.extraSmall,
                  ),
                ),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(fruit.imageUrl),
                ),
              ),
            ),
            SizedBox(
              width: AppTheme.of(context).spacing.medium,
            ),
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    fruit.name,
                    style: AppTheme.of(context).typography.headingSemibold20,
                  ),
                  SizedBox(
                    height: AppTheme.of(context).spacing.extraSmall - 2,
                  ),
                  Text(
                    '\$${fruit.price}/${AppLocalizations.of(context)!.unit}',
                    style: AppTheme.of(context).typography.bodyRegular12,
                  ),
                  SizedBox(
                    height: AppTheme.of(context).spacing.medium,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
