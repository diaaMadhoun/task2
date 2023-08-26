import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class NewsCar extends StatelessWidget {
  const NewsCar({
    required this.name,
    required this.modal,
    required this.image,
    super.key,
  });

  final String name;
  final String modal;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.w,vertical: 10.h),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(name,maxLines : 1 ,style: GoogleFonts.roboto(
                fontSize: 14.sp,
                color: Colors.black,
              ),),
              const Spacer(),
              Text(modal,style: GoogleFonts.roboto(
                fontSize: 12.sp,
                color: Colors.grey,
              ),),
            ],
          ),
          const Spacer(),
          ClipRRect(
            borderRadius: BorderRadius.circular(4),
            child: Image.network(image,fit: BoxFit.cover,width: 66.w,height: 66.h,),
          ),
        ],
      ),
    );
  }
}
