import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task2/widgets/list/list_vertical.dart';
import 'package:task2/widgets/news_car.dart';
import '../widgets/car_price.dart';
import '../widgets/interaction.dart';


class NewsDetailsScreen extends StatelessWidget {
  const NewsDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const Interaction(),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leadingWidth: 0,
        elevation: 0,
        leading: Padding(
          padding: EdgeInsetsDirectional.only(start: 20.w),
          child: const Icon(
            Icons.arrow_back,
            color: Colors.grey,
          ),
        ),
        title: Text(
          'News',
          style: GoogleFonts.roboto(
            color: Colors.black,
            fontSize: 14.sp,
          ),
        ),
        centerTitle: true,
        actions: [
          Container(
            margin: EdgeInsetsDirectional.only(end: 20.w),
            width: 30.w,
            height: 30.h,
            decoration:  BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.grey.shade200,
            ),
            child: Padding(
                padding: const EdgeInsets.all(10),
                child: SvgPicture.asset('assets/icons/share.svg')),
          ),
        ],
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Expanded(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 30.h,
                ),
                Padding(
                  padding: EdgeInsetsDirectional.only(start: 20.w),
                  child: Text(
                    'Porsche s First Electric Car Named Taycan; Will Rival Tesla Model S',
                    style: GoogleFonts.roboto(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                ),
                SizedBox(
                  height: 30.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset('assets/images/avatar.png'),
                      SizedBox(
                        width: 10.w,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Prescott',
                            style: GoogleFonts.roboto(
                              fontSize: 12,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 4.h,
                          ),
                          Text(
                            'BMW 3 Series owner',
                            style: GoogleFonts.roboto(
                              fontSize: 10,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                      const Spacer(),
                      Container(
                        alignment: Alignment.center,
                        width: 64.w,
                        height: 24.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(
                            width: 1,
                            color: const Color(0xFF1DB854),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset('assets/icons/add.svg'),
                            SizedBox(
                              width: 7.w,
                            ),
                            Text(
                              'Follow',
                              style: GoogleFonts.roboto(
                                fontSize: 12,
                                color: const Color(0xFF1DB854),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: Text(
                    'Porsche has announced the name of its Tesla Model S rival, the '
                    'production-spec Mission E concept. Called the Taycan, '
                    'the electric sedan is all set to get into production'
                    ' by next year, ahead of its international debut in'
                    ' 2020. The Taycan will be the first electric car by '
                    'Porsche and it will continue to be a '
                    'performance-oriented sportscar'
                    ' staying true to the Porsche '
                    'tradition.',
                    style: GoogleFonts.roboto(
                      fontSize: 12.sp,
                      color: Colors.grey,
                      height: 1.7,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Container(
                    padding: EdgeInsets.symmetric(horizontal: 20.w),
                    width: double.infinity,
                    height: 188.h,
                    child: Image.asset(
                      'assets/images/pic.png',
                      fit: BoxFit.cover,
                    )),
                const CarPrice(),
                SizedBox(
                  height: 20.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: Text(
                    maxLines: 2,
                    'Porsche says that the name Taycan roughly translates to “lively young horse”,'
                    ' paying homage to the leaping horse that has '
                    'been featured on the brand’s crest '
                    'logo since 1952.12',
                    style: GoogleFonts.roboto(
                      fontSize: 12.sp,
                      color: Colors.grey,
                      height: 1.7,
                    ),
                  ),
                ),
                Container(
                  margin:
                      EdgeInsetsDirectional.only(top: 20.h, start: 20.w),
                  width: 162.w,
                  height: 25.h,
                  padding:
                      EdgeInsets.symmetric(horizontal: 11.w, vertical: 6.h),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: const Color(0xFFF1F2F3),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Rate this news',
                        style: GoogleFonts.roboto(
                          fontSize: 10.sp,
                        ),
                      ),
                      SizedBox(
                        width: 11.w,
                      ),
                      SvgPicture.asset('assets/icons/starr.svg'),
                      SizedBox(
                        width: 4.w,
                      ),
                      SvgPicture.asset('assets/icons/starr.svg'),
                      SizedBox(
                        width: 4.w,
                      ),
                      SvgPicture.asset('assets/icons/starr.svg'),
                      SizedBox(
                        width: 4.w,
                      ),
                      SvgPicture.asset('assets/icons/starr.svg'),
                      SizedBox(
                        width: 4.w,
                      ),
                      SvgPicture.asset('assets/icons/starr.svg'),
                    ],
                  ),
                ),
                SizedBox(
                  height: 28.h,
                ),
                Padding(
                  padding: EdgeInsetsDirectional.only(start: 20.w),
                  child: Text(
                    'Related',
                    style: GoogleFonts.roboto(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                ),
                SizedBox(
                  height: 19.h,
                ),
                ListVertical(
                    height: 86.h,
                    color: const Color(0xFFF1F2F3),
                    child: const NewsCar(
                        name:
                            '2019 Macan Facelift Launched; More\nAffordable Than Before',
                        modal: 'By  Sonny  Jul 29,2020',
                        image: 'assets/images/rectangle496.png')),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

