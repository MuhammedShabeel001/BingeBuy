// import 'package:bingebuy/utils/app_assets.dart';
// import 'package:bingebuy/utils/app_colors.dart';
// import 'package:bingebuy/utils/app_texts.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';

// class CustomAppbar extends StatelessWidget {
//   const CustomAppbar({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return AppBar(
//       backgroundColor: AppColors.primary,
//       title: Row(
//         children: [
//           Padding(  
//             padding: const EdgeInsets.all(8.0),
//             child: SvgPicture.asset(AppAssets.location),
//           ),
//           Text(AppTexts.location, style: const TextStyle(fontWeight: FontWeight.bold),),
//           Padding(
//             padding: const EdgeInsets.only(left: 10),
//             child: SvgPicture.asset(AppAssets.downArrow),
//           ),
          
//         ],
//       ),
//       surfaceTintColor: AppColors.primary,
//       elevation: 4, 
//       // shadowColor: AppColors.background,
//     );
//   }

//   @override
//   Size get preferredSize => const Size.fromHeight(kToolbarHeight);
// }

import 'package:bingebuy/utils/app_assets.dart';
import 'package:bingebuy/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../utils/app_texts.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  // final String title;
  final VoidCallback? onBackTap;

  const CustomAppBar({
    super.key,
    // required this.title,
    this.onBackTap,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.primary,
      title: Row(
        children: [
          Padding(  
            padding: const EdgeInsets.all(8.0),
            child: SvgPicture.asset(AppAssets.location),
          ),
          Text(AppTexts.location, style: const TextStyle(fontWeight: FontWeight.bold),),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: SvgPicture.asset(AppAssets.downArrow),
          ),
          
        ],
      ),
      surfaceTintColor: AppColors.primary,
      elevation: 4, 
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
