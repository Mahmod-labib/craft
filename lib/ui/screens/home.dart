import 'package:craft/ui/widgets/custom_text_field.dart';
import 'package:craft/utils/responsive/responsive.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return   MaterialApp (
      home: Scaffold(
        appBar: AppBar(),
        body:   Column(
          children: [

            Padding(
              padding: EdgeInsets.all(6.sp),
              child: const CustomTextField(text: "UserName"),
            ),
            SizedBox(height: 20.sp,),
            SizedBox(
              width: 300.w,
              height: 100.h,
            )

          ],
        ),
      )
    );
  }
}
