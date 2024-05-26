import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';

class PageViewItem extends StatelessWidget {
  const PageViewItem(
      {super.key,
      required this.subTitle,
      required this.title,
      required this.backgroundImage,
      required this.image});
  final String subTitle;
  final Widget title;
  final String backgroundImage;
  final String image;

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
              const Padding(
                padding: EdgeInsets.all(16),
                child: SafeArea(
                  child: Text(
                    'تخط',
                  ),
                ),
              ),
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
          ),
        )
      ],
    );
  }
}
