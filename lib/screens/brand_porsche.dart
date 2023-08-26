
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task2/widgets/list/list_category.dart';

import '../model/categoryBrand.dart';
import '../widgets/all_porshe.dart';

class BrandPorsche extends StatelessWidget {
  const BrandPorsche({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {


    List<CategoryBrand> categories = [
      const CategoryBrand('All', AllPorsche('assets/images/car-pic.png')),
      const CategoryBrand('Sedan', AllPorsche('assets/images/porsche912.png'),),
      const CategoryBrand('SUV', AllPorsche('assets/images/p718.png')),
      const CategoryBrand('Luxury', AllPorsche('assets/images/macan2020.png')),
    ];

    final List<String> images = [
      'assets/images/porsche718.png',
      'assets/images/macan2020.png',
      'assets/images/p718.png',
      'assets/images/macan2020.png',
    ];


    return Scaffold(
      backgroundColor: const Color(0xFFF1F2F3),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 13.h),
                child: Row(
                  children: [
                    const Icon(Icons.arrow_back, color: Colors.grey),
                    Expanded(
                      child: Center(
                        child: Text(
                          'Brands',
                          style: GoogleFonts.roboto(
                            fontSize: 14.sp,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 35.h,
              ),
              Padding(
                padding: EdgeInsetsDirectional.only(start: 20.w),
                child: Text(
                  'Hot',
                  style: GoogleFonts.roboto(
                    fontSize: 20.sp,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              SizedBox(
                height: 180.h,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                    itemBuilder: (context, index) {
                  return Container(
                    padding: EdgeInsetsDirectional.only(start: 20.w,end: 12.w,top: 12.h),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    width: 150.w,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Align(
                            alignment: AlignmentDirectional.bottomEnd,
                            child: SvgPicture.asset('assets/icons/heart.svg')),
                        Image.asset(
                          images[index],
                          width: 120.w,
                          height: 80.h,
                        ),
                        SizedBox(height: 16.h,),
                        Text('Porsche 718',style: GoogleFonts.roboto(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87,
                        ),),
                        SizedBox(height: 6.h,),
                        Text('\$460,500',style: GoogleFonts.roboto(
                          fontSize: 12.sp,
                          color: const Color(0xFF1DB854),
                        ),),
                      ],
                    ),
                  );

                }, separatorBuilder: (context, index) {
                    return SizedBox(width: 15.w,);

                }, itemCount: 4),
              ),
              SizedBox(
                height: 28.h,
              ),
               ListCategory(list: categories),
              SizedBox(
                height: 20.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
