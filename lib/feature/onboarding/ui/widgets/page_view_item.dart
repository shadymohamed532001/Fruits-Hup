import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruithup/core/helper/naviagtion_extentaions.dart';
import 'package:fruithup/core/networking/local_services.dart';
import 'package:fruithup/core/routing/routes.dart';
import 'package:fruithup/core/themaing/app_colors.dart';
import 'package:fruithup/core/themaing/app_styles.dart';

class PageViewItem extends StatelessWidget {
  const PageViewItem(
      {super.key,
      required this.subTitle,
      required this.title,
      required this.backgroundImage,
      required this.image,
      required this.isShow});
  final String subTitle;
  final Widget title;
  final String backgroundImage;
  final String image;
  final bool isShow;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 0.5,
          child: Stack(
            children: [
              Positioned.fill(
                child: SvgPicture.asset(
                  backgroundImage,
                  fit: BoxFit.fill,
                ),
              ),
              Positioned(
                left: 0,
                right: 0,
                bottom: 0,
                child: SvgPicture.asset(
                  image,
                ),
              ),
              isShow
                  ? Padding(
                      padding: const EdgeInsets.all(16),
                      child: SafeArea(
                        child: GestureDetector(
                          onTap: () {
                            LocalServices.saveData(
                                    key: 'onbording', value: true)
                                .then((value) => {
                                      context.navigateTo(
                                          routeName: Routes.signInViewRoute)
                                    });
                          },
                          child: const Text(
                            'تخط',
                          ),
                        ),
                      ),
                    )
                  : Container(),
            ],
          ),
        ),
        const SizedBox(height: 64),
        title,
        const SizedBox(height: 24),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            subTitle,
            textAlign: TextAlign.center,
            style: AppStyle.font15SemiBold.copyWith(
              color: ColorManger.greyColor,
              fontFamily: 'Cairo',
            ),
          ),
        )
      ],
    );
  }
}
