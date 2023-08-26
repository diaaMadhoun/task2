  import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ListHorizontal extends StatelessWidget {
  const ListHorizontal({
    required this.height,
    required this.child,
    required this.itemCount,
    required this.width,
    required this.color,
    required this.sizeBoxWidth,
    super.key,
  });

  final double height;
  final Widget child;
  final int itemCount;
  final double width;
  final Color color;
  final double sizeBoxWidth;

  @override
  Widget build(BuildContext context) {
      return SizedBox(
        height: height.h,
        child: ListView.separated(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          shrinkWrap: true,
            clipBehavior: Clip.antiAlias,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Container(
                width: width.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: color,
                ),
                child: child,
              );
            },
            separatorBuilder: (context, index) {
              return SizedBox(
                width: sizeBoxWidth.w,
              );
            },
            itemCount: itemCount),
      );
  }
}
