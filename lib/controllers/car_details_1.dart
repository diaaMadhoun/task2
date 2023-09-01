import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/car_widget.dart';
import '../widgets/costum_button.dart';
import '../widgets/custom_edit_text.dart';

class CarDetailsController extends GetxController{


   int _cityIdValue = 0;


  Widget bottomSheet(){
    return  Container(
      padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 20.w),
      height: 520.h,
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
            const CustomTextFiled(suffix: 'assets/icons/close.svg', label: 'Phone number', marginBottom: 28),
            SizedBox(height: 5.h,),
            DropdownButtonFormField(
              focusColor: Colors.grey,
              decoration: InputDecoration(
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    width: 2,
                    color: Colors.grey.shade300,
                  ),
                ),
                label: Text('City',style: GoogleFonts.roboto(
                  fontSize: 14.sp,
                  color: Colors.grey,
                ),),
              ),
              icon: const Icon(Icons.keyboard_arrow_down_rounded,color: Colors.grey,),
              value: _cityIdValue,
              onChanged: (value) {
                _cityIdValue = value!;
                update();
              },
              isExpanded: true,
              items: const [
                DropdownMenuItem(
                  value: 1,
                  child: Text('Palmer'),
                ),
                DropdownMenuItem(
                  value: 2,
                  child: Text('Rafah'),
                ),
                DropdownMenuItem(
                  value: 3,
                  child: Text('Jpalia'),
                ),
              ],
            ),
            SizedBox(height: 30.h,),
            CustomeButton(margin: 0, text: 'Submit', onPressed: () {},)
          ],
        ),
      ),
    );

  }
}