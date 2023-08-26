import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CarPrice extends StatelessWidget {
  const CarPrice({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:
      EdgeInsets.only(left: 20.w, right: 20.w,top: 10.h),
      height: 60.h,
      decoration: BoxDecoration(
        color: const Color(0xFFF1F2F3),
        borderRadius: BorderRadius.circular(6),
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.only(
            start: 10.w, top: 6.h, bottom: 6.h, end: 20.w),
        child: Row(
          children: [
            Image.asset('assets/images/car-pic.png'),
            SizedBox(
              width: 15.w,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Porsche-Taycan',
                  style: GoogleFonts.roboto(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  height: 5.h,
                ),
                Text(
                  'McLaren/Luxury',
                  style: GoogleFonts.roboto(
                    fontSize: 10.sp,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
            const Spacer(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '\$634,800',
                  style: GoogleFonts.roboto(
                    fontSize: 14.sp,
                    color: const Color(0xFF1DB854),
                  ),
                ),
                SizedBox(
                  height: 5.h,
                ),
                Text(
                  'Price',
                  style: GoogleFonts.roboto(
                    fontSize: 10.sp,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
