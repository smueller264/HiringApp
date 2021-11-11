import 'dart:async' show Future;
import 'package:flutter/material.dart';

///Service Class to serve Markdown Files from the asset folder
class MarkdownService {
  //Singleton
  MarkdownService._();
  static final instance = MarkdownService._();

  Future<String> getAsset(BuildContext context, String assetName) async {
    return DefaultAssetBundle.of(context)
        .loadString('assets/content/$assetName.md');
  }
}
