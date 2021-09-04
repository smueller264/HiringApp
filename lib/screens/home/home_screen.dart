import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import 'provider/home_screen_provider.dart';
import 'pages/jobs_page.dart';
import 'pages/welcome_page.dart';
import 'widgets/home_tile.dart';
import 'widgets/page_view_headline_text_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<HomeScreenProvider>(
        builder: (context, homeScreenProvider, child) {
          return Column(
            children: [
              Flexible(
                flex: 0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    PageViewHeadlineTextButton(
                      headline: "Willkommen",
                      index: 0,
                    ),
                    PageViewHeadlineTextButton(
                      headline: "Jobs",
                      index: 1,
                    ),
                  ],
                ),
              ),
              Expanded(
                child: PageView(
                  onPageChanged: (newIndex) =>
                      homeScreenProvider.onScroll(newIndex),
                  children: [
                    WelcomePage(),
                    JobsPage(),
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
