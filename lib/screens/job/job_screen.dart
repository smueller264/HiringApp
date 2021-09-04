import 'package:flutter/material.dart';

class JobScreen extends StatelessWidget {
  const JobScreen({Key? key}) : super(key: key);

  static const String routeName = "/jobScreen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Job Page"),
      ),
    );
  }
}
