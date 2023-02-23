// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:purity/core/constant/colors.core.dart';
import 'package:purity/service/navigation.service.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData(scaffoldBackgroundColor: background),
      localizationsDelegates: const [
        GlobalCupertinoLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: const [Locale("ar", "AE")],
      locale: const Locale("ar", "AE"),
      routerConfig: NavigationService.router,
      debugShowCheckedModeBanner: false,
    );
  }
}
