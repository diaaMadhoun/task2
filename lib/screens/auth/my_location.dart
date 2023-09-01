import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task2/widgets/container_expanded.dart';

class MyLocation extends StatelessWidget {
  const MyLocation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF1F2F3),
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                Container(
                    alignment: AlignmentDirectional.bottomStart,
                    margin: EdgeInsetsDirectional.only(start: 20.w, top: 17.h),
                    child: const Icon(
                      Icons.close,
                      color: Color(0xFF8E8E93),
                    )),
              ],
            ),
            SizedBox(
              height: 35.h,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20.w),
              child: Row(
                children: [
                  Text(
                    'Selected: ',
                    style: GoogleFonts.roboto(
                      fontSize: 14,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    'Bangkok',
                    style: GoogleFonts.roboto(
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 28.h,),
            ContainerExpanded(color: Colors.white, child: Padding(
              padding: EdgeInsetsDirectional.only(
                  top: 18.h, start: 20.w, end: 20.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('City location', style: GoogleFonts.roboto(
                    fontSize: 14,
                    color: Colors.grey,
                  ),),
                  SizedBox(height: 22.h,),
                  Row(
                    children: [
                      const Icon(Icons.location_on, color: Colors.grey,),
                      const SizedBox(width: 10,),
                      Text('Bangkok', style: GoogleFonts.roboto(
                        fontSize: 16,
                      ),),
                      const Spacer(),
                      Text('Detect ', style: GoogleFonts.roboto(
                        fontSize: 14,
                        color: const Color(0xFF1DB854),
                      ),)
                    ],
                  ),
                  SizedBox(height: 22.h,),
                  Text('Hot City',style: GoogleFonts.roboto(
                    fontSize: 14.sp,
                    color: Colors.grey,
                  ),),
                  SizedBox(height: 20.h,),
                  SizedBox(
                    height: 28.h,
                    child: ListView.separated(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                      return Container(
                        padding: EdgeInsets.symmetric(horizontal: 15.w,vertical: 4.h),
                        alignment: Alignment.center,
                        height: 28.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          color: const Color(0xFFF1F2F3),
                        ),
                        child: Text('New York',style: GoogleFonts.roboto(
                          fontSize: 16.sp,
                        ),),
                      );
                    }, separatorBuilder: (context, index) {
                     return SizedBox(width: 15.w,);
                    }, itemCount: 3),
                  ),
                ],
              ),
            )),
          ],
        ),
      ),
    );
  }
}
