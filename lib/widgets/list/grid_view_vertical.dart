import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GridViewVertical extends StatelessWidget {
  const GridViewVertical({
    required this.child,
    required this.crossAxisSpacing,
    required this.mainAxisSpacing,
    required this.color,
    required this.childAspectRatio,
    required this.itemCount,
    super.key,
  });

  final double mainAxisSpacing;
  final double crossAxisSpacing;
  final Widget child;
  final Color color;
  final double childAspectRatio;
  final int itemCount;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      padding: EdgeInsetsDirectional.only(bottom: 20.h),
      physics: const AlwaysScrollableScrollPhysics(),
      itemCount: itemCount,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: mainAxisSpacing.h,
        crossAxisSpacing: crossAxisSpacing.w,
        // mainAxisExtent: 200,
        childAspectRatio: childAspectRatio,
      ),
      itemBuilder: (context, index) {
        return Container(
          padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 15.h),
          decoration: BoxDecoration(
              color: color, borderRadius: BorderRadius.circular(10)),
          child: child,
        );
      },
    );
  }
}
