import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fruithup/core/helper/naviagtion_extentaions.dart';
import 'package:fruithup/core/networking/local_services.dart';
import 'package:fruithup/core/routing/routes.dart';
import 'package:fruithup/core/themaing/app_colors.dart';
import 'package:fruithup/core/widgets/app_bottom.dart';
import 'package:fruithup/feature/onboarding/ui/widgets/onboarding_page_view.dart';

class OnBoardingViewBody extends StatefulWidget {
  const OnBoardingViewBody({
    super.key,
  });

  @override
  State<OnBoardingViewBody> createState() => _OnBoardingViewBodyState();
}

class _OnBoardingViewBodyState extends State<OnBoardingViewBody> {
  late PageController pageController;
  var currentPage = 0;

  @override
  void initState() {
    pageController = PageController();
    pageController.addListener(() {
      currentPage = pageController.page!.round();
      setState(() {});
    });
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: OnBoardingPageView(
            pageController: pageController,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20),
          child: DotsIndicator(
            dotsCount: 2,
            decorator: DotsDecorator(
              activeColor: ColorManger.primaryColor,
              color: currentPage == 1
                  ? ColorManger.primaryColor
                  : ColorManger.primaryColor.withOpacity(0.5),
            ),
          ),
        ),
        const SizedBox(
          height: 29,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: CustomBottom(
            backgroundColor: ColorManger.primaryColor,
            bottomWidth: double.infinity,
            bottomHeight: 54,
            onPressed: () {
              if (currentPage == 1) {
                LocalServices.saveData(key: 'onbording', value: true).then(
                    (value) => {
                          context.navigateTo(routeName: Routes.signInViewRoute)
                        });
              } else {
                pageController.nextPage(
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.easeInOut,
                );
              }
            },
            bottomtext: currentPage == 0 ? 'اكمل' : 'ابدا الان',
          ),
        ),
        const SizedBox(
          height: 43,
        )
      ],
    );
  }
}
