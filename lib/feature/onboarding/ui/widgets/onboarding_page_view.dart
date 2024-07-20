import 'package:flutter/material.dart';
import 'package:fruithup/core/themaing/app_colors.dart';
import 'package:fruithup/core/themaing/app_images.dart';
import 'package:fruithup/core/themaing/app_styles.dart';
import 'package:fruithup/feature/onboarding/ui/widgets/page_view_item.dart';

class OnBoardingPageView extends StatelessWidget {
  const OnBoardingPageView({super.key, required this.pageController});

  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      children: [
        PageViewItem(
          isShow: true,
          subTitle:
              'نقدم لك أفضل الفواكه المختارة بعناية. اطلع على التفاصيل والصور والتقييمات لتتأكد من اختيار الفاكهة المثالية',
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'ابحث وتسوق',
                style: AppStyle.font23Bold.copyWith(
                  fontFamily: 'Cairo',
                ),
              ),
            ],
          ),
          backgroundImage: Assets.resourceImagesPageViewItem2BackgroundImage,
          image: Assets.resourceImagesPageViewItem2Image,
        ),
        PageViewItem(
          isShow: false,
          subTitle:
              'اكتشف تجربة تسوق فريدة مع FruitHUB. استكشف مجموعتنا الواسعة من الفواكه الطازجة الممتازة واحصل على أفضل العروض والجودة العالية.',
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'مرحبًا بك في ',
                style: AppStyle.font23Bold.copyWith(
                  fontFamily: 'Cairo',
                ),
              ),
              Text(
                'HUB',
                style: AppStyle.font23Bold.copyWith(
                  color: ColorManger.darkyelloColor,
                  fontFamily: 'Cairo',
                ),
              ),
              Text(
                'Fruit',
                style: AppStyle.font23Bold.copyWith(
                  color: ColorManger.primaryColor,
                  fontFamily: 'Cairo',
                ),
              ),
            ],
          ),
          backgroundImage: Assets.resourceImagesPageViewItem1BackgroundImage,
          image: Assets.resourceImagesPageViewItem1Image,
        ),
      ],
    );
  }
}
