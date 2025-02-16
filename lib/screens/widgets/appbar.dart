import 'package:bingebuy/utils/app_assets.dart';
import 'package:bingebuy/utils/app_colors.dart';
import 'package:bingebuy/utils/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

//notification page appbar

class BBAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final VoidCallback? onBackTap;

  const BBAppBar({
    super.key,
    required this.title,
    this.onBackTap,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Padding(
        padding: const EdgeInsets.all(12.0),
        child: GestureDetector(
          onTap: onBackTap ?? () => Navigator.pop(context),
          child: SvgPicture.asset(AppAssets.back),
        ),
      ),
      title: Text(
        title,
        style: AppTextStyle.apphead,
      ),
      elevation: 2,
      shadowColor: AppColors.background,
      backgroundColor: AppColors.primary,
      surfaceTintColor: AppColors.primary,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
