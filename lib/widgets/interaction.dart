import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task2/widgets/search_widget.dart';

class Interaction extends StatelessWidget {
  const Interaction({
    this.onPressedComment,
    super.key,
  });

  final void Function()? onPressedComment;


  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(20),
        topRight: Radius.circular(20),
      ),
      child: BottomAppBar(
        height: 70.h,
        color: const Color(0xFFF1F2F3),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Row(
            children: [
              Container(
                width: 215.w,
                height: 30.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  color: Colors.white,
                ),
                child: const SearchWidget(prefixIcon: 'assets/icons/simple.svg', color: Colors.white, hint: 'Say something…'),
              ),
              const Spacer(),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: onPressedComment,
                      child: SvgPicture.asset('assets/icons/comment.svg',width: 18.w,height: 18.h,)),
                  SizedBox(height: 2.8.h,),
                  Text('83',style: GoogleFonts.roboto(
                    fontSize: 8.sp,
                  ),),
                ],
              ),
              SizedBox(width: 20.w,),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset('assets/icons/like_outlined.svg',width: 18.w,height: 18.h,),
                  SizedBox(height: 2.8.h,),
                  Text('83',style: GoogleFonts.roboto(
                    fontSize: 8.sp,
                  ),),
                ],
              ),
              SizedBox(width: 20.w,),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset('assets/icons/starr_outlined.svg',width: 18.w,height: 18.h,),
                  SizedBox(height: 2.8.h,),
                  Text('83',style: GoogleFonts.roboto(
                    fontSize: 8.sp,
                  ),),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
