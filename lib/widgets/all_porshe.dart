import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task2/widgets/list/list_vertical.dart';


class AllPorsche extends StatelessWidget {
    const AllPorsche(this.image, {super.key}) ;


  final String image;

  @override
  Widget build(BuildContext context) {
    return  ListView.builder(
      padding: EdgeInsets.symmetric(horizontal: 20.w,vertical: 20.w),
      itemCount: 2,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      scrollDirection: Axis.vertical,
      itemBuilder: (context, index) {
        return Container(
          margin: EdgeInsets.only(bottom: 15.h),
          height: 90.h,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
          ),
          child: Row(
            children: [
              SizedBox(width: 10.w,),
              Image.asset(image,width: 120.w,height: 80.h),
              SizedBox(width: 15.w,),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Porsche 911',style: GoogleFonts.roboto(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),),
                  SizedBox(height: 8.h,),
                  Text('Porsche/Luxury',style: GoogleFonts.roboto(
                    fontSize: 10.sp,
                    color: Colors.grey,
                  ),),
                  SizedBox(height: 3.h,),
                  Text('\$500,000',style: GoogleFonts.roboto(
                    fontSize: 14.sp,
                    color: const Color(0xFF1DB854),
                  ),),
                ],
              ),
            ],
          ),
        );
      },
    );

  }
}
