import 'package:flutter/material.dart';
import 'package:fruithup/core/helper/naviagtion_extentaions.dart';
import 'package:fruithup/core/routing/routes.dart';
import 'package:fruithup/core/themaing/app_colors.dart';
import 'package:fruithup/core/themaing/app_styles.dart';

class DontHaveAccount extends StatelessWidget {
  const DontHaveAccount({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'لا تمتلك حساب؟',
          style: AppStyle.font16SemiBold.copyWith(
            color: const Color(0xff949D9E),
            fontFamily: 'Cairo',
          ),
        ),
        GestureDetector(
          onTap: () {
            context.navigateTo(routeName: Routes.signUpViewRoute);
          },
          child: Text(
            'قم بانشاء حساب',
            style: AppStyle.font16SemiBold
                .copyWith(color: ColorManger.primaryColor, fontFamily: 'Cairo'),
          ),
        ),
      ],
    );
  }
}
