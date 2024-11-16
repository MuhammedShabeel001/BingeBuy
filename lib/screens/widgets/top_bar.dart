import 'package:bingebuy/utils/app_assets.dart';
import 'package:bingebuy/utils/app_colors.dart';
import 'package:bingebuy/utils/app_texts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class TopBar extends StatelessWidget {
  const TopBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      child: Row(
        children: [
          Flexible(
            flex: 6,
            child: TextField(
              cursorColor: AppColors.accent,
              decoration: InputDecoration(
                filled: true,
                fillColor: AppColors.searchbar,
                hintText: AppTexts.search,
                hintStyle: const TextStyle(fontSize: 20, color: Colors.grey),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide.none,
                ),
                suffixIcon: Padding(
                  padding: const EdgeInsets.all(10),
                  child: SvgPicture.asset(
                    AppAssets.search,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),
          ),
          Flexible(
            flex: 1,
            child: Center(
              child: GestureDetector(
                onTap: () => Navigator.pushNamed(context, '/notifications'),
                child: SvgPicture.asset(
                  AppAssets.notification,
                ),
              ),
            ),
          ),
          Flexible(
            flex: 1,
            child: Center(
              child: SvgPicture.asset(
                AppAssets.tag,
              ),
            ),
          )
        ],
      ),
    );
  }
}
