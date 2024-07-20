import 'package:flutter/material.dart';
import 'package:fruithup/core/themaing/app_images.dart';
import 'package:fruithup/feature/auth/ui/widgets/social_item.dart';

class AllSocialAuth extends StatelessWidget {
  const AllSocialAuth({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SocialItem(
          icon: Assets.resourceImagesGoogle,
          title: 'تسجيل دخول بواسطة جوجل',
        ),
        SizedBox(
          height: 16,
        ),
        SocialItem(
          icon: Assets.resourceImagesApple,
          title: 'تسجيل دخول بواسطة ابل',
        ),
        SizedBox(
          height: 16,
        ),
        SocialItem(
          icon: Assets.resourceImagesFaceBook,
          title: 'تسجيل دخول بواسطة فيسبوك',
        ),
      ],
    );
  }
}
