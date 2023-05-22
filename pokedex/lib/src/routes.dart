import 'package:flutter/widgets.dart';
import 'package:pokemon_dependencies/pokemon_dependencies.dart';
import './modules/modules.dart';

class AppGenerateRouter {
  AppGenerateRouter._();

  static const String routeHome = '/home';
  static const String routeDetails = '/details';

  static Route? onGenerateRoutes(RouteSettings settings) {
    final route = settings.name;
    Widget? routePage;

    switch (route) {
      case routeHome:
        routePage =  HomeScreen(viewModel: GetIt.I.get<HomeScreenViewModel>());
        break;

      case routeDetails:
        routePage = DetailsScreen(
          args: settings.arguments as DetailsScreenArgs,
        );
        break;
    }

    if (routePage == null) {
      return null;
    }

    return PageRouteBuilder<dynamic>(
      settings: settings,
      pageBuilder: (_, __, ___) {
        return routePage!;
      },
      transitionsBuilder: (_, animation, ___, child) {
        const begin = Offset(1, 0);
        const end = Offset.zero;

        final tween = Tween(begin: begin, end: end);
        final offsetAnimation = animation.drive(tween);

        return SlideTransition(
          position: offsetAnimation,
          child: FadeTransition(
            opacity: animation,
            child: child,
          ),
        );
      },
    );
  }
}
