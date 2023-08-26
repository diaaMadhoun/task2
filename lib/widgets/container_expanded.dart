import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ContainerExpanded extends StatelessWidget {
  const ContainerExpanded({
    required this.child,
    this.paddingHorizontal = 0,
    this.paddingVertical = 0,
    required this.color,
    super.key,
  });

  final Widget child;
  final double paddingHorizontal;
  final double paddingVertical;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding:  EdgeInsets.symmetric(horizontal: paddingHorizontal.w,vertical: paddingVertical.h),
        width: double.infinity,
        decoration:  BoxDecoration(
          color: color,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: child,
      ),
    );
  }
}
