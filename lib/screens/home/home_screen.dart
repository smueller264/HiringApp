import 'package:flutter/material.dart';

import 'widgets/home_tile.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: HomeTile(),
      ),
    );
  }
}
