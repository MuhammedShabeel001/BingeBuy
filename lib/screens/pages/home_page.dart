import 'package:bingebuy/screens/widgets/custom_appbar.dart';
import 'package:bingebuy/screens/widgets/custom_navbar.dart';
import 'package:bingebuy/screens/widgets/today_tab.dart';
import 'package:bingebuy/screens/widgets/top_bar.dart';
import 'package:bingebuy/screens/widgets/top_picks.dart';
import 'package:bingebuy/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      appBar: const PreferredSize(
          preferredSize: Size.fromHeight(70), child: CustomAppbar()),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: ListView(
          children: [
            const TopBar(),
            const Gap(20),
            TodayTab(),
            TopPicks(),
            const Gap(20),
            Container(
              color: Colors.orangeAccent,
              height: 240,
            ),
            const Gap(20),
            Container(
              color: Colors.greenAccent,
              height: 200,
            ),
            const Gap(20),
            Container(
              color: Colors.redAccent,
              height: 90,
            ),
            const Gap(20),
            Container(
              color: Colors.yellow,
              height: 320,
            ),
            const Gap(20),
            Container(
              color: Colors.redAccent,
              height: 160,
            ),
            const Gap(20),
          ],
        ),
      ),
      bottomNavigationBar: const CustomNavbar(),
    );
  }
}


