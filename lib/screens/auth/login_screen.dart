import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:intl_phone_field/phone_number.dart';
import 'package:task2/controllers/login_screen_controller.dart';
import 'package:task2/screens/auth/enter_verrification%20_sceen.dart';
import 'package:task2/widgets/costum_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    double sizeHeight = MediaQuery.of(context).size.height;
    return  Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: GetBuilder<LoginScreenController>(
            init: LoginScreenController(),
            builder: (controller) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                    onTap: () {
                    },
                    child: Container(
                        margin: const EdgeInsetsDirectional.only(start: 20,top: 17),
                        child: const Icon(Icons.clear_outlined))),
                Container(
                  margin: EdgeInsetsDirectional.only(start: 30.w,end: 30.w,top: 145.h),
                  child:  IntlPhoneField(
                    decoration: const InputDecoration(
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey,
                        ),
                      ),
                    ),

                    controller: controller.c1,
                    cursorColor: Colors.black87,
                    showCountryFlag: false,
                    dropdownIcon: const Icon(Icons.keyboard_arrow_down),
                     style: GoogleFonts.roboto(
                       fontSize: 24.sp,
                       color: Colors.black87,
                       fontWeight: FontWeight.bold,
                     ),
                    initialValue: '+970',
                  ),
                ),
                SizedBox(height: 61.h),
                Row(
                  children: [
                    SizedBox(width: 30.w,),
                    SvgPicture.asset('assets/icons/icon-select.svg'),
                    SizedBox(width: 5.9.w,),
                    Text('Agree to our ',style: GoogleFonts.roboto(
                      fontSize: 12,
                      color: Colors.grey,
                    ),),
                    GestureDetector(
                      onTap: () {

                      },
                      child: Text('Terms ',style: GoogleFonts.roboto(
                        color: const Color(0xFF1DB854),
                        fontSize: 12,
                      ),),
                    ),
                    Text('and ',style: GoogleFonts.roboto(
                      fontSize: 12,
                      color: Colors.grey,
                    ),),
                    GestureDetector(
                      onTap: () {

                      },
                      child: Text('Data Policy ',style: GoogleFonts.roboto(
                        color: const Color(0xFF1DB854),
                        fontSize: 12,
                      ),),
                    ),
                  ],
                ),
                SizedBox(height: MediaQuery.of(context).size.height / 10.h,),
                CustomeButton(
                  text: 'Continue',
                  margin: 30,
                  onPressed: () {
                    Get.to(EnterVerificationScreen(phone: controller.c1.text.trim()));
                  },
                ),
                SizedBox(height: sizeHeight/ 4.3,),
                PositionedDirectional(
                  bottom: 69.h,
                  end: 0,
                  start: 0,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 31.w,
                            child: const Divider(
                              color: Color(0XFFD1D1D6),
                              thickness: 2,
                              height: 2,
                            ),
                          ),
                          Text('  Login with  ',style: GoogleFonts.roboto(
                            fontSize: 12,
                            color: const Color(0xFFC7C7CC),
                          ),),
                          SizedBox(
                            width: 31.w,
                            child: const Divider(
                              color: Color(0XFFD1D1D6),
                              thickness: 2,
                              height: 2,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 29.h,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            margin: EdgeInsetsDirectional.only(end: 30.w),
                            height: 55,
                            width: 55,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0xFFF1F2F3),
                            ),
                            child: Container(
                                padding: const EdgeInsets.all(15),
                                child: SvgPicture.asset('assets/icons/icons8-facebook.svg')),
                          ),
                          Container(
                            margin: EdgeInsetsDirectional.only(end: 30.w),
                            height: 55,
                            width: 55,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0xFFF1F2F3),
                            ),
                            child: Container(
                                padding: const EdgeInsets.all(15),
                                child: SvgPicture.asset('assets/icons/search.svg')),
                          ),
                          Container(
                            height: 55,
                            width: 55,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0xFFF1F2F3),
                            ),
                            child: Container(
                                padding: const EdgeInsets.all(15),
                                child: SvgPicture.asset('assets/icons/icon-twitter.svg')),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            );
          },),
        ),
      ),
    );
  }
}

