import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../controllers/home_controller.dart';
import '../widgets/header.dart';
import '../widgets/row_title.dart';
import '../widgets/types.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {

    double sizeHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: const Header(
          icon: 'assets/icons/notification.svg',
        ),
        titleSpacing: 0,
      ),
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: SafeArea(
        child: GetBuilder<HomeController>(
          init: HomeController(),
          builder: (controller) {
            if(controller.loading){
              return const Center(child: SpinKitWaveSpinner (color: Color(0xFF1DB854),),);
            }else{
              return ListView(
                children: [
                  SizedBox(
                    height: sizeHeight / 30,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20.w),
                    height: 168,
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: PageView.builder(
                            scrollDirection: Axis.horizontal,
                            controller: controller.pageController,
                            itemCount: controller.home.data!.sliders!.length,
                            onPageChanged: (value) {
                              controller.currentPage = value;
                            },
                            itemBuilder: (context, index) {
                              return Stack(
                                alignment: Alignment.bottomCenter,
                                children: [
                                  CachedNetworkImage(
                                    imageUrl: controller.home.data!.sliders![index].image,
                                    placeholder: (context, url) => const SpinKitFadingCircle(
                                      color: Color(0xFF1DB854),
                                    ),
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
                                          controller.home.data!.sliders![index].title,
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
                            count: controller.home.data!.sliders!.length,
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
                    ),
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
                    child: ListView.separated(
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
                                CachedNetworkImage(
                                  imageUrl: controller.home.data!.cars![index].image,
                                  placeholder: (context, url) => const SpinKitFadingCircle(
                                    color: Color(0xFF1DB854),
                                  ),
                                  width: double.infinity,
                                  height: 80.h,
                                  fit: BoxFit.cover,
                                  alignment: Alignment.center,
                                ),
                                SizedBox(
                                  height: 18.h,
                                ),
                                Text(
                                  controller.home.data!.cars![index].name,
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
                                  controller.home.data!.cars![index].price.toString(),
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
                        itemCount: 4),
                  ),
                   RowTitle(
                    category: 'Popular brands',
                    allOrMor: 'More',
                    onPressed: () {
                      Get.toNamed('/brand_screen');
                    },
                  ),
                  SizedBox(
                    height: sizeHeight / 39,
                  ),
                  SizedBox(
                    height: 102.h,
                    child: ListView.separated(
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
                                CachedNetworkImage(
                                  imageUrl: controller.home.data!.brands![index].logo,
                                  placeholder: (context, url) => const SpinKitFadingCircle(
                                    color: Color(0xFF1DB854),
                                  ),
                                  width: 45.w,
                                  height: 45.h,
                                ),
                                SizedBox(
                                  height: 3.h,
                                ),
                                SizedBox(height: 8.h,),
                                Text(
                                  controller.home.data!.brands![index].name,
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
                        itemCount: 3),
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
                    child: ListView.separated(
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
                                CachedNetworkImage(
                                  imageUrl: controller.home.data!.cars![index].image,
                                  placeholder: (context, url) => const SpinKitFadingCircle(
                                    color: Color(0xFF1DB854),
                                  ),
                                  height: 80.h,
                                  width: double.infinity,
                                  fit: BoxFit.cover,
                                ),
                                SizedBox(
                                  height: 18.h,
                                ),
                                Text(
                                  controller.home.data!.cars![index].name,
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
                                  controller.home.data!.cars![index].price.toString()  ,
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
                        itemCount: 4),
                  ),
                  const RowTitle(
                    category: 'News',
                    allOrMor: 'More',
                  ),
                  SizedBox(
                    height: sizeHeight / 39,
                  ),
                  ListView.builder(
                    itemCount: 2,
                    padding: EdgeInsets.symmetric(horizontal: 20.w),
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap:  () {
                          Get.toNamed('/news_details');
                        },
                        child: Container(
                          margin: EdgeInsets.only(bottom: 15.h),
                          padding: EdgeInsets.symmetric(horizontal: 10.w,vertical: 10.h),
                          width: double.infinity,
                          height: 86.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                          ),
                          child: Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(controller.home.data!.cars![index].name,maxLines : 1 ,style: GoogleFonts.roboto(
                                    fontSize: 14.sp,
                                    color: Colors.black,
                                  ),),
                                  const Spacer(),
                                  Text(controller.home.data!.cars![index].maxTorque,style: GoogleFonts.roboto(
                                    fontSize: 12.sp,
                                    color: Colors.grey,
                                  ),),
                                ],
                              ),
                              const Spacer(),
                              ClipRRect(
                                borderRadius: BorderRadius.circular(4),
                                child: CachedNetworkImage(imageUrl: controller.home.data!.cars![index].image,fit: BoxFit.fill,width: 66.w,height: 66.h,
                                  placeholder: (context, url) => const SpinKitWaveSpinner(color: Color(0xFF1DB854),),
                                ),

                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ],
              );
            }
        },),
      ),

    );
  }
}
