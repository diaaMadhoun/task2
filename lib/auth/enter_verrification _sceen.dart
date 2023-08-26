import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task2/widgets/costum_button.dart';

class EnterVerification extends StatelessWidget {
  const EnterVerification({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.only(top: 17.h, left: 20.w),
                child: const Icon(Icons.arrow_back_sharp, color: Color(0xFF8E8E93)),
              ),
            ),
            Center(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 58.h,),
                    Text(
                      'Verification',
                      style: GoogleFonts.roboto(
                        fontSize: 24,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 9.h,),
                    Text(
                      'we texted you a code to verify\nyour phone number.',
                      style: GoogleFonts.roboto(
                        fontSize: 14,
                        color: const Color(0xFF8E8E93),
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 68.h,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsetsDirectional.only(end: 29.w),
                          width: 57.w,
                          height: 57.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: const Color(0xFFF1F2F3),
                          ),
                        ),
                        Container(
                          margin: EdgeInsetsDirectional.only(end: 29.w),
                          width: 57.w,
                          height: 57.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: const Color(0xFFF1F2F3),
                          ),
                        ),
                        Container(
                          margin: EdgeInsetsDirectional.only(end: 29.w),
                          width: 57.w,
                          height: 57.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: const Color(0xFFF1F2F3),
                          ),
                        ),
                        Container(
                          width: 57.w,
                          height: 57.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: const Color(0xFFF1F2F3),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 70.h,),
                     CustomeButton(
                      text: 'Continue',
                      margin: 30,
                      onPressed: () {
                      },
                    ),
                    SizedBox(height: 28.h,),
                    Text(
                      'Resend in 54 Sec',
                      style: GoogleFonts.roboto(
                        color: const Color(0xFF1DB854),
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
