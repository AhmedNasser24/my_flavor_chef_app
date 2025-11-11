import 'package:chef_app/core/routing/app_route.dart';
import 'package:chef_app/core/utils/themes/get_theme_data.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: getThemeData(),
      debugShowCheckedModeBanner: false,
      routerConfig: AppRoute.router,
    );
  }
}
