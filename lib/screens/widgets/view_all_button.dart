
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
      // color: Colors.redAccent,
      height: 80,
      child: Center(
        child:  SizedBox(
              width: 240, height: 40,
              child: TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    foregroundColor: AppColors.textLight,
                    backgroundColor: AppColors.accent, // Text color
                    minimumSize:
                        const Size(240, 40), //  Width and height of the button
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                          10), // Match the rounded corners if needed
                    ),
                  ),
                  child: Text(AppTexts.viewAll, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),)),
              //color: Colors.green
            ), 
      ),
    );
  }
}

