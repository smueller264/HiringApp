import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

import '../../home/widgets/job_tile_bottom_text.dart';

class JobFactTile extends StatelessWidget {
  const JobFactTile({
    Key? key,
    required this.header,
    required this.text,
    this.showAsJobType = false,
  }) : super(key: key);

  final String header;
  final String text;
  final bool showAsJobType;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 15,
        bottom: 15,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            header,
            textAlign: TextAlign.left,
            style: GoogleFonts.roboto(
              textStyle: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w600,
              ),
              fontSize: 13,
              letterSpacing: 0.4,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          showAsJobType
              ? JobTileBottomText(
                  text: text,
                  height: 20,
                  width: 60,
                  margin: EdgeInsets.all(0),
                )
              : Text(
                  text,
                  textAlign: TextAlign.left,
                  style: GoogleFonts.roboto(
                    textStyle: TextStyle(
                      color: Colors.black,
                    ),
                    fontSize: 14,
                    letterSpacing: 0.4,
                  ),
                ),
        ],
      ),
    );
  }
}
