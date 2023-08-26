import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextFiled extends StatelessWidget {
  const CustomTextFiled({
    required this.suffix,
    required this.label,
    required this.marginBottom,
    this.helperText = '',
    super.key,
  });

  final String suffix;
  final String label;
  final String helperText;
  final double marginBottom;



  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        helperText: helperText,
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            width:2,
            color: Colors.grey.shade300,
          ),
        ),
        label: Text(label),
        helperStyle: GoogleFonts.roboto(
          fontSize: 14.sp,
          color: Colors.grey,
        ),
        suffix: SvgPicture.asset(suffix),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.grey),
        ),
        labelStyle: GoogleFonts.roboto(
          fontSize: 16.sp,
          color: Colors.grey,
        ),

      ),
    );
  }
}
