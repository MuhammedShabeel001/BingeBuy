import 'package:bingebuy/screens/pages/home_page.dart';
import 'package:bingebuy/screens/pages/notification_page.dart';
import 'package:bingebuy/utils/app_routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RouteManager {
  static Route<dynamic>? generateRoute(RouteSettings settings){
    switch(settings.name){
      case AppRoutes.home:
        return CupertinoPageRoute(builder: (_) => HomePage(),);
      case AppRoutes.notification:
        return CupertinoPageRoute(builder: (_) => NotificationPage());

      default:
        return _errorRoute();

    }
  }

  static Route<dynamic> _errorRoute() {
    return CupertinoPageRoute(
      builder: (_) => Scaffold(
        appBar: AppBar(title: const Text('Error')),
        body: const Center(child: Text('Page not found')),
      ),
    );
  }
}