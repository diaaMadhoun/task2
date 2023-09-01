import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task2/controllers/brand_screen_controller.dart';
import 'package:task2/screens/search_brand_screen.dart';

class BrandScreen extends StatelessWidget {
  const BrandScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: const IconThemeData(
          color: Colors.grey,
        ),
        title: Text(
          'Brands',
          style: GoogleFonts.roboto(
            fontSize: 14.sp,
            color: Colors.black87,
          ),
        ),
      ),
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.white,
      body: GetBuilder<BrandScreenController>(
        init: BrandScreenController(),
        builder: (controller) {
          if (controller.loading) {
            return const Center(
              child: SpinKitWaveSpinner(
                color: Color(0xFF1DB854),
              ),
            );
          } else {
            return SafeArea(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 13.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 35.h),
                    Text(
                      'Popular brands',
                      style: GoogleFonts.roboto(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                      ),
                    ),
                    SizedBox(height: 20.h),
                    GridView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: controller.brands.length,
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 4,
                        mainAxisSpacing: 10,
                        crossAxisSpacing: 10,
                        childAspectRatio: 75.w / 75.h,
                      ),
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            Get.to(SearchBrandScreen(
                                brandId: controller.brands[index].id));
                          },
                          child: Container(
                            width: 75.w,
                            height: 75.h,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: const Color(0xFFF1F2F3),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CachedNetworkImage(
                                  imageUrl: controller.brands[index].logo,
                                  placeholder: (context, url) =>
                                      SpinKitFadingCircle(
                                    size: 30.sp,
                                    color: const Color(0xFF1DB854),
                                  ),
                                  height: 40.h,
                                  width: 40.w,
                                ),
                                SizedBox(
                                  height: 5.h,
                                ),
                                Text(
                                  controller.brands[index].name,
                                  style: GoogleFonts.roboto(
                                    fontSize: 8.sp,
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                    SizedBox(height: 30.h),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Expanded(
                          child: ListView.separated(
                            physics: const NeverScrollableScrollPhysics(),
                            scrollDirection: Axis.vertical,
                            shrinkWrap: true,
                            itemBuilder: (context, index) {
                              return Row(
                                children: [
                                  CachedNetworkImage(
                                    imageUrl: controller.brands[index].logo,
                                    width: 25.w,
                                    height: 25.h,
                                    placeholder: (context, url) =>
                                        SpinKitFadingCircle(
                                      size: 25.sp,
                                      color: const Color(0xFF1DB854),
                                    ),
                                  ),
                                  SizedBox(width: 10.w),
                                  Text(
                                    controller.brands[index].name,
                                    style: GoogleFonts.roboto(
                                      fontSize: 16.sp,
                                      color: Colors.grey.shade600,
                                    ),
                                  ),
                                ],
                              );
                            },
                            separatorBuilder: (context, index) {
                              return SizedBox(height: 30.h);
                            },
                            itemCount: controller.brands.length,
                          ),
                        ),
                        const Align(
                            alignment: Alignment.bottomCenter,
                            child: Icon(
                              Icons.arrow_drop_down,
                              color: Colors.grey,
                            )),
                      ],
                    ),
                  ],
                ),
              ),
            );
          }
        },
      ),
    );
  }
}
