import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class KeyWidget extends StatelessWidget {
  const KeyWidget({
    required this.marginStart,
    required this.image,
    required this.keyName,
    required this.keySpecs,
    super.key,
  });

  final double marginStart;
  final String image;
  final String keyName;
  final String keySpecs;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsetsDirectional.only(top: 10.h,start: 10.w),
      margin: EdgeInsetsDirectional.only(top: 20.h,start: marginStart.w),
      width: 100.w,
      height: 100.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SvgPicture.asset(image),
          SizedBox(height: 18.h),
          Text(keySpecs,
              style: GoogleFonts.roboto(
                  fontSize: 12.sp, color: Colors.black)),
          SizedBox(height: 5.h,),
          Text(keyName,
              style: GoogleFonts.roboto(
                  fontSize: 10.sp,
                  color: Colors.grey.shade500)),
        ],
      ),
    );
  }
}
