import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import '../model/cars.dart';
import '../widgets/row_title.dart';
import '../widgets/videos_list.dart';

class HotWidget extends StatelessWidget {
  final List<Cars> cars;
   const HotWidget({super.key, required this.cars});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 20.h,),
        SizedBox(
          height: 190.h,
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
                    SizedBox(height: 10.h,),
                    CachedNetworkImage(
                      imageUrl: cars[index].image,fit: BoxFit.fill,width: 120.w,height: 70.h,
                      placeholder: (context, url) => const SpinKitFadingCircle(color: Color(0xFF1DB854),),
                    ),
                    SizedBox(height: 18.h,),
                    Text(cars[index].name,style: GoogleFonts.roboto(
                      fontSize: 13.sp,
                      fontWeight: FontWeight.bold,
                    ),),
                    SizedBox(height: 6.h,),
                    Text(cars[index].price.toString(),style: GoogleFonts.roboto(
                      fontSize: 11.sp,
                      color: const Color(0xFF1DB854),
                    ),)
                  ],
                ),
              );

          }, separatorBuilder: (context, index) {
              return SizedBox(width: 15.w,);

          }, itemCount: cars.length),
        ),
        const RowTitle(
          category: 'News',
          allOrMor: 'More',
        ),
        SizedBox(
          height: 20.h,
        ),
        ListView.builder(
          itemCount: cars.length,
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.only(bottom: 15.h),
              padding: EdgeInsets.symmetric(horizontal: 10.w,vertical: 10.h),
              width: double.infinity,
              height: 86.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color(0xFFF1F2F3),
              ),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(cars[index].name,maxLines : 1 ,style: GoogleFonts.roboto(
                        fontSize: 14.sp,
                        color: Colors.black,
                      ),),
                      const Spacer(),
                      Text('By Benjamin  Sep 14,2020',style: GoogleFonts.roboto(
                        fontSize: 12.sp,
                        color: Colors.grey,
                      ),),
                    ],
                  ),
                  const Spacer(),
                  Container(
                    clipBehavior: Clip.antiAlias,
                    width: 60.w,
                    height: 60.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: CachedNetworkImage(imageUrl: cars[index].image,fit: BoxFit.fill,
                      placeholder: (context, url) => const SpinKitFadingCircle(color: Color(0xFF1DB854),),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
        const RowTitle(
          category: 'Videos',
          allOrMor: 'More',
        ),
        SizedBox(
          height: 20.h,
        ),
        SizedBox(
          height: 125.h,
          child: ListView.separated(
              padding: EdgeInsetsDirectional.only(end: 20.w,start: 20.w),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          clipBehavior: Clip.antiAlias,
                          height: 100.h,
                          width: 150.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: CachedNetworkImage(imageUrl: cars[index].image,fit: BoxFit.fill,
                            placeholder: (context, url) => const SpinKitFadingCircle(color: Color(0xFF1DB854),),
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          padding: const EdgeInsets.all(10),
                          width: 34.w,
                          height: 34.h,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.black87.withOpacity(0.5),
                          ),
                          child: SvgPicture.asset('assets/icons/polygon3.svg'),
                        ),
                      ],
                    ),
                    SizedBox(height: 6.h,),
                    Text(cars[index].name,style: GoogleFonts.roboto(
                      fontSize: 14.sp,
                    ),),
                  ],
                );
              }, separatorBuilder: (context, index) {
            return SizedBox(width: 15.w,);
          }, itemCount: cars.length),
        ),
      ],
    );
  }
}
