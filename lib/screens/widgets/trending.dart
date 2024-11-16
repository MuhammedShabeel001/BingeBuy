import 'package:bingebuy/screens/widgets/trending_item.dart';
import 'package:bingebuy/utils/app_colors.dart';
import 'package:bingebuy/utils/app_texts.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class Trending extends StatelessWidget {
  const Trending({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // color: Colors.orangeAccent,
      height: 240,
      child: Column(
        children: [



          Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        AppTexts.trending,
                        style:
                            const TextStyle(fontWeight: FontWeight.w700, fontSize: 28),
                      ),
                      Text(
                        AppTexts.seeAll, 
                        style:
                            const TextStyle(fontWeight: FontWeight.w700, fontSize: 18, color: AppColors.accent),
                      ),
                    ],
                  ),
                )),




          Flexible(
            flex: 5,
            child: Container(
              // color: Colors.pinkAccent,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Gap(20),
                  TrendingItem(),
                  Gap(20),
                  TrendingItem(),
                  Gap(20),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}


