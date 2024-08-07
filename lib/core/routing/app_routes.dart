import 'package:flutter/material.dart';
import 'package:fruithup/core/helper/helper_const.dart';
import 'package:fruithup/core/routing/routes.dart';
import 'package:fruithup/core/themaing/app_styles.dart';
import 'package:fruithup/feature/auth/ui/view/login_view.dart';
import 'package:fruithup/feature/auth/ui/view/sign_up_view.dart';
import 'package:fruithup/feature/onboarding/ui/view/onboarding_view.dart';

class AppRoutes {
  static Route<dynamic>? onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.initialRoute:
        if (onBording != null) {
          if (usertoken != null) {
            return MaterialPageRoute(
              builder: (context) => const OnBoardingView(),
            );
          } else {
            return MaterialPageRoute(
              builder: (context) => const LoginView(),
            );
          }
        } else {
          return MaterialPageRoute(
            builder: (context) => const OnBoardingView(),
          );
        }

      case Routes.signInViewRoute:
        return MaterialPageRoute(
          builder: (context) {
            return const LoginView();
          },
        );
      case Routes.signUpViewRoute:
        return MaterialPageRoute(
          builder: (context) {
            return const SignUpView();
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
            style: AppStyle.font18BlackSemiBold,
          ),
        ),
      ),
    );
  }
}
