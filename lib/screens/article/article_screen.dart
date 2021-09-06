import 'package:flutter/material.dart';

import '../../themes/device_size.dart';

class ArticleScreen extends StatelessWidget {
  const ArticleScreen({Key? key}) : super(key: key);

  static const String routeName = "/articleScreen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: DeviceSize.height(context) * 0.35,
              decoration: BoxDecoration(
                color: Color.fromRGBO(128, 102, 255, 1),
              ),
              child: Image.asset("assets/images/dxc1.png"),
            ),
            Placeholder(),
          ],
        ),
      ),
    );
  }
}
