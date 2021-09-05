import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

import '../../../constants/strings.dart';

class JobDescription extends StatelessWidget {
  const JobDescription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.only(
        left: 20,
        bottom: 20,
        top: 15,
        right: 20,
      ),
      margin: const EdgeInsets.only(
        bottom: 20,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "JOB BESCHREIBUNG",
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
          Text(
            Strings.exampleDescription(),
          )
        ],
      ),
    );
  }
}
