import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task2/controllers/search_brand_controller.dart';
import 'package:task2/model/cars.dart';
import 'package:task2/screens/hot_widget.dart';
import 'package:task2/widgets/container_expanded.dart';
import 'package:task2/widgets/list/list_category.dart';
import 'package:task2/widgets/search_widget.dart';

import '../model/categoryBrand.dart';

class SearchBrandScreen extends StatelessWidget {
  final int brandId;

  const SearchBrandScreen({Key? key, required this.brandId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double sizeHeight = MediaQuery.of(context).size.height;

    List<Cars> list = [];
    List<CategoryBrand> categories = [
       CategoryBrand('All', HotWidget(cars: list,)),
       CategoryBrand('Sedan', HotWidget(cars: list,)),
       CategoryBrand('SUV', HotWidget(cars: list,)),
       CategoryBrand('Luxury', HotWidget(cars: list,)),
    ];

    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        iconTheme:  const IconThemeData(
          color: Colors.grey,
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const SearchWidget(prefixIcon: 'assets/icons/icon-search.svg', color: Colors.white, hint: 'Mazda'),
      ),
      backgroundColor: const Color(0xFFF1F2F3),
      body: GetBuilder<SearchBrandController>(
        init: SearchBrandController(brandId),
        builder: (controller) {
          list.addAll(controller.cars);
          if (controller.loading) {
            return const Center(
              child: SpinKitWaveSpinner(
                color: Color(0xFF1DB854),
              ),
            );
          } else {
            return SafeArea(
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
                          padding:  EdgeInsets.symmetric(horizontal: 10.w,vertical: 10.h),
                          width: 60.w,
                          height: 60.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                          ),
                          child: CachedNetworkImage(
                            imageUrl: controller.cars.first.brand.logo,
                            placeholder: (context, url) =>
                                const SpinKitWaveSpinner(
                              color: Color(0xFF1DB854),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              controller.cars.first.brand.name,
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
                      paddingVertical: 20,
                      color: Colors.white,
                      child: Column(
                        children: [
                          ListCategory(list: categories),
                        ],
                      )),
                ],
              ),
            );
          }
        },
      ),
    );
  }
}
