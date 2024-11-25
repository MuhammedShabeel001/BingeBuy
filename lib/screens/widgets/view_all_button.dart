import 'package:bingebuy/utils/app_text_style.dart';
import 'package:flutter/material.dart';

import '../../utils/app_colors.dart';
import '../../utils/app_texts.dart';

class ViewAll extends StatelessWidget {
  const ViewAll({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: Center(
        child: SizedBox(
          width: 240,
          height: 40,
          child: TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                foregroundColor: AppColors.textLight,
                backgroundColor: AppColors.accent,
                minimumSize: const Size(240, 40),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: Text(
                AppTexts.viewAll,
                style: AppTextStyle.buttonText,
              )),
        ),
      ),
    );
  }
}
