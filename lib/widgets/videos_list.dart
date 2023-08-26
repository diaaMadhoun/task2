import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class VideosList extends StatelessWidget {
  const VideosList({
    required this.image,
    required this.name,
    super.key,
  });

  final String image;
  final String name;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 125.h,
      child: ListView.separated(
          padding: EdgeInsetsDirectional.only(end: 20.w,start: 20.w),
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: SizedBox(
                    height: 100.h,
                    width: 150.w,
                    child: Image.asset(image,fit: BoxFit.cover,),
                  ),
                ),
                SizedBox(height: 6.h,),
                Text(name,style: GoogleFonts.roboto(
                  fontSize: 14.sp,
                ),),
              ],
            );
          }, separatorBuilder: (context, index) {
        return SizedBox(width: 15.w,);
      }, itemCount: 3),
    );
  }
}
