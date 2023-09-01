import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task2/widgets/data_profile.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double sizeHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: const Color(0xFFF1F2F3),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
        titleSpacing: 0,
        title: Container(
          margin: EdgeInsetsDirectional.only(
              start: 20.w, end: 20.w, top: 8.h),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Icon(Icons.arrow_back,color: Colors.grey,),
              const Spacer(),
              SvgPicture.asset('assets/icons/notification.svg'),
              SizedBox(
                width: 10.w,
              ),
              SvgPicture.asset('assets/icons/setting.svg'),
            ],
          ),
        ),

      ),
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              children: [
                Container(
                  margin: EdgeInsetsDirectional.only(
                      top: sizeHeight / 27, start: 20.w),
                  child: Row(
                    children: [
                      Container(
                        width: 80.w,
                        height: 80.h,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                        ),
                        child: Image.asset(
                          'assets/images/avatar.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(
                        width: 20.w,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Sebastian',
                            style: GoogleFonts.roboto(
                              fontSize: 20.sp,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(
                            height: 8.h,
                          ),
                          Text(
                            'BMW 3 Series/7 Series owner',
                            style: GoogleFonts.roboto(
                              fontSize: 10.sp,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsetsDirectional.only(start: 23.w, top: 14.h),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 64.w,
                        height: 24.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(
                              width: 1, color: const Color(0xFF1DB854)),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset('assets/icons/add.svg'),
                            SizedBox(
                              width: 4.w,
                            ),
                            Text(
                              'Follow',
                              style: GoogleFonts.roboto(
                                fontSize: 10.sp,
                                color: const Color(0xFF1DB854),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 33.w,
                      ),
                      Column(
                        children: [
                          Text(
                            '47',
                            style: GoogleFonts.roboto(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(
                            height: 2.h,
                          ),
                          Text(
                            'Following',
                            style: GoogleFonts.roboto(
                              fontSize: 12.sp,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 41.w,
                      ),
                      Column(
                        children: [
                          Text(
                            '47',
                            style: GoogleFonts.roboto(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(
                            height: 2.h,
                          ),
                          Text(
                            'Follower',
                            style: GoogleFonts.roboto(
                              fontSize: 12.sp,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 41.w,
                      ),
                      Column(
                        children: [
                          Text(
                            '47',
                            style: GoogleFonts.roboto(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(
                            height: 2.h,
                          ),
                          Text(
                            'Posts',
                            style: GoogleFonts.roboto(
                              fontSize: 12.sp,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Positioned(
              bottom: 0,
              top: 229.h,
              right: 0,
              left: 0,
              child: Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20)),
                  color: Colors.white,
                ),
                child: Container(
                  margin: EdgeInsetsDirectional.only(
                      start: 20.w, top: 26.h, end: 20.w),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          SvgPicture.asset('assets/icons/category.svg'),
                          SizedBox(
                            width: 8.w,
                          ),
                          Text(
                            'Common Function',
                            style: GoogleFonts.roboto(
                              fontSize: 12,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      SizedBox(
                        height: 76.h,
                        width: double.infinity,
                        child: ListView.separated(
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              return Container(
                                width: 76.w,
                                height: 76.h,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: const Color(0xFFF1F2F3),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SvgPicture.asset('assets/icons/order.svg'),
                                    SizedBox(height: 10.h,),
                                    Text('My order',style: GoogleFonts.roboto(
                                      fontSize: 12.sp,
                                      color: Colors.black,
                                    ),),
                                  ],
                                ),
                              );

                            }, separatorBuilder: (context, index) {
                          return SizedBox(width: 10.w,);
                        }, itemCount: 4),
                      ),
                      SizedBox(
                        height: sizeHeight / 28,
                      ),
                      DataProfile(
                          icon: 'assets/icons/myCars.svg',
                          title: 'My Cars',
                          label: 'Owned/Driven',
                          suffix: Icons.arrow_forward_ios_outlined,
                          text: 'Like List',
                          sizeHeight: sizeHeight,
                        colorText: 0xFF1B1B1B,
                        iconText: Icons.arrow_forward_ios_outlined,
                      ),
                      DataProfile(
                          icon: 'assets/icons/myCars.svg',
                          title: 'Other',
                          label: 'Feedback',
                          suffix: Icons.arrow_forward_ios_outlined,
                          text: 'Logout',
                          sizeHeight: sizeHeight,
                        colorText: 0xFF1DB854,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
