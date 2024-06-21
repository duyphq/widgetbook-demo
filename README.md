## Setup Widgetbook
Run script 
`flutter pub add widgetbook_annotation widgetbook` and `flutter pub add widgetbook_generator build_runner --dev`
Create file widgetbook.dart
```
import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.App()
void main() {
  runApp(const HotReload());
}

class HotReload extends StatelessWidget {
  const HotReload({super.key});

  @override
  Widget build(BuildContext context) {
    return Widgetbook.material(
      addons: [],
      directories: [],
    );
  }
}
```



## Build and run
Bootstrap App:
`
flutter pub get    # Install deps
flutter gen-l10n   # Generate localization files
`

Run script  `flutter pub run build_runner build` or `flutter pub run build_runner watch`
Depending on the environment you want to display Widgetbook. You can choose 1 of the build environments to display Widgetbook
- MacOS:  `flutter run -d macos -t lib/widgetbook.dart`
- Window: `flutter run -d windows -t lib/widgetbook.dart`
- Chrome: `flutter run -d chrome -t lib/widgetbook.dart`
- Linux:  `flutter run -d linux -t lib/widgetbook.dart`
## Documentation
Read document at page [Widgetbook](https://www.widgetbook.io)
