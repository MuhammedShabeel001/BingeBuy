import 'package:bingebuy/utils/app_assets.dart';
import 'package:bingebuy/utils/app_colors.dart';
import 'package:bingebuy/utils/app_texts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class EarnAndRefer extends StatelessWidget {
  const EarnAndRefer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: AppColors.accent,
        ),
        height: 90,
        child: Stack(
          children: [
            Positioned(
              left: 35,
              top: 18,
              child: SizedBox(
                width: 130,
                height: 25,
                child: Text(
                  AppTexts.referText,
                  style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: AppColors.textLight),
                ),
              ),
            ),
            Positioned(
              left: 15,
              bottom: 25,
              child: SizedBox(
                width: 257,
                height: 18,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      AppTexts.invitetext,
                      style: const TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                          color: AppColors.textLight),
                    ),
                    SvgPicture.asset(AppAssets.nextIcon)
                  ],
                ),
              ),
            ),
            Positioned(
              right: 30,
              bottom: 10,
              child: SizedBox(
                width: 85,
                height: 82,
                child: SvgPicture.asset(AppAssets.giftIcon),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
