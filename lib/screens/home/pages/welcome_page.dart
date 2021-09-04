import 'package:flutter/material.dart';

import '../widgets/home_tile.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: HomeTile(),
    );
  }
}
