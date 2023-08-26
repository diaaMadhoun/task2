import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../controllers/home_controller.dart';
import '../widgets/header.dart';
import '../widgets/news_car.dart';
import '../widgets/row_title.dart';
import '../widgets/types.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {

    double sizeHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: const Header(
          icon: 'assets/icons/notification.svg',
        ),
        titleSpacing: 0,
      ),
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: SafeArea(
        child: ListView(
          children: [
            SizedBox(
              height: sizeHeight / 30,
            ),
             Container(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              height: 168,
              child: GetX<HomeController>(
                init: HomeController(),
                builder: (controller) {
                if(controller.sliders.isEmpty){
                  return const Center(child: CircularProgressIndicator(),);
                }else{
                  return Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: PageView.builder(
                          scrollDirection: Axis.horizontal,
                          controller: controller.pageController,
                          itemCount: controller.cars.length,
                          onPageChanged: (value) {
                            controller.currentPage.value = value;
                          },
                          itemBuilder: (context, index) {
                            return Stack(
                              alignment: Alignment.bottomCenter,
                              children: [
                                Image.network(controller.sliders[index].image,
                                  width: double.infinity,
                                  fit: BoxFit.cover,
                                ),
                                Container(
                                  padding: EdgeInsetsDirectional.only(
                                      start: 20.w, bottom: 20.h),
                                  width: double.infinity,
                                  height: 72.h,
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      colors: [
                                        Colors.black.withOpacity(0.1),
                                        Colors.black.withOpacity(0.6),
                                      ],
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter,
                                    ),
                                  ),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Text('Extreme bump test',style: GoogleFonts.roboto(
                                          fontSize: 12.sp,
                                          color: const Color(0xFFA4AEAE)

                                      ),),
                                      SizedBox(height: 2.h,),
                                      Text(
                                        controller.sliders[index].title,
                                        style: GoogleFonts.roboto(
                                          fontSize: 14.sp,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            );
                          },
                        ),
                      ),
                      Positioned(
                        bottom: 8.h,
                        child: SmoothPageIndicator(
                          controller: controller.pageController,
                          count: controller.sliders.length,
                          effect: ExpandingDotsEffect(
                            activeDotColor: const Color(0xFF1DB854),
                            dotColor: const Color(0xFF2A3034),
                            dotHeight: 6.h,
                            dotWidth: 6.w,
                            spacing: 3.w,
                          ),
                        ),
                      ),
                    ],
                  );
                }
              },),
            ),
            SizedBox(height: 25.h),
            const Types(image: 'assets/images/giulia.png', name: ' Giulia'),
            const RowTitle(
              category: 'Top deal',
              allOrMor: 'More',
            ),
            SizedBox(
              height: sizeHeight / 39,
            ),
            SizedBox(
              height: 225.h,
              width: double.infinity,
              child: GetX<HomeController>(builder: (controller) {
                if(controller.cars.isEmpty){
                  return const Center(child: CircularProgressIndicator(),);
                }else{
                  return ListView.separated(
                      padding: EdgeInsets.symmetric(horizontal: 20.w),
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Container(
                          padding: EdgeInsetsDirectional.only(
                              start: 12.w, end: 12.w, top: 12.h),
                          width: 150.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(18),
                            color: Colors.white,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Align(
                                  alignment: AlignmentDirectional.bottomEnd,
                                  child:
                                  SvgPicture.asset('assets/icons/heart.svg')),
                              SizedBox(height: 10.h,),
                              Image.network(controller.cars[index].image,
                                width: double.infinity,
                                height: 80.h,
                                fit: BoxFit.cover,
                                alignment: Alignment.center,
                              ),
                              SizedBox(
                                height: 18.h,
                              ),
                              Text(
                                controller.cars[index].name,
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
                                controller.cars[index].price.toString(),
                                style: GoogleFonts.roboto(
                                  fontSize: 12.sp,
                                  color: const Color(0xFF1DB854),
                                ),
                              ),
                              const Spacer(),
                              Row(
                                children: [
                                  SizedBox(
                                    height: 10.h,
                                    child: ListView.separated(
                                        scrollDirection: Axis.horizontal,
                                        shrinkWrap: true,
                                        physics:
                                        const NeverScrollableScrollPhysics(),
                                        itemBuilder: (context, index) {
                                          return Container(
                                            width: 10.w,
                                            height: 10.h,
                                            decoration: BoxDecoration(
                                              color: Colors.blue,
                                              shape: BoxShape.circle,
                                              border: Border.all(
                                                  width: 2, color: Colors.grey),
                                            ),
                                          );
                                        },
                                        separatorBuilder: (context, index) {
                                          return SizedBox(
                                            width: 7.w,
                                          );
                                        },
                                        itemCount: 3),
                                  ),
                                  const Spacer(),
                                  SvgPicture.asset('assets/icons/viewdetails.svg'),
                                ],
                              ),
                              SizedBox(
                                height: 16.h,
                              ),
                            ],
                          ),
                        );
                      },
                      separatorBuilder: (context, index) {
                        return SizedBox(
                          width: 15.w,
                        );
                      },
                      itemCount: 4);
                }
              },),
            ),
            const RowTitle(
              category: 'Popular brands',
              allOrMor: 'More',
            ),
            SizedBox(
              height: sizeHeight / 39,
            ),
            SizedBox(
              height: 102.h,
              child: GetX<HomeController>(
                builder: (controller) {
                 if(controller.brands.isEmpty){
                   return const Center(child: CircularProgressIndicator(),);
                 }else{
                   return ListView.separated(
                       padding: EdgeInsets.symmetric(horizontal: 20.w),
                       scrollDirection: Axis.horizontal,
                       itemBuilder: (context, index) {
                         return Container(
                           padding: EdgeInsets.symmetric(
                               horizontal: 11.w, vertical: 10.h),
                           width: 102.w,
                           decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(10),
                             color: Colors.white,
                           ),
                           child: Column(
                             mainAxisAlignment: MainAxisAlignment.center,
                             children: [
                               Image.network(controller.brands[index].logo,
                                 width: 45.w,
                                 height: 45.h,
                               ),
                               SizedBox(
                                 height: 3.h,
                               ),
                               SizedBox(height: 8.h,),
                               Text(
                                 controller.brands[index].name,
                                 style: GoogleFonts.roboto(
                                   fontSize: 12.sp,
                                   color: Colors.grey,
                                 ),
                               ),
                             ],
                           ),
                         );
                       },
                       separatorBuilder: (context, index) {
                         return SizedBox(
                           width: 15.w,
                         );
                       },
                       itemCount: 3);
                 }

              },),
            ),
            const RowTitle(
              category: 'Popular brands',
              allOrMor: 'More',
            ),
            SizedBox(
              height: sizeHeight / 39,
            ),
            SizedBox(
              height: 200.h,
              width: double.infinity,
              child: GetX<HomeController>(builder: (controller) {
                if(controller.cars.isEmpty){
                  return const Center(child: CircularProgressIndicator(),);
                }else{
                  return ListView.separated(
                      padding: EdgeInsets.symmetric(horizontal: 20.w),
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Container(
                          padding: EdgeInsetsDirectional.only(
                              start: 15.w, end: 15.w, top: 12, bottom: 13.h),
                          width: 150.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Align(
                                  alignment: AlignmentDirectional.bottomEnd,
                                  child:
                                  SvgPicture.asset('assets/icons/heart.svg')),
                              SizedBox(height: 5.h,),
                              Image.network(
                                controller.cars[index].image,
                                height: 80.h,
                                width: double.infinity,
                                fit: BoxFit.cover,
                              ),
                              SizedBox(
                                height: 18.h,
                              ),
                              Text(
                                controller.cars[index].name,
                                maxLines: 1,
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
                                controller.cars[index].price.toString()  ,
                                style: GoogleFonts.roboto(
                                  fontSize: 12.sp,
                                  color: const Color(0xFF1DB854),
                                ),
                              ),
                              const Spacer(),
                              Text(
                                'Expected Launch-Sep 18',
                                style: GoogleFonts.roboto(
                                  fontSize: 10.sp,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                      separatorBuilder: (context, index) {
                        return SizedBox(
                          width: 15.w,
                        );
                      },
                      itemCount: 4);
                }
              },),
            ),
            const RowTitle(
              category: 'News',
              allOrMor: 'More',
            ),
            SizedBox(
              height: sizeHeight / 39,
            ),
            GetX<HomeController>(builder: (controller) {
              if(controller.cars.isEmpty){
                return const Center(child: CircularProgressIndicator(),);
              }else{
                return ListView.builder(
                  itemCount: 2,
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.only(bottom: 15.h),
                      width: double.infinity,
                      height: 86.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                      child:  NewsCar(
                        name: controller.cars[index].name,
                        modal: controller.cars[index].maxTorque,
                        image: controller.cars[index].image,
                      ),
                    );
                  },
                );
              }
            },),
          ],
        ),
      ),

    );
  }
}
