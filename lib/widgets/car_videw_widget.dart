import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CarVideoWidget extends StatelessWidget {
  const CarVideoWidget({
    required this.name,
    required this.model,
    this.onPressed,
    super.key,
  });

  final String name;
  final String model;
  final void Function()? onPressed;


  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      itemCount: 2,
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: onPressed,
          child: Container(
            margin: EdgeInsets.only(bottom: 15.h),
            padding: EdgeInsets.symmetric(horizontal: 10.w,vertical: 10.h),
            height: 86.h,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: const Color(0xFFF1F2F3),
            ),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(name,maxLines : 1 ,style: GoogleFonts.roboto(
                      fontSize: 14.sp,
                      color: Colors.black,
                    ),),
                    const Spacer(),
                    Text(model,style: GoogleFonts.roboto(
                      fontSize: 12.sp,
                      color: Colors.grey,
                    ),),
                  ],
                ),
                const Spacer(),
                ClipRRect(
                  borderRadius: BorderRadius.circular(4),
                  child: Stack(
                    alignment: AlignmentDirectional.bottomEnd,
                    children: [
                      Image.asset('assets/images/rectangle522.png',fit: BoxFit.cover,width: 66.w,height: 66.h,),
                      Container(
                        margin: const EdgeInsets.all(5),
                        alignment: Alignment.center,
                        width: 28.w,
                        height: 10.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(9),
                          color: Colors.black87.withOpacity(0.5),
                        ),
                        child: Text('12:24',style: GoogleFonts.roboto(
                          fontSize: 8.sp,
                          color: Colors.white,
                        ),),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },);
  }
}
