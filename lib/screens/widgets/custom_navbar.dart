import 'package:bingebuy/utils/app_assets.dart';
import 'package:bingebuy/utils/app_colors.dart';
import 'package:bingebuy/utils/app_texts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomNavbar extends StatelessWidget {
  const CustomNavbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 25,
      child: SizedBox(
        height: 74,
        child: BottomNavigationBar(
          backgroundColor: AppColors.primary,
          type: BottomNavigationBarType.fixed,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: SvgPicture.asset(AppAssets.home),
              label: AppTexts.home,
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(AppAssets.cart),
              label: AppTexts.cart,
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(AppAssets.myOrder),
              label: AppTexts.myOrder,
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(AppAssets.account),
              label: AppTexts.account,
            ),
          ],
        ),
      ),
    );
  }
}
