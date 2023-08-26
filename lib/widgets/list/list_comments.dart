import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class ListComments extends StatelessWidget {
  const ListComments({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        padding: EdgeInsets.symmetric(horizontal: 20.w,vertical: 30.h),
        scrollDirection: Axis.vertical,
        itemCount: 3,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.only(bottom: 20.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Image.asset(
                      'assets/images/avatar.png',
                      width: 30.w,
                      height: 30.h,
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Text(
                      'Uzair Arshad',
                      style: GoogleFonts.roboto(
                        fontSize: 14.sp,
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Text(
                      '.3 hours ago',
                      style: GoogleFonts.roboto(
                        fontSize: 10.sp,
                        color: Colors.grey.shade400,
                      ),
                    ),
                    const Spacer(),
                    Text(
                      '89',
                      style: GoogleFonts.roboto(
                        fontSize: 12.sp,
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(
                      width: 7.w,
                    ),
                    SvgPicture.asset('assets/icons/like_outlined.svg'),
                  ],
                ),
                SizedBox(
                  height: 10.h,
                ),
                Container(
                  margin: EdgeInsetsDirectional.only(start: 40.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Porsche actually wanted to name this something else,'
                        ' but that name was already taycan',
                        style: GoogleFonts.roboto(
                          fontSize: 12.sp,
                        ),
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      Text(
                        '17 Reply',
                        style: GoogleFonts.roboto(
                          fontSize: 10.sp,
                          color: const Color(0xFF1DB854),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
