
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task2/controllers/car_details_controller.dart';
import 'package:task2/model/cars.dart';
import 'package:task2/widgets/custom_check_box.dart';
import 'package:task2/widgets/faq_widget.dart';
import 'package:task2/widgets/list/list_category.dart';
import 'package:task2/widgets/price_widget.dart';
import '../model/categoryBrand.dart';
import '../widgets/costum_button.dart';
import '../widgets/key_widget.dart';
import '../widgets/list/list_car_price.dart';
import '../widgets/list/list_photo_compilation.dart';

class CarDetails extends StatelessWidget {
  final Cars car;

   const CarDetails({super.key, required this.car});


  @override
  Widget build(BuildContext context) {

    List<CategoryBrand> categories = [
      const CategoryBrand('Price', PriceWidget()),
      const CategoryBrand('Reviews', FaqWidget(),),
      const CategoryBrand('FAQ', FaqWidget()),
    ];

    return  Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: GestureDetector(
          onTap: () {
            Get.back();
          },
          child: const Icon(
            Icons.arrow_back,
            color: Colors.grey,
          ),
        ),
        actions: [
          Align(
            alignment: Alignment.center,
            child: DropdownButton(
              onChanged: (value) {},
              underline: const InputDecorator(
                decoration: InputDecoration(
                  border: UnderlineInputBorder(
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              isDense: true,
              hint: const Text('Bangkok'),
              elevation: 1,
              dropdownColor: Colors.white,
              itemHeight: 48,
              icon: const Icon(Icons.keyboard_arrow_down),
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
          ),
          SizedBox(
            width: 15.w,
          ),
          SvgPicture.asset('assets/icons/heart.svg'),
          SizedBox(
            width: 15.w,
          ),
          SvgPicture.asset('assets/icons/share.svg'),
          SizedBox(
            width: 20.w,
          ),
        ],
      ),
      body: ListView(
        children: [
          Column(
            children: [
              Image.network(car.image,width: 300.w,height: 200.h,fit: BoxFit.fitWidth,),
              SizedBox(height: 20.h,),
              SizedBox(
                height: 32.h,
                child: const ListPhotoCompilation(),
              ),
            ],
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(top: 20.h),
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Color(0xFFF1F2F3),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20),
                  topLeft: Radius.circular(20),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.h,vertical: 18.h),
                    child: Row(
                      children: [
                        Text(
                          car.name,
                          style: GoogleFonts.roboto(
                            fontSize: 17.sp,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        const Spacer(),
                        GetX<CarDetailsController>(
                          init: CarDetailsController(),
                          builder: (controller) {
                          return  CustomCheckBox(
                            textStart: 'Compare',
                            value: controller.isChecked.value,
                            onChanged: (value) {
                              controller.toggleCheckBox(value);
                            },
                          );
                          },)
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 13.h,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.w),
                    child: Text(
                      car.price.toString(),
                      style: GoogleFonts.roboto(
                        fontSize: 14.sp,
                        color: const Color(0xFF1DB854),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 32.h,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        height: 10.h,
                        child: ListView.separated(
                          shrinkWrap: true,
                            padding: EdgeInsetsDirectional.only(start: 20.w),
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              return SvgPicture.asset('assets/icons/starrGreen.svg');
                            }, separatorBuilder: (context, index) {
                          return SizedBox(width: 4.w,);
                        }, itemCount: car.stars),
                      ),
                      SizedBox(width: 6.w,),
                      Text('268 review',style: GoogleFonts.roboto(
                        fontSize: 12.sp,
                        color: Colors.grey,
                      ),),
                    ],
                  ),
                  SizedBox(
                    height: 34.h,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.w),
                    child: Row(
                      children: [
                        Text(
                          'Key Specs',
                          style: GoogleFonts.roboto(
                            fontSize: 14.sp,
                            color: Colors.grey.shade500,
                          ),
                        ),
                        const Spacer(),
                        Text(
                          'All Specs',
                          style: GoogleFonts.roboto(
                            fontSize: 12.sp,
                            color: const Color(0xFF1DB854),
                          ),
                        ),
                        const Icon(
                          Icons.arrow_forward_ios_outlined,
                          color: Color(0xFF1DB854),
                          size: 14,
                        ),
                      ],
                    ),
                  ),
                   Row(
                    children: [
                      KeyWidget(
                        marginStart: 20,
                        image: 'assets/icons/enginePower.svg',
                        keyName: 'Engine Power',
                        keySpecs: car.enginePower,

                      ),
                      KeyWidget(
                        marginStart: 18,
                        image: 'assets/icons/maxTorque.svg',
                        keyName: 'Max Torque',
                        keySpecs: car.maxTorque,

                      ),
                      KeyWidget(
                        marginStart: 18,
                        image: 'assets/icons/acceleration.svg',
                        keyName: 'Acceleration',
                        keySpecs: car.acceleration,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 20.h),
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                        topLeft: Radius.circular(20),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ListCategory(list: categories),
                        SizedBox(height: 37.h,),
                        CustomeButton(
                          text: 'Get Offers from Dealer',
                          margin: 20,
                          onPressed: () {
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}