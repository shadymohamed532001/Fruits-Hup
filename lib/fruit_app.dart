import 'package:flutter/material.dart';
import 'package:fruithup/core/routing/app_routes.dart';

class FruitApp extends StatelessWidget {
  const FruitApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: AppRoutes.onGenerateRoute,
    );
  }
}
