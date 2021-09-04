import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class JobTileBottomText extends StatelessWidget {
  const JobTileBottomText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20),
      height: 25,
      width: 70,
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.3),
        borderRadius: BorderRadius.all(
          Radius.circular(15.0),
        ),
      ),
      child: Center(
        child: Text("Remote"),
      ),
    );
  }
}
