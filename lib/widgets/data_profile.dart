import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class DataProfile extends StatelessWidget {
  const DataProfile({
    super.key,
    required this.icon,
    required this.title,
    required this.label,
    required this.suffix,
    required this.text,
    required this.colorText,
    this.iconText,
    required this.sizeHeight,
  });

  final double sizeHeight;
  final String icon;
  final String title;
  final String label;
  final IconData suffix;
  final String text;
  final IconData? iconText;
   final int colorText;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:
      EdgeInsetsDirectional.only(bottom: 28.h),
      child: Column(
        children: [
          Row(
            children: [
              SvgPicture.asset(icon),
              SizedBox(
                width: 8.w,
              ),
              Text(
                title,
                style: GoogleFonts.roboto(
                  fontSize: 12.sp,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
          TextField(
            decoration: InputDecoration(
              label:  Row(
                children: [
                  Text(label),
                  const Spacer(),
                  const Icon(Icons.arrow_forward_ios_outlined,size: 14,color: Colors.grey,),
                ],
              ),
              labelStyle: GoogleFonts.roboto(
                fontSize: 14,
                color: const Color(0xFF1B1B1B),
              ),
            ),
          ),
          SizedBox(
            height: sizeHeight / 37,
          ),
          Row(
            children: [
              Text(
                text,
                style: GoogleFonts.roboto(
                  fontSize: 14.sp,
                  color: Color(colorText),
                ),
              ),
              const Spacer(),
               Icon(
                iconText,
                size: 14,
                color: Colors.grey,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
