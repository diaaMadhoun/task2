// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../model/categoryBrand.dart';

class ListCategory extends StatefulWidget {
  List<CategoryBrand> list = [];
  int selectedCategory = 0;
  String? date;


  ListCategory({Key? key , required this.list ,  this.date}) : super(key: key);

  @override
  State<ListCategory> createState() => _ListCategoryState();
}

class _ListCategoryState extends State<ListCategory> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Row(
            children: [
              SizedBox(
                height: 23.h,
                child: ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemCount: widget.list.length,
                  itemBuilder: (context, index) => Padding(
                    padding: EdgeInsetsDirectional.only(end: 15.w),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          widget.selectedCategory = index;
                        });
                      },
                      child: Column(
                        children: [
                          Text(
                            widget.list[index].title ?? '',
                            style: GoogleFonts.roboto(
                              fontSize: 14.sp,
                              fontWeight: index == widget.selectedCategory // استخدام widget.selectedCategory بدلاً من selectedCategory
                                  ? FontWeight.bold
                                  : FontWeight.normal,
                              color: index == widget.selectedCategory // استخدام widget.selectedCategory بدلاً من selectedCategory
                                  ? const Color(0xFF1DB854)
                                  : const Color(0xFF8E8E93),
                            ),
                          ),
                          Container(
                            width: 10.w,
                            height: 2.h,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: index == widget.selectedCategory // استخدام widget.selectedCategory بدلاً من selectedCategory
                                  ? const Color(0xFF1DB854)
                                  : Colors.transparent,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              const Spacer(),
              Text(widget.date ?? '',style: GoogleFonts.roboto(
                color: Colors.grey,
                fontSize: 12.sp,
              ),),
              if(widget.date != null)
              const Icon(Icons.arrow_drop_down,color: Colors.grey,),
            ],
          ),
        ),
        widget.list[widget.selectedCategory].widget,
      ],
    );
  }
}
