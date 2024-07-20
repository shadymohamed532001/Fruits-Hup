import 'package:flutter/material.dart';
import 'package:fruithup/core/themaing/app_colors.dart';
import 'package:fruithup/core/themaing/app_styles.dart';
import 'package:fruithup/core/widgets/app_bottom.dart';
import 'package:fruithup/core/widgets/app_text_formfield.dart';
import 'package:fruithup/feature/auth/ui/widgets/dont_have_account.dart';
import 'package:fruithup/feature/auth/ui/widgets/or_divider.dart';
import 'package:fruithup/feature/auth/ui/widgets/social_auth.dart';

class LoginViewViewBody extends StatelessWidget {
  const LoginViewViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(
            height: 24,
          ),
          const CustomTextFormFiled(
            hintText: 'البريد الالكتروني',
            obscureText: false,
          ),
          const SizedBox(
            height: 16,
          ),
          const CustomTextFormFiled(
            hintText: 'كلمة المرور',
            obscureText: false,
            suffixIcon: Icon(
              Icons.remove_red_eye,
              color: Color(0xffC9CECF),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                onPressed: () {},
                child: Text(
                  'نسيت كلمة المرور؟',
                  style: AppStyle.font15SemiBold.copyWith(
                    color: const Color(
                      0xff2D9F5D,
                    ),
                    fontFamily: 'Cairo',
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 24,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: CustomBottom(
              bottomWidth: double.infinity,
              bottomHeight: 55,
              backgroundColor: ColorManger.primaryColor,
              onPressed: () {},
              bottomtext: 'تسجيل دخول',
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          const DontHaveAccount(),
          const SizedBox(
            height: 37,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: OrDivider(),
          ),
          const SizedBox(
            height: 16,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: AllSocialAuth(),
          )
        ],
      ),
    );
  }
}
