import 'package:craft/utils/material-theme/color_schemes.g.dart';
import 'package:flutter/material.dart';
class CustomButtonOutlined extends StatelessWidget {
  const CustomButtonOutlined({super.key, this.leftIcon, required this.label});


  final Widget? leftIcon;

  final String? label;

  get rightIcon => null;
  @override
  Widget build(BuildContext context) {

    return  Container(
      height: 56,
      width: double.infinity,
      decoration: BoxDecoration(
          color: lightColorScheme.background,
          borderRadius: BorderRadius.circular(24),
          boxShadow: [
            BoxShadow(
                color: Colors.grey,
                blurRadius: 0.5,
                spreadRadius: 0.5,
                offset: Offset.fromDirection(90))
          ]),
      margin: const EdgeInsets.all(8),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          leftIcon ??  const SizedBox.shrink(),
      Text(
        label! ,
        style: TextStyle(fontSize: 20 , color: lightColorScheme.shadow)),
          rightIcon ?? const SizedBox.shrink(),
        ],
      ),

    );
  }
}
