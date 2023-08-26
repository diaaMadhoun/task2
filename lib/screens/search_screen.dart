import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task2/widgets/list/list_category.dart';
import 'package:task2/widgets/sales_widget.dart';
import '../model/categoryBrand.dart';
import '../widgets/header_search.dart';

class SearchScreen extends StatelessWidget {
   const SearchScreen({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {


    List<CategoryBrand> categories = [
      const CategoryBrand('Sales', SalesWidget('assets/images/acuraCDX.png')),
      const CategoryBrand('Hot', SalesWidget('assets/images/mcLaren720s.png'),),
    ];

    double sizeHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const HeaderSearch(
            icon: Icons.close, suffixIcon: 'assets/icons/mic.svg'),
      ),
      backgroundColor: const Color(0xFFF1F2F3),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: sizeHeight / 20,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Row(
                children: [
                  Text(
                    'History',
                    style: GoogleFonts.roboto(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  const Spacer(),
                  SvgPicture.asset('assets/icons/recycleBin.svg'),
                  SizedBox(
                    width: 7.w,
                  ),
                  Text(
                    'Clear History',
                    style: GoogleFonts.roboto(
                      fontSize: 12.sp,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: sizeHeight / 29,
            ),
            SizedBox(
              height: 34.h,
              width: double.infinity,
              child: ListView.separated(
                padding: EdgeInsetsDirectional.only(start: 20.w),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Container(
                      alignment: Alignment.center,
                      width: 103.w,
                      height: 34.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: Colors.white,
                      ),
                      child: Text(
                        '3 Series Gt',
                        style: GoogleFonts.roboto(
                          fontSize: 14.sp,
                        ),
                      ),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return SizedBox(
                      width: 15.w,
                    );
                  },
                  itemCount: 3),
            ),
            SizedBox(
              height: 48.h,
            ),
            ListCategory(list: categories,
              date: 'Dec,2020',
            ),
          ],
        ),
      ),
    );
  }
}
