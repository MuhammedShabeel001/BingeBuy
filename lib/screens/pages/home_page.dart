import 'package:bingebuy/screens/widgets/custom_appbar.dart';
import 'package:bingebuy/screens/widgets/custom_navbar.dart';
import 'package:bingebuy/screens/widgets/today_tab.dart';
import 'package:bingebuy/screens/widgets/top_bar.dart';
import 'package:bingebuy/screens/widgets/top_picks.dart';
import 'package:bingebuy/screens/widgets/trending.dart';
import 'package:bingebuy/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../widgets/craze_deals.dart';
import '../widgets/earn_and_refer.dart';
import '../widgets/near_by.dart';
import '../widgets/view_all_button.dart';

//main home page

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      appBar: const CustomAppBar(),
      body: ListView(
        children: [
          const TopBar(),
          const Gap(20),
          TodayTab(),
          const TopPicks(),
          const Gap(20),
          const Trending(),
          const Gap(20),
          const CrazeDeals(),
          const Gap(20),
          const EarnAndRefer(),
          const Gap(20),
          const NearBy(),
          const Gap(20),
          const ViewAll(),
          const Gap(20),
        ],
      ),
      bottomNavigationBar: const CustomNavbar(),
    );
  }
}
