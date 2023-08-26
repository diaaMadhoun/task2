import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class ListCarVideos extends StatelessWidget {
  const ListCarVideos({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: EdgeInsetsDirectional.only(top: 15.h,end: 20.w,start: 20.w),
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 2,
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '2020 Cayman 2T',
              style: GoogleFonts.roboto(
                fontSize: 12.sp,
              ),
            ),
            SizedBox(
              height: 9.h,
            ),
            GridView.builder(
              padding: const EdgeInsets.only(),
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 6,
              scrollDirection: Axis.vertical,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 5.w,
                mainAxisSpacing: 5.h,
                childAspectRatio: 108.w / 72.h,
              ),
              itemBuilder: (context, index) {
                return Stack(
                  alignment: Alignment.center,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(4),
                      child: Image.asset(
                        'assets/images/rectangle522.png',
                        width: 108.w,
                        height: 72.h,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      width: 34.w,
                      height: 34.h,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.black87.withOpacity(0.4),
                      ),
                      child: Padding(
                padding: const EdgeInsets.all(10),
                          child: SvgPicture.asset('assets/icons/polygon3.svg')),
                    ),
                  ],
                );
              },
            ),
          ],
        );
      },
      separatorBuilder: (context, index) {
        return SizedBox(
          height: 28.h,
        );
      },
    );
  }
}
