import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ListBrand extends StatelessWidget {
  const ListBrand({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: [
          Expanded(
            child: ListView.separated(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Row(
                  children: [
                    Image.asset('assets/images/giulia.png'),
                     SizedBox(width: 10.w),
                    const Text('Alfa Romeo'),
                  ],
                );
              },
              separatorBuilder: (context, index) {
                return SizedBox(height: 30.h);
              },
              itemCount: 30,
            ),
          ),
          const Align(
              alignment: Alignment.bottomCenter,
              child: Icon(Icons.arrow_drop_down,color: Colors.grey,)),
        ],
      ),
    );
  }
}
