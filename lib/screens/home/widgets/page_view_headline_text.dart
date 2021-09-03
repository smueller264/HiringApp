import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../provider/home_screen_provider.dart';

class PageViewHeadlineText extends StatelessWidget {
  const PageViewHeadlineText({Key? key, this.headline, this.index})
      : super(key: key);

  final headline;
  final index;

  @override
  Widget build(BuildContext context) {
    return Text(
      headline,
      style: GoogleFonts.roboto(
        textStyle: TextStyle(
          fontSize: 22,
          color: context.watch<HomeScreenProvider>().currentPageIndex == index
              ? Colors.green
              : Colors.black,
        ),
      ),
    );
  }
}
