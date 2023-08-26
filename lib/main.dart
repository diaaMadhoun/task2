import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:task2/screens/brand_porsche.dart';
import 'package:task2/screens/brand_screen.dart';
import 'package:task2/screens/buy_car_screen.dart';
import 'package:task2/screens/car_details.dart';
import 'package:task2/screens/car_details_1.dart';
import 'package:task2/screens/compare_cars.dart';
import 'package:task2/screens/home_screen.dart';
import 'package:task2/screens/news_details_review.dart';
import 'package:task2/screens/news_details_screen.dart';
import 'package:task2/screens/search_brand_screen.dart';
import 'package:task2/screens/search_model_screen.dart';
import 'package:task2/screens/search_screen.dart';
import 'package:task2/screens/video_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
    ));

    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return  GetMaterialApp(
          theme: ThemeData(scaffoldBackgroundColor: const Color(0xFFF1F2F3)),
          debugShowCheckedModeBanner: false,
          home:  const BuyCarScreen(),
          getPages: [
            GetPage(name: '/search_screen', page: () => const SearchScreen(),),
            GetPage(name: '/search_brand', page: () => const SearchBrandScreen(),),
            GetPage(name: '/search_model', page: () => const SearchModelScreen(),),
            GetPage(name: '/brand_screen', page: () => const BrandScreen(),),
            GetPage(name: '/brand_porsche', page: () => const BrandPorsche(),),
            GetPage(name: '/news_details', page: () => const NewsDetailsScreen(),),
            GetPage(name: '/news_details_review', page: () => const NewsDetailsReview(),),
            GetPage(name: '/video_screen', page: () => const VideoScreen(),),
            GetPage(name: '/car_details_1', page: () =>  CarDetails1(),),
            GetPage(name: '/compare_cars', page: () =>  CompareCars(),),
          ],
        );
      },
    );
  }
}
