import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    required this.text,
    this.backgroundColor = Colors.red,
    required this.onPressed, required this.width, required this.height,
  }) : super(key: key);

  final String text;
  final Color backgroundColor;
  final Function() onPressed;
  final double width;
  final double height;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        width:width ,
        height: height,
        // alignment: Alignment.center,
        decoration: BoxDecoration(
            color: backgroundColor,
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
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: const TextStyle(fontSize: 20,color: Colors.white, fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}