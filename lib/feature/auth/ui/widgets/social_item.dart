
import 'package:flutter/material.dart';
import 'package:fruithup/core/themaing/app_styles.dart';

class SocialItem extends StatelessWidget {
  const SocialItem({
    super.key,
    required this.title,
    required this.icon,
  });

  final String title;
  final String icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.transparent,
        border: Border.all(
          color: const Color(0xffDDDFDF),
          width: 2,
        ),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            icon,
            width: 24,
            height: 24,
          ),
          const SizedBox(
            width: 40,
          ),
          Text(
            title,
            style: AppStyle.font16SemiBold.copyWith(
              fontFamily: 'Cairo',
            ),
          ),
        ],
      ),
    );
  }
}
