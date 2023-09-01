import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task2/widgets/costum_button.dart';
import 'package:task2/widgets/list/list_category.dart';
import 'package:task2/widgets/list/list_grid_car_videos.dart';
import '../model/categoryBrand.dart';
import '../widgets/car_widget.dart';
import '../widgets/container_expanded.dart';
import '../widgets/custom_edit_text.dart';
import '../widgets/list/list_grid_car_images.dart';

class CarDetails1 extends StatelessWidget {
   CarDetails1({Key? key}) : super(key: key);

  final RxInt _cityIdValue = 0.obs;


  @override
  Widget build(BuildContext context) {

    final List<Color> colorsList = [
      Colors.green,
      Colors.orange,
      Colors.red,
      Colors.grey.shade700,
      Colors.blue,
      Colors.purple,
    ];

    List<CategoryBrand> categories = [
      const CategoryBrand('Photos', ListCarImages()),
      const CategoryBrand('Videos', ListCarVideos(),),
    ];



    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: const IconThemeData(
          color: Colors.grey,
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '2020 Cayman T',
              style: GoogleFonts.roboto(
                fontSize: 14.sp,
                color: Colors.black,
              ),
            ),
            const Icon(
              Icons.keyboard_arrow_down,
              color: Colors.grey,
            ),
          ],
        ),
        centerTitle: true,
        actions: [
          Padding(
              padding: EdgeInsetsDirectional.only(end: 20.w),
              child: SvgPicture.asset('assets/icons/share.svg')),
        ],
      ),
      body: ListView(
        children: [
          Image.asset(
            'assets/images/p718.png',
            height: 200.h,
            width: double.infinity,
          ),
          SizedBox(
            height: 15.h,
            child: Align(
              alignment: Alignment.center,
              child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Container(
                      width: 15.w,
                      height: 15.h,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: colorsList[index],
                      ),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return SizedBox(
                      width: 15.w,
                    );
                  },
                  itemCount: 5),
            ),
          ),
          SizedBox(
            height: 23.h,
          ),
          ContainerExpanded(
            paddingVertical: 18,
            color: Colors.white,
            child: Column(
              children: [
                ListCategory(list: categories),
                SizedBox(height: 30.h,),
                 CustomeButton(margin: 20, text: 'Get Offers from Dealer',onPressed: () {
                   Get.bottomSheet(Container(
                     decoration: const BoxDecoration(
                       color: Colors.white,
                       borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
                     ),
                     padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 20.w),
                     height: 520.h,
                     child: Padding(
                       padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
                       child: SingleChildScrollView(
                         child: Column(
                           children: [
                             Row(
                               children: [
                                 const Spacer(),
                                 Text('Get Offers from Dealer',style: GoogleFonts.roboto(
                                   fontSize: 14.sp,
                                   color: Colors.grey,
                                 ),),
                                 const Spacer(),
                                 const Icon(Icons.close,color: Colors.grey,),
                               ],
                             ),
                             SizedBox(height: 30.h,),
                             const CarWidget(image: 'assets/images/p718.png', name: 'Porsche 718', subTitle: 'Porsche/Luxury/The 2.3L EcoBoost', price: '\$62,000.00-\$74,000.00', colorContainer: Color(0xFFF1F2F3)),
                             SizedBox(height: 20.h,),
                             const CustomTextFiled(suffix: 'assets/icons/close.svg', label: 'Phone number', marginBottom: 28),
                             const CustomTextFiled(suffix: 'assets/icons/close.svg', label: 'Name', marginBottom: 28),
                             SizedBox(height: 5.h,),
                             SizedBox(height: 30.h,),
                             CustomeButton(margin: 0, text: 'Submit', onPressed: () {},)
                           ],
                         ),
                       ),
                     ),
                   ),);
                 },),
              ],
            ),
          ),
        ],
      ),
    );
  }

}

