import 'package:flutter/material.dart';
import 'package:fruithup/core/themaing/app_images.dart';
import 'package:fruithup/core/themaing/app_styles.dart';
import 'package:fruithup/feature/onboarding/ui/widgets/page_view_item.dart';

class OnBoardingPageView extends StatelessWidget {
  const OnBoardingPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView(
      children: [
        PageViewItem(
          subTitle:
              'اكتشف تجربة تسوق فريدة مع FruitHUB. استكشف مجموعتنا الواسعة من الفواكه الطازجة الممتازة واحصل على أفضل العروض والجودة العالية.',
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'مرحبًا بك في ',
                style: AppStyle.font18WhiteSemiBold,
              ),
              const Text(
                'Fruit',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                'HUB',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          backgroundImage: Assets.resourceImagesPageViewItem1BackgroundImage,
          image: Assets.resourceImagesPageViewItem1Image,
        ),
        PageViewItem(
          subTitle:
              'نقدم لك أفضل الفواكه المختارة بعناية. اطلع على التفاصيل والصور والتقييمات لتتأكد من اختيار الفاكهة المثالية',
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'ابحث وتسوق',
                style: AppStyle.font18WhiteSemiBold,
              ),
            ],
          ),
          backgroundImage: Assets.resourceImagesPageViewItem2BackgroundImage,
          image: Assets.resourceImagesPageViewItem2Image,
        ),
      ],
    );
  }
}
