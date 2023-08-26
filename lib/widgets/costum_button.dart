
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomeButton extends StatelessWidget {
  const CustomeButton({
    required this.margin,
    required this.text,
    required this.onPressed,
    super.key,
  });

  final String text;
  final double margin;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:  EdgeInsets.symmetric(horizontal: margin.w),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          minimumSize: const Size(double.infinity, 50),
          backgroundColor: const Color(0xFF1DB854),
          elevation: 5,
          shadowColor: Colors.black45,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
          ),
        ),
        child:  Text(text,style: GoogleFonts.roboto(
          fontSize: 14,
        ),),
      ),
    );
  }
}
