import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Types extends StatelessWidget {
  const Types({
    required this.image,
    required this.name,
    super.key,
  });

  final String image;
  final String name;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30.h,
      width: double.infinity,
      child: ListView.separated(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Container(
              width: 85.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                color: Colors.white,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(image),
                  Text(name,style: GoogleFonts.roboto(
                    fontSize: 14,
                    color: Colors.grey,
                  ),),
                ],
              ),
            );
          }, separatorBuilder: (context, index) {
        return SizedBox(width: 10.w,);
      }, itemCount: 4),
    );
  }
}
