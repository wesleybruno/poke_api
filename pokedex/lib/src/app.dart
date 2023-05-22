import 'package:flutter/material.dart';
import 'package:pokedex/src/routes.dart';
import 'package:design_system/design_system.dart';
import 'package:pokemon_dependencies/pokemon_dependencies.dart';

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      minTextAdapt: true,
      splitScreenMode: true,
      designSize: const Size(360, 640),
      builder: (_, __) {
        return MaterialApp(
          theme: AppTheme().makeTheme(),
          darkTheme: AppTheme().makeTheme(),
          onGenerateRoute: AppGenerateRouter.onGenerateRoutes,
          initialRoute: AppGenerateRouter.routeHome,
          debugShowCheckedModeBanner: false,
        );
      },
    );
  }
}
