import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task2/widgets/videos_list.dart';
import '../widgets/row_title.dart';
import '../widgets/search_widget.dart';

class SearchModelScreen extends StatelessWidget {
  const SearchModelScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: const IconThemeData(
          color: Colors.grey,
        ),
        title: const SearchWidget(prefixIcon: 'assets/icons/icon-search.svg', color: Colors.white, hint: 'Lexus LC'),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsetsDirectional.only(
                    end: 20.w, start: 20.w, top: 30.h),
                child: Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(7),
                      width: 90.w,
                      height: 90.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                      child: Image.asset('assets/images/pajun.png',width: 75.w,height: 50.h,),
                    ),
                    SizedBox(
                      width: 15.w,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Lexus LC',
                                style: GoogleFonts.roboto(
                                  fontSize: 20.sp,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                              Icon(
                                Icons.arrow_forward_ios_rounded,
                                size: 14.sp,
                                color: Colors.grey,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 6.h,
                          ),
                          Text(
                            'Lexus/Luxury/The 2.3L EcoBoost',
                            style: GoogleFonts.roboto(
                              fontSize: 10.sp,
                              color: Colors.grey,
                            ),
                          ),
                          SizedBox(
                            height: 13.h,
                          ),
                          Text(
                            '\$456,800-\$486,800',
                            style: GoogleFonts.roboto(
                              fontSize: 14.sp,
                              color: const Color(0xFF1DB854),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 20.h),
                margin: EdgeInsets.only(top: 30.h),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    topLeft: Radius.circular(20),
                  ),
                ),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 68.h,
                        child: ListView.separated(
                          shrinkWrap: true,
                          padding: EdgeInsets.symmetric(horizontal: 20.w),
                          scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                          return SizedBox(
                            width: 101.w,
                            child: Stack(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.asset(
                                    'assets/images/proportion169.png',
                                    fit: BoxFit.cover,
                                    width: double.infinity,
                                    height: double.infinity,
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Container(
                                    alignment: Alignment.center,
                                    margin: EdgeInsets.only(bottom: 6.h),
                                    width: 43.w,
                                    height: 16.h,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(9),
                                      color: Colors.black.withOpacity(0.7),
                                    ),
                                    child: Text(
                                      'Exterior',
                                      style: GoogleFonts.roboto(
                                        fontSize: 8.sp,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          );
                        }, separatorBuilder: (context, index) {
                          return SizedBox(width: 15.w,);
                        }, itemCount: 3),
                      ),
                      const RowTitle  (
                          category: 'Lexus LC price list', allOrMor: 'All '),
                      SizedBox(
                        height: 28.h,
                      ),
                      ListView.builder(
                        padding: EdgeInsets.symmetric(horizontal: 20.w),
                        itemCount: 2,
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        scrollDirection: Axis.vertical,
                        itemBuilder: (context, index) {
                          return Container(
                            margin: index == 0
                                ? EdgeInsets.only(bottom: 18.h)
                                : EdgeInsets.zero,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      '500h Luxury',
                                      style: GoogleFonts.roboto(
                                        fontSize: 14.sp,
                                        color: Colors.black,
                                      ),
                                    ),
                                    Text(
                                      '\$456,800',
                                      style: GoogleFonts.roboto(
                                        fontSize: 14.sp,
                                        color: const Color(0xFF1DB854),
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 8.h,
                                ),
                                Text(
                                  '3456 cc,Automatic,Petrol,15.4kmpl',
                                  style: GoogleFonts.roboto(
                                    fontSize: 14.sp,
                                    color: Colors.grey,
                                  ),
                                ),
                                SizedBox(
                                  height: 15.h,
                                ),
                                Divider(
                                  thickness: 1.h,
                                  color: Colors.grey.shade300,
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                      const RowTitle(category: 'News', allOrMor: 'More '),
                      SizedBox(
                        height: 20.h,
                      ),
                      ListView.builder(
                        itemCount: 2,
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
                                    Text('2021 Lexus LC 500 Convertible: 7',maxLines : 1 ,style: GoogleFonts.roboto(
                                      fontSize: 14.sp,
                                      color: Colors.black,
                                    ),),
                                    const Spacer(),
                                    Text('By Albertine  Sep 13,2020',style: GoogleFonts.roboto(
                                      fontSize: 12.sp,
                                      color: Colors.grey,
                                    ),),
                                  ],
                                ),
                                const Spacer(),
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(4),
                                  child: Image.asset('assets/images/rectangle522.png',fit: BoxFit.cover,width: 66.w,height: 66.h,),

                                ),
                              ],
                            ),
                          );
                        },
                      ),
                      const RowTitle(
                          category: 'Videos', allOrMor: 'More '),
                      SizedBox(
                        height: 20.h,
                      ),
                      const VideosList(
                          image: 'assets/images/proportion169.png',
                          name: 'Lexus 2020 review'),
                      const RowTitle(category: 'Similar cars'),
                      SizedBox(
                        height: 20.h,
                      ),
                      SizedBox(
                        height: 180.h,
                        child: ListView.separated(
                          padding: EdgeInsets.symmetric(horizontal: 20.w),
                          scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                          return Container(
                            padding: EdgeInsetsDirectional.only(top: 12.h,start: 15.w,end: 12.w),
                            width: 150.w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: const Color(0xFFF1F2F3),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SvgPicture.asset('assets/icons/heart.svg'),
                                Image.asset('assets/images/tsan.png'),
                                SizedBox(height: 18.h,),
                                Text('Panamera',style: GoogleFonts.roboto(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.bold,
                                ),),
                                SizedBox(height: 6.h,),
                                Text('Panamera',style: GoogleFonts.roboto(
                                  fontSize: 12.sp,
                                  color: const Color(0xFF1DB854)
                                ),),

                              ],
                            ),
                          );
                        }, separatorBuilder: (context, index) {
                          return SizedBox(width: 15.w,);
                        }, itemCount: 4),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
