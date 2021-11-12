import 'package:flutter/material.dart';

import '../../themes/device_size.dart';
import '../../themes/markdown_theme.dart';
import '../../services/markdown_service.dart';

import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:url_launcher/url_launcher.dart';

class ArticleScreen extends StatelessWidget {
  const ArticleScreen({Key? key}) : super(key: key);

  static const String routeName = "/articleScreen";

  @override
  Widget build(BuildContext context) {
    final tag = ModalRoute.of(context)!.settings.arguments!;
    return Scaffold(
      body: //SingleChildScrollView(
          SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
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
              padding: const EdgeInsets.symmetric(
                horizontal: 8,
              ),
              child: FutureBuilder(
                future: MarkdownService.instance.getAsset(context, "aboutDXC"),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return MarkdownBody(
                      styleSheet: MarkdownTheme.markdownTheme,
                      shrinkWrap: true,
                      onTapLink: (
                        text,
                        href,
                        title,
                      ) {
                        launch(href!);
                      },
                      data: snapshot.data.toString(),
                    );
                  } else {
                    return Center(
                      child: Text("noData"),
                    );
                  }
                },
              ),
            ),
          ],
        ),
      ),
      // child: Column(
      //   crossAxisAlignment: CrossAxisAlignment.start,
      //   mainAxisSize: MainAxisSize.min,
      //   mainAxisAlignment: MainAxisAlignment.start,
      //   children: [
      //     Hero(
      //       tag: tag,
      //       child: Container(
      //         margin: EdgeInsets.only(bottom: 20),
      //         height: DeviceSize.height(context) * 0.35,
      //         decoration: BoxDecoration(
      //           color: Color.fromRGBO(128, 102, 255, 1),
      //         ),
      //         child: Image.asset("assets/images/dxc1.png"),
      //       ),
      //     ),

      //       FutureBuilder(
      //         future: MarkdownService.instance.getAsset(context, "aboutDXC"),
      //         builder: (context, snapshot) {
      //           if (snapshot.hasData) {
      //             return Markdown(data: snapshot.data.toString());
      //           } else {
      //             return Center(
      //               child: Text("noData"),
      //             );
      //           }
      //         },
      //       ),

      //   ],
      // ),
    );
  }
}
