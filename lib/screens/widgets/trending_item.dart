import 'package:bingebuy/screens/widgets/trending_card.dart';
import 'package:flutter/material.dart';

class TrendingItem extends StatelessWidget {
  const TrendingItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: 300,
      child: Column(
        children: [
          Expanded(
            flex: 1,
            child: TrendingCard(),
          ),
          Expanded(
            flex: 1,
            child: TrendingCard(),
          ),
        ],
      ),
    );
  }
}
