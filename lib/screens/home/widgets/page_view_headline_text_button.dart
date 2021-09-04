import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../provider/home_screen_provider.dart';

class PageViewHeadlineTextButton extends StatelessWidget {
  const PageViewHeadlineTextButton({Key? key, this.headline, this.index})
      : super(key: key);

  final headline;
  final index;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 100),
      child: TextButton(
        onPressed: () =>
            context.read<HomeScreenProvider>().currentPageIndex = index,
        child: AnimatedOpacity(
          opacity:
              context.watch<HomeScreenProvider>().isActive(index) ? 1.0 : 0.3,
          duration: const Duration(milliseconds: 100),
          child: Text(
            headline,
            style: GoogleFonts.roboto(
              textStyle: TextStyle(
                fontSize: 26,
                color: Colors.black,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
