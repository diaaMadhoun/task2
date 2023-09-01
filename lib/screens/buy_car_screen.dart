import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task2/controllers/buy_car_controller.dart';
import 'package:task2/screens/car_details.dart';
import 'package:task2/widgets/header.dart';
import 'package:task2/widgets/types.dart';

class BuyCarScreen extends StatelessWidget {
  const BuyCarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double sizeHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        titleSpacing: 0,
        title: const Header(icon: 'assets/icons/filter.svg'),
      ),
      backgroundColor: const Color(0xFFF1F2F3),
      body: GetBuilder<BuyCarController>(
        init: BuyCarController(),
        builder: (controller) {
          if (controller.loading) {
            return const Center(
              child: SpinKitWaveSpinner(
                color: Color(0xFF1DB854),
              ),
            );
          } else {
            return SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: sizeHeight / 27,
                  ),
                  const Types(image: 'assets/images/giulia.png', name: 'Giulia'),
                  Container(
                    margin: EdgeInsetsDirectional.only(
                        start: 20.w, top: sizeHeight / 25),
                    child: Text(
                      'Top deal',
                      style: GoogleFonts.roboto(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  GridView.builder(
                    padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: controller.cars.length,
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisSpacing: 20.w,
                      mainAxisSpacing: 27.h,
                      crossAxisCount: 2,
                      childAspectRatio: 158.w / 225.h,
                    ),
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          Get.to(() => CarDetails(
                                carId: controller.cars[index].id,
                              ));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    alignment: Alignment.center,
                                    width: 46.0,
                                    height: 23.0,
                                    decoration: const BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(10),
                                        bottomRight: Radius.circular(10),
                                      ),
                                      color: Color(0xFFD1F1DD),
                                    ),
                                    child: Text(
                                      'Offer',
                                      style: GoogleFonts.roboto(
                                        fontSize: 12,
                                        color: const Color(0xFF1DB854),
                                      ),
                                    ),
                                  ),
                                  const Spacer(),
                                  Padding(
                                    padding: EdgeInsetsDirectional.only(
                                        end: 12.w, top: 12.h),
                                    child: SvgPicture.asset('assets/icons/heart.svg'),
                                  ),
                                ],
                              ),
                              SizedBox(height: 10.h,),
                              Container(
                                alignment: Alignment.center,
                                child: CachedNetworkImage(
                                  imageUrl: controller.cars[index].image,
                                  placeholder: (context, url) =>
                                      const SpinKitFadingCircle(
                                    color: Color(0xFF1DB854),
                                  ),
                                  fit: BoxFit.fitWidth,
                                  width: 120.w,
                                  height: 80.h,
                                ),
                              ),
                              SizedBox(height: 13.h,),
                              Padding(
                                padding: EdgeInsetsDirectional.only(start: 15.w),
                                child: Text(
                                  controller.cars[index].name,
                                  style: GoogleFonts.roboto(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                              SizedBox(height: 9.h,),
                              Padding(
                                padding: EdgeInsetsDirectional.only(start: 15.w),
                                child: Text(
                                  controller.cars[index].acceleration,
                                  style: GoogleFonts.roboto(
                                    fontSize: 10,
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                              const Spacer(),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 15.h),
                                child: Row(
                                  children: [
                                    SizedBox(
                                      height: 10.0,
                                      child: ListView.separated(
                                        scrollDirection: Axis.horizontal,
                                        shrinkWrap: true,
                                        physics: const NeverScrollableScrollPhysics(),
                                        itemBuilder: (context, index) {
                                          return Container(
                                            width: 10.w,
                                            height: 10.h,
                                            decoration: BoxDecoration(
                                              color: Colors.blue,
                                              shape: BoxShape.circle,
                                              border: Border.all(width: 2, color: Colors.grey),
                                            ),
                                          );
                                        },
                                        separatorBuilder: (context, index) {
                                          return const SizedBox(width: 7.0);
                                        },
                                        itemCount: 3,
                                      ),
                                    ),
                                    const Spacer(),
                                    Text(
                                      controller.cars[index].price.toString(),
                                      style: GoogleFonts.roboto(
                                        fontSize: 12.0,
                                        color: const Color(0xFF1DB854),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ],
              ),
            );
          }
        },
      ),
    );
  }
}
