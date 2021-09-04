import 'package:flutter/material.dart';

class JobFactTile extends StatelessWidget {
  const JobFactTile({Key? key, required this.header}) : super(key: key);

  final String header;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(header),
          ),
          Text(header),
        ],
      ),
    );
  }
}
