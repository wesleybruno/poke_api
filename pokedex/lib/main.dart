import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'src/di.dart';
import 'src/app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);

  await DependencyInjection().initialize();

  runApp(const MyApp());
}
