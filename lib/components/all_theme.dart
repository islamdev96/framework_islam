import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: non_constant_identifier_names
Color ThemeBackgroundColorPage(BuildContext context) {
  return const Color(0xFF090C22);

  //  Color(0xff15E6BC);
}

// ignore: non_constant_identifier_names
Text ThemeTextAllApp(BuildContext context, {required String text}) {
  return Text(text,
      style: TextStyle(
          color: Colors.black, fontSize: 20.sp, fontWeight: FontWeight.bold));
}
