import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ListPhotoCompilation extends StatelessWidget {
  const ListPhotoCompilation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      itemCount: 4,
      separatorBuilder: (context, index) =>
          SizedBox(width: 15.w),
      itemBuilder: (context, index) => Container(
        clipBehavior: Clip.antiAlias,
        width: 48.w,
        height: 32.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(2),
          image: const DecorationImage(
            image:
            AssetImage('assets/images/rectangle516.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          color: Colors.black.withOpacity(0.5),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '+200',
                  style: GoogleFonts.roboto(
                      fontSize: 8.sp, color: Colors.white),
                ),
                Text(
                  'Images',
                  style: GoogleFonts.roboto(
                      fontSize: 8.sp, color: Colors.grey),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
