import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class JobRoles extends StatelessWidget {
  const JobRoles({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.white,
      padding: const EdgeInsets.only(
        left: 20,
        bottom: 20,
        top: 15,
        right: 20,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "ROLES AND RESPONSIBILITIES",
            style: GoogleFonts.roboto(
                textStyle: TextStyle(
                  color: Colors.black,
                ),
                fontSize: 13,
                letterSpacing: 0.4,
                fontWeight: FontWeight.w600),
          ),
          SizedBox(
            height: 20,
          ),
          Text("- Role 1"),
          SizedBox(
            height: 1,
          ),
          Text("- Role 2"),
          SizedBox(
            height: 1,
          ),
          Text("- Role 3"),
          SizedBox(
            height: 1,
          ),
          Text("- Role 4"),
        ],
      ),
    );
  }
}
