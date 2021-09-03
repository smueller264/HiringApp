import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import 'provider/home_screen_provider.dart';
import 'pages/jobs_page.dart';
import 'pages/welcome_page.dart';
import 'widgets/home_tile.dart';
import 'widgets/page_view_headline_text.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<HomeScreenProvider>(
        builder: (context, homeScreenProvider, child) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Flexible(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    PageViewHeadlineText(
                      headline: "Willkommen",
                      index: 0,
                    ),
                    PageViewHeadlineText(
                      headline: "Jobs",
                      index: 1,
                    ),
                  ],
                ),
              ),
              Flexible(
                fit: FlexFit.loose,
                child: PageView(
                  onPageChanged: (newIndex) =>
                      homeScreenProvider.onScroll(newIndex),
                  children: [
                    JobsPage(),
                    WelcomePage(),
                  ],
                  controller: homeScreenProvider.pageController,
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
