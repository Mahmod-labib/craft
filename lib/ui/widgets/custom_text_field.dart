import 'package:craft/utils/material-theme/color_schemes.g.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText:text=='Password'? true : false,
      cursorColor: lightColorScheme.onErrorContainer,
      decoration: InputDecoration(
        hintText: text,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide:  BorderSide(color: lightColorScheme.primary),
        ),
        focusedBorder:  OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide:  BorderSide(color: lightColorScheme.primary),
        ),
      ),
    );

  }
}
