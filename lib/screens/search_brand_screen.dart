import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task2/screens/hot_widget.dart';
import 'package:task2/widgets/container_expanded.dart';
import 'package:task2/widgets/list/list_category.dart';

import '../model/categoryBrand.dart';
import '../widgets/header_search.dart';

class SearchBrandScreen extends StatelessWidget {
  const SearchBrandScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    double sizeHeight = MediaQuery.of(context).size.height;

    List<CategoryBrand> categories = [
      const CategoryBrand('All', HotWidget()),
      const CategoryBrand(
        'Sedan',
        HotWidget(),
      ),
      const CategoryBrand('SUV', HotWidget()),
      const CategoryBrand('Luxury', HotWidget()),
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        titleSpacing: 0,
        title: Padding(
            padding:
                EdgeInsetsDirectional.only(start: 20.w, end: 20.w, top: 8.h),
            child: const HeaderSearch(
                icon: Icons.arrow_back, suffixIcon: 'assets/icons/mic.svg')),
      ),
      backgroundColor: const Color(0xFFF1F2F3),
      body: SafeArea(
        child: ListView(
          children: [
            SizedBox(
              height: sizeHeight / 27,
            ),
            Padding(
              padding: EdgeInsetsDirectional.only(
                start: 20.w,
                end: 20.w,
              ),
              child: Row(
                children: [
                  Container(
                    width: 60.w,
                    height: 60.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    child: Image.asset('assets/images/toyota-logo.png'),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Mazda',
                        style: GoogleFonts.roboto(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      Row(
                        children: [
                          Text(
                            'Brand introduction ',
                            style: GoogleFonts.roboto(
                              fontSize: 12,
                              color: Colors.grey,
                            ),
                          ),
                          const Icon(
                            Icons.arrow_forward_ios_rounded,
                            size: 8,
                            color: Colors.grey,
                          ),
                        ],
                      ),
                    ],
                  ),
                  const Spacer(),
                  Column(
                    children: [
                      Text(
                        '16',
                        style: GoogleFonts.roboto(
                          fontSize: 20.sp,
                          color: const Color(0xFF1DB854),
                        ),
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      Text(
                        'Available',
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
            SizedBox(
              height: 29.h,
            ),
            ContainerExpanded(
                color: Colors.white,
                child: Column(
                  children: [
                    ListCategory(list: categories),
                  ],
                )),
            ],
        ),
      ),
    );
  }
}
