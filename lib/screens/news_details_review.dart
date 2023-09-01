import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task2/widgets/container_expanded.dart';
import 'package:task2/widgets/interaction.dart';
import 'package:task2/widgets/list/list_category.dart';

import '../model/categoryBrand.dart';
import '../widgets/list/list_comments.dart';

class NewsDetailsReview extends StatelessWidget {
  const NewsDetailsReview({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    List<CategoryBrand> categories = [
       const CategoryBrand('Hot', ListComments(paddingVertical: 30,)),
       const CategoryBrand('Latest', ListComments(paddingVertical: 30,),),
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leadingWidth: 0,
        elevation: 0,
        leading: Padding(
          padding: EdgeInsetsDirectional.only(start: 20.w),
          child: GestureDetector(
            onTap: () {
              Get.back();
            },
            child: const Icon(
              Icons.arrow_back,
              color: Colors.grey,
            ),
          ),
        ),
        title: Text(
          'Review',
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
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
            ),
            child: Padding(
              padding: const EdgeInsets.all(10),
                child: SvgPicture.asset('assets/icons/share.svg')),
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
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
            ContainerExpanded(
                color: Colors.white,
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    ListCategory(list: categories,paddingTop: 18,),
                    const Interaction(),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}

