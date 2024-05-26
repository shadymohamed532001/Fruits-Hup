import 'package:flutter/material.dart';
import 'package:fruithup/core/routing/routes.dart';
import 'package:fruithup/core/themaing/app_styles.dart';
import 'package:fruithup/feature/onboarding/ui/view/onboarding_view.dart';

class AppRoutes {
  static Route<dynamic>? onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.initialRoute:
        return MaterialPageRoute(
          builder: (context) {
            return const OnBoardingView();
          },
        );

      default:
        return _unFoundRoute();
    }
  }

  static Route<dynamic> _unFoundRoute() {
    return MaterialPageRoute(
      builder: (context) => Scaffold(
        body: Center(
          child: Text(
            'Not Found this Route',
            style: AppStyle.font18WhiteSemiBold,
          ),
        ),
      ),
    );
  }
}
