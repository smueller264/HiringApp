import 'package:flutter/material.dart';

import '../widgets/job_fact_tile.dart';

class JobFacts extends StatelessWidget {
  const JobFacts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.only(left: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Flexible(
            fit: FlexFit.tight,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                JobFactTile(
                  header: "BEWERBEN BIS",
                  text: "30. Juli 2021",
                ),
                JobFactTile(
                  header: "GEHALT",
                  text: "\$100k - \$120k/yearly",
                ),
              ],
            ),
          ),
          Flexible(
            fit: FlexFit.tight,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                JobFactTile(
                  header: "JOB NATURE",
                  text: "Vollzeit",
                  showAsJobType: true,
                ),
                JobFactTile(
                  header: "JOB LOCATION",
                  text: "Remote",
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
