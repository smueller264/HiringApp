import 'package:flutter/material.dart';

class JobApplyButton extends StatelessWidget {
  const JobApplyButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        backgroundColor: Colors.pink,
        primary: Colors.black,
        side: BorderSide(
          color: Colors.black,
          width: 0,
        ),
        minimumSize: Size(379.0, 56.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      onPressed: () {},
      child: Text(
        "Jetzt bewerben",
      ),
    );
  }
}
