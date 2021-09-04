import 'package:flutter/material.dart';

///Class containing functions returning the [height] and [width] of the current device.
class DeviceSize {
  ///Returns [MediaQuery.of(context).size.height]
  static double height(BuildContext context) =>
      MediaQuery.of(context).size.height;

  ///Returns [MediaQuery.of(context).size.width]
  static double width(BuildContext context) =>
      MediaQuery.of(context).size.width;
}
