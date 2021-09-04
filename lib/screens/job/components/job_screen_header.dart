import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class JobScreenHeader extends StatelessWidget {
  const JobScreenHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //Logo Section
          Container(
            margin: const EdgeInsets.only(top: 60, bottom: 30),
            child: Image.asset(
              "assets/images/logo.png",
              height: 50,
            ),
          ),
          //Job Description
          Container(
            margin: EdgeInsets.only(bottom: 5),
            child: Text(
              "Junior UX Designer",
              style: GoogleFonts.roboto(
                textStyle: TextStyle(
                  color: Colors.black,
                  letterSpacing: .5,
                  fontSize: 27,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 5),
            child: Text(
              "DXC",
              style: GoogleFonts.roboto(
                textStyle: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 10),
            child: Text(
              "Veröffentlicht am 20. Juli",
            ),
          ),
        ],
      ),
    );
  }
}
