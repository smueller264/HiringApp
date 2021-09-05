import 'package:flutter/material.dart';

import 'components/job_screen_header.dart';
import 'components/job_facts.dart';

class JobScreen extends StatelessWidget {
  const JobScreen({Key? key}) : super(key: key);

  static const String routeName = "/jobScreen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: SingleChildScrollView(
        child: Column(
          children: [
            JobScreenHeader(),
            JobFacts(),
          ],
        ),
      ),
    );
  }
}
