// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bingebuy/utils/app_assets.dart';
import 'package:bingebuy/utils/app_colors.dart';
import 'package:bingebuy/utils/app_texts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

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
      // height: 50,
      width: 430,
      child: Stack(
        children: [
          Positioned(
            // top: 0,
            left: 30,
            bottom: 85,
            child: SizedBox(
              width: 130, height: 90,
              child: SvgPicture.asset(AppAssets.discount),
              //color: Colors.red
            ),
          ),
          Positioned(
            // top: 50,
            bottom: 30,
            left: 30,
            child: SizedBox(
              width: 160, height: 40,
              child: TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    foregroundColor: AppColors.textLight,
                    backgroundColor: AppColors.alert, // Text color
                    minimumSize:
                        const Size(160, 40), // Width and height of the button
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                          5), // Match the rounded corners if needed
                    ),
                  ),
                  child: Text(AppTexts.checkButton, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),)),
              //color: Colors.green
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: SizedBox(
              width: 250, height: 220,
              child: Image.asset(
                AppAssets.fruites,
                fit: BoxFit.cover,
              ),
              //color: Colors.blue
            ),
          ),
        ],
      ),
    );
  }
}
