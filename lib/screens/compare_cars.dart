import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/car_widget.dart';
import '../widgets/container_expanded.dart';
import '../widgets/custom_check_box.dart';

class CompareCars extends StatelessWidget {
   CompareCars({Key? key}) : super(key: key);

  final List<RxBool> _checkBoxValues = List.generate(4, (index) => false.obs);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: const Icon(
          Icons.arrow_back,
          color: Colors.grey,
        ),
        title: Text(
          'Compare Cars',
          style: GoogleFonts.roboto(
            fontSize: 14.sp,
            color: Colors.black87,
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsetsDirectional.only(end: 20.w, start: 20.w, top: 20.h),
            child: const CarWidget(
              image: 'assets/images/p718.png',
              name: 'Porsche 718',
              subTitle: 'Porsche/Luxury/The 2.3L EcoBoost',
              price: '\$62,000.00-\$74,000.00',
              colorContainer: Colors.white,
            ),
          ),
          SizedBox(
            height: 40.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                minimumSize: Size(double.infinity, 44.h),
                backgroundColor: Colors.transparent,
                elevation: 0,
                side: const BorderSide(color: Color(0xFF1DB854), width: 1),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.add,
                    size: 14,
                    color: Color(0xFF1DB854),
                  ),
                  const SizedBox(width: 8),
                  Text(
                    'Add Cars',
                    style: GoogleFonts.roboto(
                      fontSize: 14.sp,
                      color: const Color(0xFF1DB854),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 30.h,
          ),
          ContainerExpanded(
            paddingHorizontal: 20,
            paddingVertical: 18,
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Select Similar Cars',
                  style: GoogleFonts.roboto(
                    fontSize: 14.sp,
                    color: Colors.grey.shade500,
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Expanded(
                  child: GridView.builder(
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    padding: EdgeInsetsDirectional.only(bottom: 20.h),
                    physics: const AlwaysScrollableScrollPhysics(),
                    itemCount: 4,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 20.h,
                      crossAxisSpacing: 15.w,
                      // mainAxisExtent: 200,
                      childAspectRatio: 160.w / 200.h,
                    ),
                    itemBuilder: (context, index) {
                      return Container(
                        padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 15.h),
                        decoration: BoxDecoration(
                            color: Color(0xFFF1F2F3), borderRadius: BorderRadius.circular(10)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Center(
                                child: Image.asset(
                                  'assets/images/car-pic.png',
                                  width: 120.w,
                                  height: 80.h,
                                )),
                            SizedBox(height: 18.h,),
                            Text(
                              'Mercedes SLC',
                              style: GoogleFonts.roboto(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.bold,
                                color: Colors.black87,
                              ),
                            ),
                            SizedBox(
                              height: 6.h,
                            ),
                            Text(
                              '\$42,70-\$48,70',
                              style: GoogleFonts.roboto(
                                fontSize: 12.sp,
                                color: const Color(0xFF1DB854),
                              ),
                            ),
                            SizedBox(height: 21.h,),
                            CustomCheckBox(
                              textEnd: 'Compare',
                              value: _checkBoxValues[index].value,
                              onChanged: (value) {
                                  _checkBoxValues[index].value = value;
                              },
                            ),
                          ],
                        ),
                      );
                    },
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
