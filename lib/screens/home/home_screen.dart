import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import 'widgets/home_tile.dart';
import 'provider/home_screen_provider.dart';
import 'pages/jobs_page.dart';
import 'pages/welcome_page.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<HomeScreenProvider>(
        builder: (context, homeScreenProvider, child) {
          return PageView(
            children: [
              JobsPage(),
              WelcomePage(),
            ],
            controller: homeScreenProvider.pageController,
          );
        },
      ),
    );
  }
}
