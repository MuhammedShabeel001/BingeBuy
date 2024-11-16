import 'package:bingebuy/utils/app_colors.dart';
import 'package:bingebuy/utils/app_texts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

import '../../utils/app_assets.dart';
import 'category_card.dart';

class TodayTab extends StatelessWidget {
  final List<Category> categories = [
    Category(
        name: AppTexts.food,
        iconPath: AppAssets.food,
        discount: AppTexts.offer),
    Category(
        name: AppTexts.medicine,
        iconPath: AppAssets.medicine,
        discount: AppTexts.offer),
    Category(
        name: AppTexts.pet, iconPath: AppAssets.pet, discount: AppTexts.offer),
    Category(name: AppTexts.gift, iconPath: AppAssets.gift),
    Category(name: AppTexts.meat, iconPath: AppAssets.meat),
    Category(name: AppTexts.cosmetics, iconPath: AppAssets.cosmetics),
    Category(name: AppTexts.stationery, iconPath: AppAssets.stationery),
    Category(
        name: AppTexts.stores,
        iconPath: AppAssets.stores,
        discount: AppTexts.offer),
  ];

   TodayTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 350,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
              flex: 1,
              child: Text(
                AppTexts.todayCard,
                style:
                    const TextStyle(fontWeight: FontWeight.w700, fontSize: 28),
              )),
          Expanded(
              flex: 6,
              child: GridView.builder(
                physics:const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  childAspectRatio: 0.8,
                  crossAxisSpacing: 8,
                  mainAxisSpacing: 8,
                ),
                itemCount: categories.length,
                itemBuilder: (context, index) {
                  final category = categories[index];
                  return CategoryCard(category: category);
                },
              )),
          Flexible(
              flex: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(AppTexts.more,style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w600,color: AppColors.accent),),
                  const Gap(8),
                   SvgPicture.asset(AppAssets.downArrow),
                  
                ],
              )),
        ],
      ),
    );
  }
}
