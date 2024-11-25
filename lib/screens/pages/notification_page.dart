import 'package:bingebuy/screens/widgets/appbar.dart';
import 'package:bingebuy/screens/widgets/loading.dart';
import 'package:bingebuy/utils/app_colors.dart';
import 'package:bingebuy/utils/app_texts.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../providers/notification_provider.dart';
import '../widgets/notification_listview.dart';

//notification page

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      appBar: BBAppBar(title: AppTexts.notification),
      body: Consumer<NotificationProvider>(
        builder: (context, provider, _) {
          if (provider.notifications.isEmpty) {
            return const Loading();
          }
          return bulilListview(provider);
        },
      ),
    );
  }
}
