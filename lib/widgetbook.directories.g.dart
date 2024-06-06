// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_import, prefer_relative_imports, directives_ordering

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AppGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:widget_book/widgets/app_bar/app_bar_widgetbook.dart' as _i2;
import 'package:widget_book/widgets/button/button_widgetbook.dart' as _i3;
import 'package:widget_book/widgets/text_field/text_field_widgetbook.dart'
    as _i4;
import 'package:widgetbook/widgetbook.dart' as _i1;

final directories = <_i1.WidgetbookNode>[
  _i1.WidgetbookFolder(
    name: 'widgets',
    children: [
      _i1.WidgetbookFolder(
        name: 'app_bar',
        children: [
          _i1.WidgetbookComponent(
            name: 'CustomAppBar',
            useCases: [
              _i1.WidgetbookUseCase(
                name: 'Default',
                builder: _i2.buildIconButtonUseCase,
              ),
              _i1.WidgetbookUseCase(
                name: 'With Icon',
                builder: _i2.buildIconAppBarUseCase,
              ),
            ],
          )
        ],
      ),
      _i1.WidgetbookFolder(
        name: 'button',
        children: [
          _i1.WidgetbookLeafComponent(
            name: 'CustomButton',
            useCase: _i1.WidgetbookUseCase(
              name: 'Default',
              builder: _i3.buildIconButtonUseCase,
            ),
          )
        ],
      ),
      _i1.WidgetbookFolder(
        name: 'text_field',
        children: [
          _i1.WidgetbookComponent(
            name: 'CustomTextField',
            useCases: [
              _i1.WidgetbookUseCase(
                name: 'Default Style',
                builder: _i4.hintTextCustomTextField,
              ),
              _i1.WidgetbookUseCase(
                name: 'With Hint Text',
                builder: _i4.defaultCustomTextField,
              ),
            ],
          )
        ],
      ),
    ],
  )
];
