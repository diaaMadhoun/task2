import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task2/widgets/product_card.dart';
import 'package:task2/widgets/row_title.dart';
import 'package:task2/widgets/search_widget.dart';
import 'package:get/get.dart';

class AutoParts extends StatelessWidget {
  const AutoParts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: const Icon(
          Icons.arrow_back,
          color: Colors.grey,
        ),
        title: Text(
          'Auto Parts',
          style: GoogleFonts.roboto(
            fontSize: 14.sp,
            color: Colors.black87,
          ),
        ),
        actions: [
          GestureDetector(
            onTap: () {
              Get.toNamed('/my_order');
            },
            child: Padding(
                padding: EdgeInsetsDirectional.only(end: 20.w),
                child: SvgPicture.asset('assets/icons/cart.svg')),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SearchWidget(
                prefixIcon: 'assets/icons/icon-search.svg',
                hint: 'Search',
                color: Color(0xFFF1F2F3)),
            SizedBox(
              height: 30.h,
            ),
            SizedBox(
              height: 77.h,
              child: ListView.separated(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Container(
                          width: 54.w,
                          height: 54.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: const Color(0xFFF1F2F3),
                          ),
                          child: Image.asset('assets/images/category.png'),
                        ),
                        SizedBox(
                          height: 4.h,
                        ),
                        Text(
                          'Category',
                          style: GoogleFonts.roboto(
                            fontSize: 14.sp,
                            color: Colors.black87,
                          ),
                        ),
                      ],
                    );
                  },
                  separatorBuilder: (context, index) {
                    return SizedBox(
                      width: 33.w,
                    );
                  },
                  itemCount: 4),
            ),
            const RowTitle(
              category: 'For You',
              allOrMor: 'More',
            ),
            SizedBox(
              height: 20.h,
            ),
            SizedBox(
              height: 225.h,
              child: ListView.separated(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Container(
                    width: 150.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0xFFF1F2F3),
                    ),
                    child: Stack(
                      children: [
                        PositionedDirectional(
                          end: 12.w,
                          top: 12.h,
                          child: SvgPicture.asset('assets/icons/heart.svg'),
                        ),
                        PositionedDirectional(
                          top: 15.h,
                          end: 0,
                          start: 0,
                          child: Image.asset(
                            'assets/images/sunPie.png',
                            width: 120.w,
                            height: 80.h,
                          ),
                        ),
                        PositionedDirectional(
                          bottom: 93.h,
                          start: 15.w,
                          child: Text(
                            'Sunpie 7 Headlight',
                            style: GoogleFonts.roboto(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.bold,
                              color: Colors.black87,
                            ),
                          ),
                        ),
                        PositionedDirectional(
                          bottom: 58.h,
                          start: 15.w,
                          child: Text(
                            'This product is the\nuniversal fit.',
                            style: GoogleFonts.roboto(
                              fontSize: 10.sp,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                        PositionedDirectional(
                          start: 15.w,
                          bottom: 14.h,
                          child: Text(
                            '\$10.00',
                            style: GoogleFonts.roboto(
                              fontSize: 12.sp,
                              color: const Color(0xFF1DB854),
                            ),
                          ),
                        ),
                        PositionedDirectional(
                          end: 15.w,
                          bottom: 11.h,
                          child: Container(
                            width: 20.w,
                            height: 20.h,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(5),
                              child: SvgPicture.asset('assets/icons/add.svg'),
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
                separatorBuilder: (context, index) {
                  return SizedBox(width: 15.w);
                },
                itemCount: 3,
              ),
            ),
            const RowTitle(
              category: 'Popular',
              allOrMor: 'Moer',
            ),
            SizedBox(
              height: 20.h,
            ),
            ListView.builder(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemCount: 2,
              itemBuilder: (context, index) {
                return const ProductCard(name: 'White Finish Wheel', information: 'white Finish Wheel - 15 in. Wheel', price: '\$500,000', imageUrl: 'assets/images/finishWheel.png', color: Color(0xFFF1F2F3));
              },
            ),
          ],
        ),
      ),
    );
  }
}
