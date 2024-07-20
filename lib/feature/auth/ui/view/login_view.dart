import 'package:flutter/material.dart';
import 'package:fruithup/core/widgets/auth_app_bar.dart';
import 'package:fruithup/feature/auth/ui/widgets/login_view_body.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context, title: 'تسجيل دخول', showArrow: false),
      body: const LoginViewViewBody(),
    );
  }
}
