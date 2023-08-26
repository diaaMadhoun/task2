import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ListCarImages extends StatelessWidget {
  const ListCarImages({
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
                    if (index == 5)
                      PositionedDirectional(
                        end: 10.w,
                        bottom: 10.h,
                        child: Container(
                          width: 58.w,
                          height: 16.h,
                          decoration: BoxDecoration(
                            color: Colors.black.withOpacity(0.4),
                            borderRadius: BorderRadius.circular(9),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('72Photos',style: GoogleFonts.roboto(
                                fontSize: 8.sp,
                                color: Colors.white,
                              ),),
                              const Icon(Icons.arrow_forward_ios_sharp,color: Colors.white,size: 8,),
                            ],
                          ),
                        ),
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
