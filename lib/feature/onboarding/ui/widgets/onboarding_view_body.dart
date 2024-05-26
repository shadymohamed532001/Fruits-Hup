import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fruithup/core/themaing/app_colors.dart';
import 'package:fruithup/feature/onboarding/ui/widgets/onboarding_page_view.dart';

class OnBoardingViewBody extends StatelessWidget {
  const OnBoardingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Expanded(
          child: OnBoardingPageView(),
        ),
        Padding(
          padding: const EdgeInsets.all(20),
          child: DotsIndicator(
            dotsCount: 2,
            decorator: DotsDecorator(
                activeColor: ColorManger.primaryColor,
                color: ColorManger.primaryColor.withOpacity(0.5)),
          ),
        )
      ],
    );
  }
}
