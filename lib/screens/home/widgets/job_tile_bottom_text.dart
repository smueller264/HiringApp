import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class JobTileBottomText extends StatelessWidget {
  const JobTileBottomText({
    required this.height,
    required this.margin,
    required this.width,
    required this.text,
    Key? key,
  }) : super(key: key);

  final String text;
  final EdgeInsets margin;
  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: this.height,
      width: this.width,
      margin: this.margin,
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.3),
        borderRadius: BorderRadius.all(
          Radius.circular(15.0),
        ),
      ),
      child: Center(
        child: Text(text),
      ),
    );
  }
}
