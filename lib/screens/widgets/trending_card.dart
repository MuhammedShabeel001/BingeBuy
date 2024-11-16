import 'package:bingebuy/utils/app_assets.dart';
import 'package:bingebuy/utils/app_texts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

class TrendingCard extends StatelessWidget {
  const TrendingCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.green,
      child: Row(
        children: [
          Container(
            width: 100,
            // color: Colors.orange,
            child: Image.asset(AppAssets.iceCream),
          ),
          Flexible(
            child: ListTile(
              title: Text(AppTexts.title,style: const TextStyle(fontSize: 23, fontWeight: FontWeight.bold),),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(AppTexts.subtitle, style:  const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),),
                  Text(AppTexts.kilometer,style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),),
                  Row(
                    children: [
                      SvgPicture.asset(AppAssets.star),
                      Gap(10),
                      Text(AppTexts.time,style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),),
                    ],
                  ), 
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
