import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task2/widgets/list/list_comments.dart';

import '../widgets/search_widget.dart';

class VideoReview extends StatelessWidget {
  const VideoReview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            child: SvgPicture.asset('assets/icons/share.svg'),
          ),
        ],
      ),
      body: Column(
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
          SizedBox(height: 30.h),
          Expanded(
            child: Stack(
              children: [
                Container(
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                      topLeft: Radius.circular(20),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 20.w, vertical: 20.h),
                        child: Row(
                          children: [
                            Text(
                              'Reviews',
                              style: GoogleFonts.roboto(
                                fontSize: 14.sp,
                                color: Colors.grey,
                              ),
                            ),
                            const Spacer(),
                            const Icon(
                              Icons.close,
                              color: Colors.grey,
                            ),
                          ],
                        ),
                      ),
                      const ListComments(),
                    ],
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    height: 60.h,
                    decoration: const BoxDecoration(
                      color: Color(0xFFF1F2F3),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                    ),
                    child: const Center(
                      child: SearchWidget(
                        prefixIcon: 'assets/icons/simple.svg',
                        color: Colors.white,
                        hint: 'Say something…',
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

