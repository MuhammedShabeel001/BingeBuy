import 'package:bingebuy/screens/widgets/craze_card.dart';
import 'package:bingebuy/utils/app_texts.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class CrazeDeals extends StatelessWidget {
  const CrazeDeals({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // color: Colors.lightBlueAccent,
      height: 200,
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
           Padding(
             padding: const EdgeInsets.only(left: 20,bottom: 10),
             child: Expanded(
                flex: 1,
                child: Text(
                  AppTexts.crazeDeals,
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
                CrazeCard(),
                // TopCard(cardColor: AppColors.accent),
                const Gap(20),
                CrazeCard(),
                // TopCard(cardColor: AppColors.offerCard),
                const Gap(20),
              ],
            ),),
        ],
      )
    );
  }
}