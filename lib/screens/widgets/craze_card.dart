import 'package:bingebuy/utils/app_assets.dart';
import 'package:bingebuy/utils/app_colors.dart';
import 'package:bingebuy/utils/app_texts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

class CrazeCard extends StatelessWidget {
  const CrazeCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: AppColors.background,
      ),
      width: 380,
      child: Stack(
        children: [
          Positioned(
            bottom: 0,
            right: 0,
            child: SizedBox(
              width: 150,
              height: 160,
              child: Image.asset(
                AppAssets.flowerBase,
                fit: BoxFit.fitHeight,
              ),
            ),
          ),
          Positioned(
            left: 30,
            bottom: 50,
            child: SizedBox(
              width: 220,
              height: 100,
              child: SvgPicture.asset(AppAssets.topText),
            ),
          ),
          Positioned(
            bottom: 30,
            left: 30,
            child: SizedBox(
              width: 100,
              height: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    AppTexts.explore,
                    style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: AppColors.button),
                  ),
                  const Gap(8),
                  SvgPicture.asset(AppAssets.rightArrow),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
