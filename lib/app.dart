import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:widget_book/widgets/basket/basket_screen.dart';
import 'package:widget_book/widgets/basket/state/basket_scope.dart';
import 'package:widget_book/widgets/basket/state/basket_state.dart';
import 'package:widget_book/widgets/home/home.dart';
import 'l10n/app_localizations.dart';
import 'theme/theme.dart';

final _router = GoRouter(
  routes: [
    // GoRoute(
    //   path: '/',
    //   builder: (_, __) => FutureBuilder(
    //     future: FruitRepository().getFruits(),
    //     builder: (_, snapshot) {
    //       if (!snapshot.hasData) return const Placeholder();

    //       return HomeScreen(
    //         fruits: snapshot.data!,
    //       );
    //     },
    //   ),
    // ),
    // GoRoute(
    //   path: '/about',
    //   builder: (context, state) => const AboutScreen(),
    // ),
    GoRoute(
      path: '/',
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: '/basket',
      builder: (context, state) {
        final basketState = BasketState.of(context);

        return BasketScreen(
          basket: basketState.store,
          delivery: basketState.delivery,
          subTotal: basketState.subTotal,
        );
      },
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
          return BasketScope(
            child: ColoredBox(
              color: AppTheme.of(context).surface.primary,
              child: SafeArea(
                child: WidgetsApp.router(
                  title: 'Grocery App',
                  debugShowCheckedModeBanner: false,
                  color: lightTheme.surface.primary,
                  routerConfig: _router,
                  supportedLocales: AppLocalizations.supportedLocales,
                  localizationsDelegates:
                      AppLocalizations.localizationsDelegates,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
