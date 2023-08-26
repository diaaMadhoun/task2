import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    required this.name,
    required this.information,
    required this.price,
    required this.imageUrl,
    required this.color,

    super.key,
  });

  final Color color;
  final String name;
  final String information;
  final String price;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsetsDirectional.only(bottom: 15.h,start: 20.w,end: 20.w),
      height: 90.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: color,
      ),
      child: Row(
        children: [
          Image.asset(imageUrl),
          SizedBox(width: 15.w,),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(name,style: GoogleFonts.roboto(
                fontSize: 14.sp,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),),
              SizedBox(height: 8.h,),
              Text(information,style: GoogleFonts.roboto(
                fontSize: 10.sp,
                color: Colors.grey,
              ),),
              SizedBox(height: 3.h,),
              Text(price,style: GoogleFonts.roboto(
                fontSize: 14.sp,
                color: const Color(0xFF1DB854),
              ),),
            ],
          ),
        ],
      ),
    );
  }
}
