
import 'package:flutter/material.dart';
import 'package:fruithup/core/themaing/app_styles.dart';

class OrDivider extends StatelessWidget {
  const OrDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          child: Divider(
            color: Color(0xffC9CECF),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Text(
          'او',
          style: AppStyle.font16SemiBold.copyWith(
            fontFamily: 'Cairo',
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        const Expanded(
          child: Divider(
            color: Color(0xffC9CECF),
          ),
        ),
      ],
    );
  }
}
