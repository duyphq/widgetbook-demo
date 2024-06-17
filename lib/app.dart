import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:widget_book/widgets/login.dart';
import 'package:widget_book/widgets/signup.dart';
import 'l10n/app_localizations.dart';
import 'theme/theme.dart';

final _router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const LoginScreen(),
    ),
    GoRoute(
      path: '/sign_up',
      builder: (context, state) => const SignUpScreen(),
    ),
  ],
);

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return AppTheme(
      data: MediaQuery.of(context).platformBrightness == Brightness.light
          ? lightTheme
          : darkTheme,
      child: Builder(
        builder: (context) {
          return ColoredBox(
            color: AppTheme.of(context).surface.primary,
            child: SafeArea(
              child: WidgetsApp.router(
                debugShowCheckedModeBanner: false,
                color: lightTheme.surface.primary,
                routerConfig: _router,
                supportedLocales: AppLocalizations.supportedLocales,
                localizationsDelegates: AppLocalizations.localizationsDelegates,
              ),
            ),
          );
        },
      ),
    );
  }
}
