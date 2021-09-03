import 'package:flutter/material.dart';

class PageViewHeadlineText extends StatelessWidget {
  const PageViewHeadlineText({Key? key, this.headline}) : super(key: key);

  final headline;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        headline,
        style: TextStyle(),
      ),
    );
  }
}
