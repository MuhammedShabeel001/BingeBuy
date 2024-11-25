import 'package:flutter/material.dart';

import 'app_colors.dart';

class AppTextStyle {
  static TextStyle apphead = const TextStyle(fontWeight: FontWeight.w700);
  static TextStyle buttonText =
      const TextStyle(fontSize: 18, fontWeight: FontWeight.bold);
  static TextStyle seeAll = const TextStyle(
      fontWeight: FontWeight.w700, fontSize: 18, color: AppColors.accent);
  static TextStyle title =
      const TextStyle(fontWeight: FontWeight.w700, fontSize: 28);

  // static TextStyle hintStyle = const TextStyle(fontSize: 20, color: Colors.grey);
  static TextStyle hintStyle =
      const TextStyle(fontSize: 20, color: Colors.grey);
}
