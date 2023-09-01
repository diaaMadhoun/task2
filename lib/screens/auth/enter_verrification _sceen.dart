import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task2/controllers/enter_verrification_controller.dart';
import '../../widgets/costum_button.dart';
import '../../widgets/text_field_otp.dart';

class EnterVerificationScreen extends StatelessWidget {

  final String phone;
  const EnterVerificationScreen({Key? key, required this.phone}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: const IconThemeData(
          color: Colors.grey,
        ),
      ),
      body: SafeArea(
        child: GetBuilder<EnterVerificationController>(
          init: EnterVerificationController(phone),
          builder: (controller) {
          return Stack(
            children: [
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
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          TextFieldOTP(controller: controller.c1,first: true,last: false,correct: controller.correct,),
                          TextFieldOTP(controller: controller.c2,first: false,last: false,correct: controller.correct,),
                          TextFieldOTP(controller: controller.c3,first: false,last: false,correct: controller.correct,),
                          TextFieldOTP(controller: controller.c4,first: false,last: false,correct: controller.correct,),
                          TextFieldOTP(controller: controller.c5,first: false,last: false,correct: controller.correct,),
                          TextFieldOTP(controller: controller.c6,first: false,last: true,correct: controller.correct,),
                        ],
                      ),
                      SizedBox(height: 70.h,),
                      CustomeButton(
                        text: 'Continue',
                        margin: 30,
                        onPressed: () {
                          controller.sentCoce();
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
          );
        },),
      ),
    );
  }
}
