import 'package:abe_app/screens/common_screen.dart';
import 'package:abe_app/screens/login_screen.dart/login.dart';
import 'package:flutter/material.dart';

class TabControllers extends StatelessWidget {
  const TabControllers({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 4,
        child: Column(
          children: [
            Expanded(
                child: TabBarView(children: [
              CommonScreen(
                path1: 'assets/two.png',
                dotpic: 'assets/startingdot.png',
                navigatorpic: 'assets/navigar1.png',
              ),
              CommonScreen(
                path1: 'assets/three.png',
                dotpic: 'assets/middledot.png',
                navigatorpic: 'assets/navigator2.png',
              ),
              CommonScreen(
                path1: 'assets/four.png',
                dotpic: 'assets/lastdot.png',
                navigatorpic: 'assets/navigator2.png',
              ),
              Login()
            ]))
          ],
        ),
      ),
    );
  }
}
