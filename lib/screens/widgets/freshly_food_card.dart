import 'package:bingebuy/utils/app_assets.dart';
import 'package:bingebuy/utils/app_colors.dart';
import 'package:bingebuy/utils/app_texts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

class FreshlyBakerCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
      // color: Colors.yellow,
      height: 140,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            child: Image.asset(AppAssets.foodImage),
          ),
          Gap(20),
          Expanded(
              child: Container(
            // color: Colors.orange,
            child: Column(
              children: [
                Expanded(
                  flex: 4,
                  child: Container(
                    // color: Colors.red,
                    child: Row(
                      children: [
                        Expanded(
                          flex: 4,
                          child: Container(
                            // color: Colors.pink,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              // mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(AppTexts.mainTitle, style: const TextStyle(fontSize: 22, fontWeight: FontWeight.w700),),
                                Text(AppTexts.locationTitle, style: const TextStyle(fontSize: 18),),
                                Text(AppTexts.kmTitle,style: const TextStyle(fontSize: 16)),
                                Gap(10),
                                Container(
                                  decoration: BoxDecoration(
                                    color: AppColors.searchbar,
                                    borderRadius: BorderRadius.circular(4)
                                  ),
                                  height: 16,width: 48,child: Center(child: Text(AppTexts.topStore,style: const TextStyle(fontSize: 8),)),)
                              ],
                            ),
                          ),
                        ),
                        Flexible(
                          child: Container(
                            // color: Colors.yellow,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SvgPicture.asset(AppAssets.star),
                                    Gap(5),
                                    Text(AppTexts.rating,style: const TextStyle(fontWeight: FontWeight.w600,fontSize: 18),),
                                  ],
                                ),
                                Text(AppTexts.times,style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w600,color: AppColors.button),),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Gap(8),
                Divider(
                  height: 2,
                ),
                Gap(8),
                Flexible(
                  child: Container(
                    // color: Colors.green,
                    child: Row(
                      children: [
                        SvgPicture.asset(AppAssets.discountIcon),
                        Gap(10),
                        Text(AppTexts.uptoOffer, style: TextStyle(fontWeight: FontWeight.w600,),),
                        Gap(20),
                        SvgPicture.asset(AppAssets.groceryIcon),
                        Gap(10),
                        Text(AppTexts.items, style: const TextStyle(fontWeight: FontWeight.w600),),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ))
        ],
      ),
    ));
  }
}
