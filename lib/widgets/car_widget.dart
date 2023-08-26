import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CarWidget extends StatelessWidget {
  const CarWidget({
    required this.image,
    required this.name,
    required this.subTitle,
    required this.price,
    required this.colorContainer,
    super.key,
  });

  final String image;
  final String name;
  final String subTitle;
  final String price;
  final Color colorContainer;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.all(8),
          width: 90.w,
          height: 90.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: colorContainer,
          ),
          child: Image.asset(
            image,
            width: 75.w,
            height: 50.h,
          ),
        ),
        SizedBox(
          width: 15.w,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              name,
              style: GoogleFonts.roboto(
                fontSize: 20.sp,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(
              height: 6.h,
            ),
            Text(
              subTitle,
              style: GoogleFonts.roboto(
                fontSize: 10.sp,
                color: Colors.grey,
              ),
            ),
            SizedBox(
              height: 13.h,
            ),
            Text(
              price,
              style: GoogleFonts.roboto(
                fontSize: 14.sp,
                color: const Color(0xFF1DB854),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
