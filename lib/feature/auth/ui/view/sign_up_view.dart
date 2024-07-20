import 'package:flutter/material.dart';
import 'package:fruithup/core/widgets/auth_app_bar.dart';
import 'package:fruithup/feature/auth/ui/widgets/sigin_up_view_body.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context, title: 'حساب جديد', showArrow: true),
      body: const SignUpViewBody(),
    );
  }
}
