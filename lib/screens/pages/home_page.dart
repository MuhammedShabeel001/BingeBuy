import 'package:bingebuy/screens/widgets/custom_appbar.dart';
import 'package:bingebuy/screens/widgets/custom_navbar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(preferredSize: Size.fromHeight(180), child:CustomAppbar()),
      body: Center(
        child:  Text('data'),
      ),
      bottomNavigationBar: CustomNavbar(),
    
    );
  }
}



