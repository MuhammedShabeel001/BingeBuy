import 'package:flutter/material.dart';

import '../../utils/app_colors.dart';

class Loading extends StatelessWidget {
  const Loading({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: SizedBox(
        height: 28,
        width: 28,
        child: CircularProgressIndicator(
          color: AppColors.accent,
          strokeWidth: 3,
        ),
      ),
    );
  }
}
