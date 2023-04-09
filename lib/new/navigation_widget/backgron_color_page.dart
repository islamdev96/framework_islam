import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// import '../../../core/constant/resources/color_manager.dart';

// ignore: must_be_immutable
class BackgroundColorPage extends StatelessWidget {
  BackgroundColorPage({Key? key, this.text, this.color, this.onTap})
      : super(key: key);
  String? text;
  Color? color;
  Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            decoration: const BoxDecoration(
              boxShadow: <BoxShadow>[
                BoxShadow(
                    // color: ColorManager.kPrimary,
                    blurRadius: 2.0,
                    spreadRadius: 1.0,
                    // offset: Offset(-1.0, 1.0),
                    blurStyle: BlurStyle.solid),
              ],
              borderRadius: BorderRadius.only(
                topLeft: Radius.zero,
                topRight: Radius.zero,
                bottomLeft: Radius.circular(200.0),
                // bottomRight: Radius.circular(200.0),
              ),
            ),
            height: 75.0.h,
            width: double.infinity,
            alignment: Alignment.center,
            child: Padding(
              padding: EdgeInsets.only(bottom: 30.h),
              child: Text(
                text!,
                style: TextStyle(fontSize: 18.sp, color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
