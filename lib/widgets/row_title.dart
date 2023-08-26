import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class RowTitle extends StatelessWidget {
  const RowTitle({
    required this.category,
     this.allOrMor,
    super.key,
  });

  final String category;
  final String? allOrMor;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsetsDirectional.only(start: 20.w , end: 20.w,top: MediaQuery.of(context).size.height / 25),
      child: Row(
        children: [
          Text(category,style: GoogleFonts.roboto(
            fontSize: 20.sp,
            fontWeight:
            FontWeight.bold,
            color: Colors.black,
          ),),
          const Spacer(),
          Text(allOrMor ?? '',style: GoogleFonts.roboto(
            fontSize: 12.sp,
            color: const Color(0xFF1DB854),
          ),),
          Visibility(
            visible: allOrMor != null,
            child:SvgPicture.asset('assets/icons/arrow.svg'),
          )
        ],
      ),
    );
  }
}
