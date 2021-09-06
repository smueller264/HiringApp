import 'package:flutter/material.dart';

class ArticleScreen extends StatelessWidget {
  const ArticleScreen({Key? key}) : super(key: key);

  static const String routeName = "/articleScreen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Color.fromRGBO(128, 102, 255, 1),
              ),
              child: Image.asset("assets/images/dxc1.png"),
            ),
          ],
        ),
      ),
    );
  }
}
