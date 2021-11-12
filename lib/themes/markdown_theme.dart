import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

///Theme Class for Markdown Text
class MarkdownTheme {
  static MarkdownStyleSheet markdownTheme = MarkdownStyleSheet(
      h1: GoogleFonts.roboto(
        fontSize: 25,
      ),
      h2: GoogleFonts.roboto(
        fontSize: 60,
      ),
      p: GoogleFonts.roboto(
        fontSize: 15,
      ));
}
