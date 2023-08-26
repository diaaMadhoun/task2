import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task2/widgets/custom_check_box.dart';

class ListCarPrice extends StatefulWidget {
  const ListCarPrice({Key? key}) : super(key: key);

  @override
  State<ListCarPrice> createState() => _ListCarPriceState();
}

class _ListCarPriceState extends State<ListCarPrice> {
  late List<bool> _checkBoxValues;

  @override
  void initState() {
    super.initState();
    _checkBoxValues = List.generate(4, (index) => false);
  }

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: EdgeInsets.only(right: 20.w,left: 20.w,top: 20.h),
        scrollDirection: Axis.vertical,
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    'Cayman',
                    style: GoogleFonts.roboto(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  const Spacer(),
                  Text(
                    '\$62,000.00',
                    style: GoogleFonts.roboto(
                      fontSize: 14.sp,
                      color: const Color(0xFF1DB854),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 6.h,),
              Row(
                children: [
                  Text(
                    '1988 cc, Automatic,petrol,9.0 kmpl',
                    style: GoogleFonts.roboto(
                      fontSize: 10.sp,
                      color: Colors.grey.shade500,
                    ),
                  ),
                  const Spacer(),
                  CustomCheckBox(
                    textStart: 'Compare',
                    value: _checkBoxValues[index],
                    onChanged: (value) {
                      setState(() {
                        _checkBoxValues[index] = value;
                      });
                    },
                  ),
                ],
              ),
              const Divider(
                thickness: 2,
              ),
            ],
          );
        },
        separatorBuilder: (context, index) {
          return SizedBox(
            height: 21.h,
          );
        },
        itemCount: 4);
  }
}
