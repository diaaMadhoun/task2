import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
class HeaderSearch extends StatelessWidget {
  const HeaderSearch({
    required this.icon,
    required this.suffixIcon,
    super.key,
  });

  final IconData icon;
  final String suffixIcon;


  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
         Icon(icon,color: Colors.grey),
        const Spacer(),
        Container(
          width: 302.w,
          height: 30.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18),
            color: Colors.white,
          ),
          child: Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 15.w, right: 7.w),
                child: SvgPicture.asset('assets/icons/icon-search.svg'),
              ),
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Search',
                    border: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    hintStyle: GoogleFonts.roboto(
                      fontSize: 14.sp,
                      color: Colors.grey,
                    ),
                    isCollapsed: true,
                  ),
                ),
              ),
              Padding(
                  padding: EdgeInsetsDirectional.only(end: 15.w),
                  child: SvgPicture.asset(suffixIcon)),
            ],
          ),
        ),
      ],
    );
  }
}
