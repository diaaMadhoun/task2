import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomCheckBox extends StatefulWidget {
  const CustomCheckBox({
    Key? key,
    required this.value,
    required this.onChanged,
    this.textStart,
    this.textEnd,
  }) : super(key: key);

  final bool value;
  final ValueChanged<bool> onChanged;
  final String? textStart;
  final String? textEnd;

  @override
  // ignore: library_private_types_in_public_api
  _CustomCheckBoxState createState() => _CustomCheckBoxState();
}

class _CustomCheckBoxState extends State<CustomCheckBox> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        widget.onChanged(!widget.value);
      },
      child: Row(
        children: [
          if (widget.textStart != null) ...[
            Text(
              widget.textStart!,
              style: GoogleFonts.roboto(
                fontSize: 10.sp,
                color: Colors.grey,
              ),
            ),
            SizedBox(width: 4.h),
          ],
          widget.value
              ? Container(
            width: 12.w,
            height: 12.h,
            decoration: BoxDecoration(
              color: widget.value ? Colors.blue : Colors.transparent,
              borderRadius: BorderRadius.circular(2),
            ),
            child: const Icon(
              Icons.check,
              color: Colors.white,
              size: 12,
            ),
          )
              : Container(
            width: 12.w,
            height: 12.h,
            decoration: BoxDecoration(
              border: Border.all(
                width: 1,
                color: Colors.grey,
              ),
              borderRadius: BorderRadius.circular(2),
            ),
          ),
          if (widget.textEnd != null) ...[
            SizedBox(width: 6.w),
            Text(
              widget.textEnd!,
              style: GoogleFonts.roboto(
                fontSize: 10.sp,
                color: Colors.grey,
              ),
            ),
          ],
        ],
      ),
    );
  }
}
