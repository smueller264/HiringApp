import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import 'package:hiringapp/screens/home/widgets/job_tile.dart';
import '../widgets/home_tile.dart';
import '../../../models/job.dart';
import '../provider/jobs_provider.dart';

class JobsPage extends StatelessWidget {
  JobsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print("build jobspage");
    return Consumer<JobsProvider>(
      builder: (context, provider, _) {
        return RefreshIndicator(
          onRefresh: () => provider.updateJobs(),
          child: FutureBuilder(
            future: provider.jobs,
            builder: (context, AsyncSnapshot<List<Job>> snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                return ListView.builder(
                  shrinkWrap: true,
                  itemCount: snapshot.data!.length,
                  itemBuilder: (context, index) {
                    return JobTile(job: snapshot.data![index]);
                  },
                );
              } else {
                return (CircularProgressIndicator());
              }
            },
          ),
        );
      },
    );
  }
}
