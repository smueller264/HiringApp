import 'package:flutter/material.dart';

import '../widgets/home_tile.dart';

class JobsPage extends StatelessWidget {
  const JobsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: HomeTile(),
    );
  }
}
