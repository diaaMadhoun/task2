import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task2/widgets/car_price.dart';
import 'package:task2/widgets/interaction.dart';
import 'package:task2/widgets/list/list_vertical.dart';
import 'package:task2/widgets/news_car.dart';

class VideoScreen extends StatelessWidget {
  const VideoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const Interaction(),
      backgroundColor: Colors.white,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: const Icon(
          Icons.arrow_back,
          color: Colors.grey,
        ),
        actions: [
          Padding(
              padding: EdgeInsetsDirectional.only(end: 20.w),
              child: SvgPicture.asset('assets/icons/share.svg')),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/images/pic2.png',
              height: 254.h,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: EdgeInsetsDirectional.only(start: 20.w, top: 20.h),
              child: Text(
                '2019 Macan Facelift Launched; More Affordable Than Before',
                style: GoogleFonts.roboto(
                  fontSize: 20.sp,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
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
            const CarPrice(),
            Container(
              margin: EdgeInsetsDirectional.only(start: 20.w, top: 28.h),
              child: Text(
                'Related',
                style: GoogleFonts.roboto(
                  fontSize: 20.sp,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 19.h,),
            ListVertical(
                height: 86.h,
                color: const Color(0xFFF1F2F3),
                child: const NewsCar(
                    name: '2020 Porsche Macan review – the\nultimate sports SUV?',
                    modal: 'By  basshead  Oct 20,2020',
                    image: 'assets/images/rectangle496.png')),
          ],
        ),
      ),
    );
  }
}
