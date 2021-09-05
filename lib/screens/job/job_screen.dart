import 'package:flutter/material.dart';

import 'components/job_screen_header.dart';
import 'components/job_facts.dart';
import 'components/job_description.dart';
import 'components/job_roles.dart';

class JobScreen extends StatelessWidget {
  const JobScreen({Key? key}) : super(key: key);

  static const String routeName = "/jobScreen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[50],
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            JobScreenHeader(),
            JobFacts(),
            JobDescription(),
            JobRoles(),
          ],
        ),
      ),
    );
  }
}
