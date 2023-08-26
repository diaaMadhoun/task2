import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task2/widgets/car_widget.dart';

class CompareCarsList extends StatelessWidget {
  const CompareCarsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.only(
          topRight: Radius.circular(20),
          topLeft: Radius.circular(20),
        ),
        child: BottomAppBar(
          height: 80.h,
          color: const Color(0xFFF1F2F3),
          child: const Row(
            children: [

            ],
          ),
        ),
      ),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: const Icon(Icons.arrow_back, color: Colors.grey,),
        actions: const [
          Row(
            children: [
              Text(
                'Edit',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                ),
              ),
              SizedBox(width: 20),
            ],
          ),
        ],
        title: Text(
          'Compare Cars',
          style: GoogleFonts.roboto(
            fontSize: 14.sp,
            color: Colors.black87,
          ),
        ),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 20.w,vertical: 20.h),
        child: ListView.separated(
          scrollDirection: Axis.vertical,
            shrinkWrap: true,
            itemBuilder:  (context, index) {
          return  const CarWidget(
            image: 'assets/images/p718.png',
            name: 'Porsche 718',
            subTitle: 'Porsche/Luxury/The 2.3L EcoBoost',
            price: '\$62,000.00-\$74,000.00',
            colorContainer: Color(0xFFF1F2F3),
          );

        }, separatorBuilder: (context, index) {
         return Padding(
           padding: EdgeInsets.only(top: 20.h,bottom: 20.h),
           child:  Stack(
             alignment: Alignment.center,
             children: [
               const Divider(
                 thickness: 2,
                 color: Color(0xFFD1D1D6),
               ),
               Align(
                 alignment: Alignment.center,
                 child: Container(
                   alignment: Alignment.center,
                   width: 22.w,
                   height: 22.h,
                   decoration: const BoxDecoration(
                     shape: BoxShape.circle,
                     color: Color(0xFFD1D1D6),
                   ),
                   child: Text('VS',style: GoogleFonts.roboto(
                     fontSize: 10.sp,
                     color: Colors.grey.shade600,
                   ),),
                 ),
               ),
             ],
           ),
         );

        }, itemCount: 4),
      ),
    );
  }
}
