import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../utils/app_colors.dart';
import '../../utils/app_texts.dart';
import '../widgets/freshly_food_card.dart';

class NearBy extends StatelessWidget {
  const NearBy({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 330,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  AppTexts.nearbyTitle,
                  style: const TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 24,
                  ),
                ),
                Text(
                  AppTexts.seeAll,
                  style: const TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 16,
                    color: AppColors.accent,
                  ),
                ),
              ],
            ),
          ),
          const Gap(10),
          Expanded(
            child: Flexible(
              child: ListView(
                physics: const NeverScrollableScrollPhysics(),
                scrollDirection: Axis.vertical,
                padding: const EdgeInsets.only(left: 20, right: 20),
                children: const [
                  FreshlyBakerCard(),
                  Gap(20),
                  FreshlyBakerCard(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
