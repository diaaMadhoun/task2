import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Header extends StatelessWidget {
  const Header({
    required this.icon,
    super.key,
  });

  final String  icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(width: 20.w,),
            Text('Bangkok',style: GoogleFonts.roboto(
              fontSize: 12.sp,
              color: Colors.grey,
            ),),
            SvgPicture.asset('assets/icons/down.svg'),
          ],
        ),
        SizedBox(width: 20.w,),
        Expanded(
          child: Container(
            width: 204.w,
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
                        fontSize: 14,
                        color: Colors.grey,
                      ),
                      isCollapsed: true,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(width: 21.w,),
        SvgPicture.asset(icon),
        SizedBox(width: 20.w,),

      ],
    );
  }
}
