import 'package:flutter/material.dart';
import 'package:widget_book/theme/theme.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;
import 'widgetbook.directories.g.dart';

void main() {
  runApp(const WidgetbookApp());
}

@widgetbook.App()
class WidgetbookApp extends StatelessWidget {
  const WidgetbookApp({super.key});
  @override
  Widget build(BuildContext context) {
    return Widgetbook.material(directories: directories, addons: [
      ThemeAddon(
        themes: [
          WidgetbookTheme(
            name: 'Light',
            data: lightTheme,
          ),
          WidgetbookTheme(
            name: 'Dark',
            data: darkTheme,
          ),
        ],
        themeBuilder: (context, theme, child) => ColoredBox(
          color: theme.surface.primary,
          child: DefaultTextStyle(
            style: theme.typography.bodyMedium16,
            child: AppTheme(
              data: theme,
              child: child,
            ),
          ),
        ),
      ),
      DeviceFrameAddon(
        devices: [
          Devices.ios.iPhoneSE,
          Devices.ios.iPhone13,
          Devices.android.samsungGalaxyS20
        ],
        initialDevice: Devices.ios.iPhone13,
      ),
      TextScaleAddon(
        scales: [1.0, 2.0],
      ),
      LocalizationAddon(locales: [
        const Locale('en', 'US'),
      ], localizationsDelegates: [
        DefaultWidgetsLocalizations.delegate,
        DefaultMaterialLocalizations.delegate,
      ], initialLocale: const Locale('en', 'US')),
    ]);
  }
}
