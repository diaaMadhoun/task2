import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'list/list_fag.dart';

class FaqWidget extends StatelessWidget {
  const FaqWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          margin: EdgeInsets.only(top: 20.h, left: 20.w, right: 20.w),
          width: double.infinity,
          height: 60.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: const Color(0xFFF1F2F3),
          ),
          child: Row(
            children: [
              Image.asset('assets/images/qa.png'),
              SizedBox(
                width: 20.w,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Have any question?',
                    style: GoogleFonts.roboto(
                      fontSize: 14.sp,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    height: 3.h,
                  ),
                  Text(
                    'Click the button',
                    style: GoogleFonts.roboto(
                      fontSize: 12.sp,
                      color: Colors.grey.shade500,
                    ),
                  ),
                ],
              ),
              const Spacer(),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    elevation: 0,
                    backgroundColor: const Color(0xFF1DB854),
                    minimumSize: Size(70.w, 30.h)),
                onPressed: () {},
                child: Text(
                  'Ask Now',
                  style: GoogleFonts.roboto(
                    fontSize: 12.sp,
                  ),
                ),
              ),
            ],
          ),
        ),
        const ListFag(),
      ],
    );
  }
}
