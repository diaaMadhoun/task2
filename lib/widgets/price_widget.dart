import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'list/list_car_price.dart';
import 'package:get/get.dart';


class PriceWidget extends StatelessWidget {
  const PriceWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 20.h,),
          const ListCarPrice(),
          SizedBox(
            height: 28.h,
          ),
          Text(
            'Recommend for you',
            style: GoogleFonts.roboto(
              fontSize: 14.sp,
              color: Colors.grey.shade500,
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          GridView.builder(
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 6,
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisSpacing: 23,
              crossAxisSpacing: 30,
              childAspectRatio: 90.w / 78.h,
            ),
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  Get.toNamed('car_details_1');
                },
                child: Column(
                  children: [
                    Image.asset(
                      'assets/images/car-pic.png',
                      width: 90.w,
                      height: 60.h,
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Text(
                      'BMW 6 Series GT',
                      style: GoogleFonts.roboto(
                        fontSize: 10.sp,
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
          SizedBox(height: 32.h,),

        ],
      ),
    );
  }
}
