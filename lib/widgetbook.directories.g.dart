// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_import, prefer_relative_imports, directives_ordering

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AppGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:widget_book/widgetbook/add_basket_button.dart' as _i2;
import 'package:widget_book/widgetbook/custom_card.dart' as _i5;
import 'package:widget_book/widgetbook/text_field.dart' as _i6;
import 'package:widget_book/widgets/app_bar/app_bar_widgetbook.dart' as _i7;
import 'package:widget_book/widgets/button.dart' as _i4;
import 'package:widget_book/widgets/my_home_page.dart' as _i3;
import 'package:widgetbook/widgetbook.dart' as _i1;

final directories = <_i1.WidgetbookNode>[
  _i1.WidgetbookFolder(
    name: 'widgets',
    children: [
      _i1.WidgetbookLeafComponent(
        name: 'AddBasketButton',
        useCase: _i1.WidgetbookUseCase(
          name: 'Default',
          builder: _i2.buildIconButtonUseCase,
        ),
      ),
      _i1.WidgetbookComponent(
        name: 'Container',
        useCases: [
          _i1.WidgetbookUseCase(
            name: 'Contain with screen',
            builder: _i3.myWidget,
          ),
          _i1.WidgetbookUseCase(
            name: 'with green color',
            builder: _i4.greenContainerUseCase,
          ),
        ],
      ),
      _i1.WidgetbookComponent(
        name: 'CustomCard',
        useCases: [
          _i1.WidgetbookUseCase(
            name: 'Default Style',
            builder: _i5.defaultCustomCard,
          ),
          _i1.WidgetbookUseCase(
            name: 'With Custom Background Color',
            builder: _i5.customBackgroundCustomCard,
          ),
        ],
      ),
      _i1.WidgetbookComponent(
        name: 'CustomTextField',
        useCases: [
          _i1.WidgetbookUseCase(
            name: 'Default Style',
            builder: _i6.defaultCustomTextField,
          ),
          _i1.WidgetbookUseCase(
            name: 'With Hint Text',
            builder: _i6.hintTextCustomTextField,
          ),
        ],
      ),
      _i1.WidgetbookFolder(
        name: 'app_bar',
        children: [
          _i1.WidgetbookComponent(
            name: 'CustomAppBar',
            useCases: [
              _i1.WidgetbookUseCase(
                name: 'Default',
                builder: _i7.buildIconButtonUseCase,
              ),
              _i1.WidgetbookUseCase(
                name: 'With Icon',
                builder: _i7.buildIconAppBarUseCase,
              ),
            ],
          )
        ],
      ),
    ],
  )
];
