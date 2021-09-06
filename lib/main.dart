import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import 'screens/home/home_screen.dart';
import 'screens/home/provider/home_screen_provider.dart';
import 'screens/job/job_screen.dart';
import 'screens/article/article_screen.dart';

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
      home: ChangeNotifierProvider<HomeScreenProvider>(
        child: HomeScreen(),
        create: (context) => HomeScreenProvider(),
      ),
      routes: {
        JobScreen.routeName: (context) => JobScreen(),
        ArticleScreen.routeName: (context) => ArticleScreen(),
      },
    );
  }
}
