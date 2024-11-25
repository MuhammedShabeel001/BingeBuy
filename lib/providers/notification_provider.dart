import 'package:bingebuy/services/api_service.dart';
import 'package:flutter/foundation.dart';

import '../model/notification_model.dart';

class NotificationProvider with ChangeNotifier {
  List<NotificationModel> _notifications = [];

  List<NotificationModel> get notifications => _notifications;

  //fn to fetch the notification from api

  Future<void> fetchNotifications() async {
    try {
      final notifications = await fetchNotificationsInIsolate();

      _notifications = notifications;
      notifyListeners();
    } catch (e) {
      rethrow;
    }
  }
}
