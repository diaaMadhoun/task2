import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({
    required this.prefixIcon,
    required this.color,
    required this.hint,
    super.key,
  });

  final String prefixIcon;
  final Color color;
  final String hint;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20.w),
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
    );
  }
}

