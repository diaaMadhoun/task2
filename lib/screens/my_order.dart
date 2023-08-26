import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task2/widgets/container_expanded.dart';
import 'package:task2/widgets/costum_button.dart';

class MyOrder extends StatelessWidget {
  const MyOrder({Key? key}) : super(key: key);

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
        actions: [
          Row(
            children: [
              Text(
                'Edit',
                style: TextStyle(
                  fontSize: 14.sp,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(width: 20),
            ],
          ),
        ],
        title: Text(
          'Compare Cars',
          style: GoogleFonts.roboto(
            fontSize: 14.sp,
            color: Colors.black87,
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.only(start: 20.w, top: 30.h),
            child: Text(
              '3 items selected',
              style: GoogleFonts.roboto(
                fontSize: 20.sp,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
          ),
          ListView.builder(
            itemCount: 3,
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return Container(
                padding: EdgeInsetsDirectional.only(
                    start: 10.w, end: 15.w, top: 5.h, bottom: 5.h),
                margin: EdgeInsetsDirectional.only(
                    top: 20.h, start: 20.w, end: 20.w),
                width: double.infinity,
                height: 90.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  color: const Color(0xFFF1F2F3),
                ),
                child: Row(
                  children: [
                    Image.asset('assets/images/finishWheel.png'),
                    SizedBox(width: 15.w),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Orion Motor Wheel Spacers',
                            style: GoogleFonts.roboto(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.bold,
                              color: Colors.black87,
                            ),
                          ),
                          SizedBox(height: 15.h),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: 72.w,
                                height: 28.h,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(6),
                                  color: Colors.white,
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    const Icon(Icons.remove,
                                        color: Colors.grey, size: 14),
                                    Text('1',
                                        style: GoogleFonts.roboto(
                                            fontSize: 14.sp)),
                                    const Icon(Icons.add,
                                        color: Colors.grey, size: 14),
                                  ],
                                ),
                              ),
                              Text(
                                '\$21.00',
                                textAlign: TextAlign.right,
                                style: GoogleFonts.roboto(
                                  fontSize: 14.sp,
                                  color: const Color(0xFF1DB854),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
          SizedBox(
            height: 30.h,
          ),
          ContainerExpanded(
              paddingHorizontal: 20,
              paddingVertical: 18,
              color: const Color(0xFFF1F2F3),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Discount',
                        style: GoogleFonts.roboto(
                          fontSize: 14.sp,
                        ),
                      ),
                      Text(
                        '\$8.00',
                        style: GoogleFonts.roboto(
                          fontSize: 14.sp,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 18.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Total',
                        style: GoogleFonts.roboto(
                          fontSize: 20.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87,
                        ),
                      ),
                      Text(
                        '\$126.00',
                        style: GoogleFonts.roboto(
                          fontSize: 20.sp,
                          fontWeight: FontWeight.bold,
                          color: const Color(0xFF1DB854),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 58.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Order time',
                        style: GoogleFonts.roboto(
                          fontSize: 14.sp,
                          color: Colors.black87,
                        ),
                      ),
                      Text(
                        '7:15 pm',
                        style: GoogleFonts.roboto(
                          fontSize: 14.sp,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 18.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Expected delivery time',
                        style: GoogleFonts.roboto(
                          fontSize: 14.sp,
                          color: Colors.black87,
                        ),
                      ),
                      Text(
                        '18:00 pms',
                        style: GoogleFonts.roboto(
                          fontSize: 14.sp,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 47.h,
                  ),
                  CustomeButton(margin: 0, text: 'Pay now',onPressed: () {

                  },),
                ],
              )),
        ],
      ),
    );
  }

  Future _displayBottomSheet(BuildContext context) {
    return showModalBottomSheet(
      backgroundColor: Colors.white,
      isDismissible: false,
      barrierColor: Colors.black87.withOpacity(0.5),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(20),
        ),
      ),
      context: context,
      builder: (context) => Container(
        padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 20.w),
        height: 384.h,
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  'Discount',
                  style: GoogleFonts.roboto(
                    fontSize: 14.sp,
                  ),
                ),
                const Spacer(),
                Text(
                  '\$8.00',
                  style: GoogleFonts.roboto(
                    fontSize: 14.sp,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 18.h,
            ),
            Row(
              children: [
                Text(
                  'Total',
                  style: GoogleFonts.roboto(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Spacer(),
                Text(
                  '\$126.00',
                  style: GoogleFonts.roboto(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.bold,
                    color: const Color(0xFF1DB854),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 38.h,
            ),
            Text(
              'Address',
              style: GoogleFonts.roboto(
                fontSize: 14.sp,
              ),
            ),
            SizedBox(height: 13.h,),
            Row(
              children: [
                Text('6360 Sunset Blvd, Los Angeles,\nCA 90028 United States',style: GoogleFonts.roboto(
                  fontSize: 12.sp,
                  color: Colors.grey,
                ),),
                Text('Edit',style: GoogleFonts.roboto(
                  fontSize: 14.sp,
                  color: const Color(0xFF1DB854),
                ),),
              ],
            ),
            SizedBox(height: 28.h,),
            Text('Payment',style: GoogleFonts.roboto(
              fontSize: 14.sp,
            ),),
            Row(
              children: [
                SvgPicture.asset('assets/icons/masterCard.svg'),
                SizedBox(width: 10.w,),
                Text('**** **** **** 3247',style: GoogleFonts.roboto(
                  fontSize: 12.sp,
                  color: Colors.grey,
                ),),
                const Spacer(),
                const Icon(Icons.keyboard_arrow_down),
              ],
            ),
            const Spacer(),
            CustomeButton(margin: 0, text: 'Submit',onPressed: () {

            },),
          ],
        ),
      ),
    );
  }
}
