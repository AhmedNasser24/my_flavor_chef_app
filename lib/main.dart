import 'package:chef_app/core/languages/lang.dart';
import 'package:chef_app/core/routing/app_route.dart';
import 'package:chef_app/core/utils/themes/get_theme_data.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  runApp(
    EasyLocalization(
      supportedLocales: supportedLocales,
      path:'assets/lang', 
      fallbackLocale: arabicLocale,
      startLocale: arabicLocale,
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      theme: getThemeData(),
      debugShowCheckedModeBanner: false,
      routerConfig: AppRoute.router,
    );
  }
}
