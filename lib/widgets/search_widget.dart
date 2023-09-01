import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({
    required this.prefixIcon,
    required this.color,
    required this.hint,
    this.marginStart =0 ,
    this.onPressed,
    this.onChange,
    super.key,
  });

  final String prefixIcon;
  final Color color;
  final String hint;
  final double marginStart;
  final void Function()? onPressed;
  final void Function()? onChange;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        margin: EdgeInsetsDirectional.only(end: 20.w,start: marginStart.w),
        width: double.infinity,
        height: 30.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: color,
        ),
        child: Row(
          children: [
            SizedBox(width: 15.w),
            SvgPicture.asset(
              prefixIcon,
              height: 12.h,
              width: 12.w,
            ),
            SizedBox(width: 10.w),
            Expanded(
              child: TextField(
                onSubmitted: (value) {
                  if(value == 'Lexus LC'){
                    Get.toNamed('/search_model');
                  }
                },
                decoration: InputDecoration(
                  hintText: hint,
                  border: InputBorder.none,
                  isCollapsed: true,
                  focusedBorder: InputBorder.none,
                  hintStyle: GoogleFonts.roboto(
                    fontSize: 14,
                    color: Colors.grey,
                  ),
                ),
              ),
            ),
            const SizedBox(width: 10),
          ],
        ),
      ),
    );
  }
}

