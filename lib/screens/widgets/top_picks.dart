
import 'package:bingebuy/screens/widgets/top_card.dart';
import 'package:bingebuy/utils/app_colors.dart';
import 'package:bingebuy/utils/app_texts.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:gap/gap.dart';

class TopPicks extends StatelessWidget {
  const TopPicks({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // color: Colors.lightBlueAccent,
      height: 270,
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
           Padding(
             padding: const EdgeInsets.only(left: 20,bottom: 10),
             child: Expanded(
                flex: 1,
                child: Text(
                  AppTexts.topPics,
                  style:
                      const TextStyle(fontWeight: FontWeight.w700, fontSize: 28),
                )),
           ),
          Expanded(
            flex: 5,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                const Gap(20),
                TopCard(cardColor: AppColors.accent),
                const Gap(20),
                TopCard(cardColor: AppColors.offerCard),
                const Gap(20),
              ],
            ),),
        ],
      )
    );
  }
}

