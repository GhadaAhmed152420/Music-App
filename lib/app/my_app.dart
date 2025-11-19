import 'package:flutter/material.dart';
import 'package:music_app/core/resources/assets_manager.dart';
import 'package:music_app/core/resources/routes_manager.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: RoutePaths.splash,
      routes: RoutesManager.routes,
      theme: ThemeData(
        fontFamily: AssetsManager.orbitron,
      ),
    );
  }
}
