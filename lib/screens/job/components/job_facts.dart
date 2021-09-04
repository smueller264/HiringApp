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
                JobFactTile(header: "Bewerben bis"),
                JobFactTile(header: "Gehalt"),
              ],
            ),
          ),
          Flexible(
            fit: FlexFit.tight,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                JobFactTile(header: "Job Nature"),
                JobFactTile(header: "Job Location"),
              ],
            ),
          )
        ],
      ),
    );
  }
}
