import 'package:flutter/material.dart';
import 'package:fruithup/core/themaing/app_colors.dart';
import 'package:fruithup/core/themaing/app_styles.dart';
import 'package:fruithup/core/widgets/app_bottom.dart';
import 'package:fruithup/core/widgets/app_text_formfield.dart';
import 'package:fruithup/feature/auth/ui/widgets/circular_check_box.dart';

class SignUpViewBody extends StatefulWidget {
  const SignUpViewBody({super.key});

  @override
  State<SignUpViewBody> createState() => _SignUpViewBodyState();
}

class _SignUpViewBodyState extends State<SignUpViewBody> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(
            height: 24,
          ),
          const CustomTextFormFiled(
            hintText: ' الاسم كامل',
            obscureText: false,
          ),
          const SizedBox(
            height: 16,
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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: CircularCheckbox(
                    value: isChecked,
                    onChanged: (value) {
                      setState(
                        () {
                          isChecked = value;
                        },
                      );
                    },
                  ),
                ),
                const SizedBox(
                  width: 16,
                ),
                Expanded(
                  child: RichText(
                    text: TextSpan(
                      text: 'من خلال إنشاء حساب ، فإنك توافق على ',
                      style: AppStyle.font13Bold.copyWith(
                        fontFamily: 'Cairo',
                        color: const Color(0xff616A6B),
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: 'الشروط والأحكام الخاصة بنا',
                          style: AppStyle.font13Bold.copyWith(
                            fontFamily: 'Cairo',
                            color: ColorManger.primaryColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: CustomBottom(
              backgroundColor: ColorManger.primaryColor,
              bottomHeight: 56,
              bottomWidth: double.infinity,
              onPressed: () {},
              bottomtext: 'إنشاء حساب جديد',
            ),
          ),
          const SizedBox(
            height: 26,
          ),
          RichText(
            text: TextSpan(
              text: 'تمتلك حساب بالفعل؟',
              style: AppStyle.font16SemiBold.copyWith(
                fontFamily: 'Cairo',
                color: const Color(0xff616A6B),
              ),
              children: <TextSpan>[
                TextSpan(
                  text: ' تسجيل دخول',
                  style: AppStyle.font16SemiBold.copyWith(
                    fontFamily: 'Cairo',
                    color: ColorManger.primaryColor,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
