import 'package:flutter/material.dart';

import '../../themes/device_size.dart';
import '../../constants/strings.dart';

class ArticleScreen extends StatelessWidget {
  const ArticleScreen({Key? key}) : super(key: key);

  static const String routeName = "/articleScreen";

  @override
  Widget build(BuildContext context) {
    final tag = ModalRoute.of(context)!.settings.arguments!;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Hero(
              tag: tag,
              child: Container(
                margin: EdgeInsets.only(bottom: 20),
                height: DeviceSize.height(context) * 0.35,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(128, 102, 255, 1),
                ),
                child: Image.asset("assets/images/dxc1.png"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text("DISCOVER DXC"),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 2, bottom: 10),
              child: Text(
                "Was ist DXC",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 20, top: 2, bottom: 30, right: 10),
              child: Text(
                Strings.exampleText1(),
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 20, top: 2, bottom: 30, right: 10),
              child: Text(
                Strings.exampleText1(),
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 20, top: 2, bottom: 30, right: 10),
              child: Text(
                Strings.exampleText1(),
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
