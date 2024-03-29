import 'package:flutter/material.dart';

class SizeConfig {
  static double? screenWidth;
  static double? screenHeight;
  static double? defaultSize;
  static Orientation? orientation;

  void init(BuildContext context) {
    screenWidth = MediaQuery.of(context).size.width;
    screenHeight = MediaQuery.of(context).size.height;
    orientation = MediaQuery.of(context).orientation;

    defaultSize = orientation == Orientation.landscape
        ? screenHeight! * .024
        : screenWidth! * .024;
  }
}

class SizeHorizontal extends StatelessWidget {
  const SizeHorizontal({super.key, required this.value});
  final double value;

  @override
  Widget build(BuildContext context) {
    double defaultSize = SizeConfig.defaultSize ?? 10.0; // Provide a default value
    return SizedBox(
      width: defaultSize * value,
    );
  }
}

class SizeVertical extends StatelessWidget {
  const SizeVertical({super.key, required this.value});
  final double value;

  @override
  Widget build(BuildContext context) {
    double defaultSize = SizeConfig.defaultSize ?? 10.0; // Provide a default value
    return SizedBox(
      height: defaultSize * value,
    );
  }
}
