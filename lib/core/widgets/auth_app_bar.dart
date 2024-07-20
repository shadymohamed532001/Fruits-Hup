import 'package:flutter/material.dart';
import 'package:fruithup/core/themaing/app_styles.dart';

AppBar buildAppBar(BuildContext context,
    {required String title, required bool showArrow}) {
  return AppBar(
    leading: showArrow
        ? GestureDetector(
            onTap: () => Navigator.pop(context),
            child: const Icon(Icons.arrow_back_ios))
        : const SizedBox(),
    centerTitle: true,
    title: Text(
      title,
      style: AppStyle.font19Bold.copyWith(
        fontFamily: 'Cairo',
      ),
    ),
  );
}
