import 'package:craft/ui/screens/splash.dart';
import 'package:craft/ui/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return   MaterialApp (
      home: Scaffold(
        appBar: AppBar(),
        body: const Column(
          children: [
            CustomTextField(text: "UserName"),
          ],
        ),
      )
    );
  }
}
