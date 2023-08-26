import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task2/widgets/videos_list.dart';
import '../widgets/header_search.dart';
import '../widgets/list/list_horizontal.dart';
import '../widgets/list/list_vertical.dart';
import '../widgets/row_title.dart';

class SearchModelScreen extends StatelessWidget {
  const SearchModelScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                  padding: EdgeInsetsDirectional.only(
                      start: 20.w, end: 20.w, top: 8.h),
                  child: const HeaderSearch(
                      icon: Icons.arrow_back,
                      suffixIcon: 'assets/icons/mic.svg')),
              Padding(
                padding: EdgeInsetsDirectional.only(
                    end: 20.w, start: 20.w, top: 30.h),
                child: Row(
                  children: [
                    Container(
                      width: 90.w,
                      height: 90.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
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
                        height: 20.h,
                      ),
                      ListHorizontal(
                          width: 101,
                          height: 68,
                          itemCount: 3,
                          sizeBoxWidth: 15,
                          color: const Color(0xFFF1F2F3),
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
                          )),
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
                      const ListVertical(
                        height: 86,
                        color: Color(0xFFF1F2F3),
                        child: Column(),
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
                      ListHorizontal(
                        height: 180.h,
                        width: 150,
                        itemCount: 3,
                        sizeBoxWidth: 15,
                        color: const Color(0xFFF1F2F3),
                        child: const Column(),
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
