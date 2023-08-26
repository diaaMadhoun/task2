import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class ListFag extends StatelessWidget {
  const ListFag({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      physics: const NeverScrollableScrollPhysics(),
        padding: EdgeInsets.only(top: 20.h),
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return Container(
            padding: EdgeInsets.symmetric(vertical: 15.h,horizontal: 10.w),
            margin: EdgeInsets.only(left: 20.w,right: 20.w),
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: const Color(0xFFF1F2F3),
            ),
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset('assets/images/question.png'),
                    SizedBox(width: 6.w,),
                    Text('How much price we have to pay for buying Porsche 718\n Boxter?',maxLines : 1 ,style: GoogleFonts.roboto(
                        fontSize: 12.sp,
                        height: 1.5
                    ),),
                  ],
                ),
                SizedBox(height: 15.h,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset('assets/images/answer.png'),
                    SizedBox(width: 6.w,),
                    Text('For this, we would suggest you walk into the nearest\n dealership as they will be the better person to assist\n you. ',maxLines: 2 ,style: GoogleFonts.roboto(
                      fontSize: 12.sp,
                      color: Colors.grey,
                      height: 1.5,
                    ),),
                  ],
                ),
                SizedBox(height: 13.h,),
                Divider(
                  thickness: 2,
                  indent: 18.w,
                ),
                SizedBox(height: 13.h,),
                Padding(
                  padding: EdgeInsetsDirectional.only(start: 18.w),
                  child: Row(
                    children: [
                      SvgPicture.asset('assets/icons/like_outlined.svg',color: const Color(0xFF1DB854),width: 12.w,height: 12.h,),
                      SizedBox(width: 5.w,),
                      Text('Helpful (6)',style: GoogleFonts.roboto(
                        fontSize: 12.sp,
                        color: const Color(0xFF1DB854),
                      ),),
                      const Spacer(),
                      Text('10 Answers',style: GoogleFonts.roboto(
                        fontSize: 12.sp,
                        color: const Color(0xFF1DB854),
                      ),),
                      const Icon(Icons.arrow_forward_ios_outlined,color: Color(0xFF1DB854),size: 14,)
                    ],
                  ),
                ),
              ],
            ),
          );
        },
        separatorBuilder: (context, index) {
          return SizedBox(height: 15.h,);
        },
        itemCount: 4);
  }
}

