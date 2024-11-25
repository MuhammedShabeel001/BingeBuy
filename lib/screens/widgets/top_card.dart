import 'package:bingebuy/utils/app_assets.dart';
import 'package:bingebuy/utils/app_colors.dart';
import 'package:bingebuy/utils/app_texts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

// ignore: must_be_immutable
class TopCard extends StatelessWidget {
  Color cardColor;
  TopCard({
    super.key,
    required this.cardColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: cardColor,
      ),
      width: 430,
      child: Stack(
        children: [
          Positioned(
            left: 30,
            bottom: 85,
            child: SizedBox(
              width: 130,
              height: 90,
              child: SvgPicture.asset(AppAssets.discount),
            ),
          ),
          Positioned(
            bottom: 30,
            left: 30,
            child: SizedBox(
              width: 160,
              height: 40,
              child: TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    foregroundColor: AppColors.textLight,
                    backgroundColor: AppColors.alert,
                    minimumSize: const Size(160, 40),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  child: Text(
                    AppTexts.checkButton,
                    style: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.bold),
                  )),
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: SizedBox(
              width: 250,
              height: 220,
              child: Image.asset(
                AppAssets.fruites,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
