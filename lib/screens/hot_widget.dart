import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/list/list_horizontal.dart';
import '../widgets/news_car.dart';
import '../widgets/row_title.dart';
import '../widgets/videos_list.dart';

class HotWidget extends StatelessWidget {
  const HotWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 180.h,
          child: ListView.separated(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
              return Container(
                padding: EdgeInsets.symmetric(horizontal: 15.w,vertical: 12.h),
                width: 150.w,
                height: 180.h,
                decoration: BoxDecoration(
                  color: const Color(0xFFF1F2F3),
                  borderRadius: BorderRadius.circular(10),
                ),
                child:  Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                    alignment: AlignmentDirectional.bottomEnd,
                        child: SvgPicture.asset('assets/icons/heart.svg')),
                    Image.asset('assets/images/p718.png',width: 120.w,height: 80.h,),
                    SizedBox(height: 18.h,),
                    Text('Mazda Axela',style: GoogleFonts.roboto(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.bold,
                    ),),
                    SizedBox(height: 6.h,),
                    Text('\$23,500',style: GoogleFonts.roboto(
                      fontSize: 12.sp,
                      color: const Color(0xFF1DB854),
                    ),)
                  ],
                ),
              );

          }, separatorBuilder: (context, index) {
              return SizedBox(width: 15.w,);

          }, itemCount: 4),
        ),
        const RowTitle(
          category: 'News',
          allOrMor: 'More',
        ),
        SizedBox(
          height: 20.h,
        ),
        ListView.separated(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return Container(
                decoration: BoxDecoration(
                  color: const Color(0xFFF1F2F3),
                  borderRadius: BorderRadius.circular(10),
                ),
                height: 86.h,
                width: double.infinity,
                child: const NewsCar(
                    name:
                    '2021 Mazda 6 sedan adds standard\nApple CarPlay',
                    modal: 'By Blake  Sep 18,2020',
                    image: 'assets/images/rectangle516.png')
                ,
              );
            }, separatorBuilder: (context, index) {
          return SizedBox(height: 15.h,);
        }, itemCount: 2),
        const RowTitle(
          category: 'Videos',
          allOrMor: 'More',
        ),
        SizedBox(
          height: 20.h,
        ),
        const VideosList(
            image: 'assets/images/proportion169.png',
            name: 'Mazda 6-test 01'),
        SizedBox(
          height: 20.h,
        ),

      ],
    );
  }
}
