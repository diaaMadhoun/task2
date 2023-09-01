import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/search_widget.dart';
import 'package:get/get.dart';

class CommunityScreen extends StatelessWidget {
  const CommunityScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double sizeHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
        titleSpacing: 0,
        title:  SearchWidget(prefixIcon: 'assets/icons/icon-search.svg', color: Colors.white, hint: 'Mazda',marginStart: 20,onPressed: () {
          Get.toNamed('/search_screen');
        },),
        actions: [
          Container(
            margin: EdgeInsetsDirectional.only(end: 20.w),
            alignment: Alignment.center,
            width: 30.w,
            height: 30.h,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
            ),
            child: const Icon(
              Icons.add,
              color: Color(0xFF1DB854),
            ),
          ),
        ],
      ),
      backgroundColor: const Color(0xFFF1F2F3),
      body: SafeArea(
        child: ListView(
          children: [
            SizedBox(
              height: sizeHeight / 27,
            ),
            SizedBox(
              height: 73.h,
              width: 52.w,
              child: ListView.separated(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Container(
                          height: 52.h,
                          width: 52.w,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.green,
                          ),
                          child: Image.asset('assets/images/avatar.png',fit: BoxFit.cover,),
                        ),
                        SizedBox(
                          height: 2.h,
                        ),
                        Text(
                          'Abbey',
                          style: GoogleFonts.roboto(
                            fontSize: 14,
                            color: Colors.grey,
                          ),
                        )
                      ],
                    );
                  },
                  separatorBuilder: (context, index) {
                    return SizedBox(
                      width: 15.w,
                    );
                  },
                  itemCount: 10),
            ),
            SizedBox(height: 38.h,),
            DropdownButton(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              onChanged: (value) {},
              underline: const InputDecorator(
                decoration: InputDecoration(
                  border: UnderlineInputBorder(
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              isDense: true,
              hint: Text(
                'Recommend',
                style: GoogleFonts.roboto(
                  color: const Color(0xFF1DB854),
                  fontSize: 12.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              elevation: 1,
              dropdownColor: Colors.white,
              disabledHint: const Text('Change Country disabeled'),
              itemHeight: 48,
              iconDisabledColor: Colors.black12,
              iconEnabledColor: const Color(0xFF1DB854),
              icon: const Icon(Icons.arrow_drop_down),
              items: const [
                DropdownMenuItem(
                  value: 1,
                  child: Text('Gaza'),
                ),
                DropdownMenuItem(
                  value: 2,
                  child: Text('Rafah'),
                ),
              ],
            ),
            ListView.builder(
              padding: EdgeInsets.only(top: 30.h,left: 20.w,right: 20.w),
              physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 2,
                itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.only(bottom: 30.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset('assets/images/avatar.png'),
                          SizedBox(
                            width: 10.w,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Prescott',
                                style: GoogleFonts.roboto(
                                  fontSize: 12,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height: 4.h,
                              ),
                              Text(
                                'BMW 3 Series owner',
                                style: GoogleFonts.roboto(
                                  fontSize: 10,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                          const Spacer(),
                          Container(
                            alignment: Alignment.center,
                            width: 71.w,
                            height: 24.h,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.white,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SvgPicture.asset('assets/icons/add.svg'),
                                SizedBox(
                                  width: 7.w,
                                ),
                                Text(
                                  'Follow',
                                  style: GoogleFonts.roboto(
                                    fontSize: 12,
                                    color: Color(0xFF1DB854),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 30.h),
                      Text(
                        'Volkswagen T-Roc: Interior dimensions revealed',
                        style: GoogleFonts.roboto(
                          fontSize: 12,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Container(
                            width: 335.w,
                            height: 188.h,
                            color: Colors.green,
                            child: Image.asset(
                              'assets/images/proportion169.png',
                              width: double.infinity,
                              fit: BoxFit.cover,
                            )),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 18.h),
                        child: Row(
                          children: [
                            Text(
                              '5 days ago',
                              style: GoogleFonts.roboto(
                                fontSize: 10.sp,
                                color: Colors.grey,
                              ),
                            ),
                            const Spacer(),
                            Container(
                              margin: EdgeInsetsDirectional.only(end: 20.w),
                              child: Row(
                                children: [
                                  SvgPicture.asset('assets/icons/share.svg'),
                                  SizedBox(
                                    width: 6.w,
                                  ),
                                  Text(
                                    '34',
                                    style: GoogleFonts.roboto(
                                      fontSize: 12,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsetsDirectional.only(end: 20.w),
                              child: Row(
                                children: [
                                  SvgPicture.asset('assets/icons/comment.svg'),
                                  SizedBox(
                                    width: 6.w,
                                  ),
                                  Text(
                                    '34',
                                    style: GoogleFonts.roboto(
                                      fontSize: 12,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Row(
                              children: [
                                SvgPicture.asset('assets/icons/like.svg'),
                                SizedBox(
                                  width: 6.w,
                                ),
                                Text(
                                  '34',
                                  style: GoogleFonts.roboto(
                                    fontSize: 12,
                                    color: Color(0xFF1DB854),
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
          ],
        ),
      ),
    );
  }
}


