import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import 'screens/home/home_screen.dart';
import 'screens/home/provider/home_screen_provider.dart';
import 'screens/job/job_screen.dart';
import 'screens/article/article_screen.dart';
import 'screens/home/provider/jobs_provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hiring App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MultiProvider(
        providers: [
          ChangeNotifierProvider<HomeScreenProvider>(
            create: (context) => HomeScreenProvider(),
          ),
          ChangeNotifierProvider<JobsProvider>(
            create: (context) => JobsProvider(),
          )
        ],
        child: HomeScreen(),
      ),
      routes: {
        JobScreen.routeName: (context) => JobScreen(),
        ArticleScreen.routeName: (context) => ArticleScreen(),
      },
    );
  }
}
