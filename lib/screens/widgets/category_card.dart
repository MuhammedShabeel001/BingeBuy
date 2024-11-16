import 'package:bingebuy/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CategoryCard extends StatelessWidget {
  final Category category;

  const CategoryCard({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              height: 80,
              width: 80,
              decoration: BoxDecoration(
                color: AppColors.primary,
                borderRadius: BorderRadius.circular(5),
                boxShadow: const [
                  BoxShadow(
                    color: AppColors.shadow,
                    spreadRadius: 0,
                    blurRadius: 5,
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: SvgPicture.asset(
                  category.iconPath,
                  height: 40,
                  width: 40,
                ),
              ),
            ),
            if (category.discount != null)
              Positioned(
                top: 0,
                right: 0,
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                  decoration: BoxDecoration(
                    color: AppColors.offerCard,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Text(
                    category.discount!,
                    style: const TextStyle(color: Colors.white, fontSize: 10),
                  ),
                ),
              ),
          ],
        ),
        SizedBox(
          width: 80,
          height: 40,
          child: Center(
            child: Text(
              maxLines: 2,
              overflow: TextOverflow.clip,
              category.name,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 14,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ],
    );
  }
}

class Category {
  final String name;
  final String iconPath;
  final String? discount;

  Category({required this.name, required this.iconPath, this.discount});
}
