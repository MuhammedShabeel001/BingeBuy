import 'package:bingebuy/providers/notification_provider.dart';
import 'package:bingebuy/utils/app_routes.dart';
import 'package:bingebuy/utils/route_manager.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => NotificationProvider()..fetchNotifications(),)
      ],
      child:
       const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Binge Buy',
      theme: ThemeData(
        fontFamily: 'Quicksand'
      ),
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.home,
      onGenerateRoute: RouteManager.generateRoute,
      // home: HomePage(),
    );
  }
}
