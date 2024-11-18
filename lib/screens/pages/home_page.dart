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

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      appBar: const PreferredSize(
          preferredSize: Size.fromHeight(70), child: CustomAppbar()),
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
          EarnAndRefer(),
          const Gap(20),
          NearBy(),
          const Gap(20),
          ViewAll(),
          const Gap(20),
        ],
      ),
      bottomNavigationBar: const CustomNavbar(),
    );
  }
}


