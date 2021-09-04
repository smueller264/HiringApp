import 'package:flutter/material.dart';

import '../../../themes/device_size.dart';

class JobApplyButton extends StatelessWidget {
  const JobApplyButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 20),
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          backgroundColor: Colors.deepPurpleAccent,
          primary: Colors.white,
          side: BorderSide(
            color: Colors.black,
            width: 0,
          ),
          minimumSize: Size(DeviceSize.width(context) - 20, 56),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        onPressed: () {},
        child: Text(
          "Jetzt bewerben",
          style: TextStyle(
            fontSize: 15,
          ),
        ),
      ),
    );
  }
}
