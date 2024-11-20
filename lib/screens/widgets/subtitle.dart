import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../controller/time_formate.dart';
import '../../model/notification_model.dart';
// import 'package:grocery_app/model/notfication_model.dart';
// import 'package:grocery_app/view/notification_screen.dart/widget/formated_time.dart';

Column buildSubTitle(NotificationModel notification) {
  return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
    Text(
      notification.body,
      style: const TextStyle(fontSize: 16),
    ),
    const Gap(6),
    Text(
      getFormattedTimestamp(notification.timestamp),
      style: const TextStyle(fontSize: 13),
    ),
  ]);
}
