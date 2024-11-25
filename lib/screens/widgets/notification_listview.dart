import 'package:bingebuy/screens/widgets/subtitle.dart';
import 'package:bingebuy/utils/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../providers/notification_provider.dart';

ListView bulilListview(NotificationProvider provider) {
  return ListView.separated(
    itemCount: provider.notifications.length,
    separatorBuilder: (context, index) => const Divider(),
    itemBuilder: (context, index) {
      final notification = provider.notifications[index];

      return ListTile(
        leading: Column(
          children: [
            SvgPicture.asset(AppAssets.icon),
          ],
        ),
        title: Text(
          notification.title,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
        ),
        subtitle: buildSubTitle(notification),
      );
    },
  );
}
