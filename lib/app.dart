import 'package:challenge_02/app/pages/details_page.dart';
import 'package:challenge_02/app/pages/home_page.dart';
import 'package:challenge_02/app/shared/theme/app_theme.dart';
import 'package:challenge_02/app/utils/routes.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.themeData(),
      routes: {
        AppRouter.home: (context) => const HomePage(),
        AppRouter.details: (context) => const DetailsPage(),
      },
      home: const HomePage(),
    );
  }
}
