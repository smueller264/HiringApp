import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

import '../../../themes/device_size.dart';
import 'package:hiringapp/screens/home/widgets/job_tile_bottom_text.dart';
import '../../../models/job.dart';
import '../../job/job_screen.dart';

class JobTile extends StatelessWidget {
  const JobTile({
    Key? key,
    required this.job,
  }) : super(key: key);

  final Job job;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.of(context).pushNamed(JobScreen.routeName),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 20),
          child: Container(
            height: 120,
            width: DeviceSize.width(context) * 0.9,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 7), // changes position of shadow
                ),
              ],
              color: Colors.white,
              borderRadius: BorderRadius.all(
                Radius.circular(15.0),
              ),
            ),
            child: Column(
              children: [
                ListTile(
                  leading: Padding(
                    padding: const EdgeInsets.only(
                      top: 15,
                      right: 15,
                    ),
                    child: Image.asset("assets/images/logo.png"),
                  ),
                  title: Padding(
                    padding: const EdgeInsets.only(top: 12.0, bottom: 3),
                    child: Text(
                      job.title,
                      style: GoogleFonts.roboto(
                        textStyle: TextStyle(
                            color: Colors.black,
                            letterSpacing: .5,
                            fontSize: 20),
                      ),
                    ),
                  ),
                  subtitle: Text(
                    job.company,
                    style: GoogleFonts.roboto(
                      textStyle: TextStyle(
                          color: Colors.black, letterSpacing: .5, fontSize: 16),
                    ),
                  ),
                ),
                Expanded(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      JobTileBottomText(
                        text: job.jobNature.toString(),
                        height: 25,
                        width: 70,
                        margin: EdgeInsets.only(
                          left: 20,
                        ),
                      ),
                      JobTileBottomText(
                        text: job.location,
                        height: 25,
                        width: 70,
                        margin: EdgeInsets.only(
                          left: 20,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
