import 'package:flutter/material.dart';

import 'package:hiringapp/screens/home/widgets/job_tile.dart';
import '../widgets/home_tile.dart';
import '../../../models/job.dart';

class JobsPage extends StatelessWidget {
  JobsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: 10,
      itemBuilder: (context, index) {
        return JobTile(
          job: exampleJob,
        );
      },
    );
  }
}
