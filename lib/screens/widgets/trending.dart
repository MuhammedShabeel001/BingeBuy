import 'package:bingebuy/screens/widgets/trending_item.dart';
import 'package:bingebuy/utils/app_text_style.dart';
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
                      style: AppTextStyle.title,
                    ),
                    Text(
                      AppTexts.seeAll,
                      style: AppTextStyle.seeAll,
                    ),
                  ],
                ),
              )),
          Flexible(
            flex: 5,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: const [
                Gap(20),
                TrendingItem(),
                Gap(20),
                TrendingItem(),
                Gap(20),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
