import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task2/api/api_controller.dart';

import '../model/brands.dart';
import '../widgets/list/list_brand.dart';

class BrandScreen extends StatelessWidget {
  const BrandScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.white,
      body: FutureBuilder<List<Brands>?>(
        future: ApiController().getBrands(),
        builder: (context, snapshot) {
          if(snapshot.connectionState == ConnectionState.waiting){
            return const Center(child: CircularProgressIndicator(),);
          }else if(snapshot.hasData && snapshot.data!.isNotEmpty){
            return SafeArea(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 13.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const Icon(Icons.arrow_back, color: Colors.grey),
                        Expanded(
                          child: Center(
                            child: Text(
                              'Brands',
                              style: GoogleFonts.roboto(
                                fontSize: 14.sp,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 35.h),
                    Text(
                      'Popular brands',
                      style: GoogleFonts.roboto(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                      ),
                    ),
                    SizedBox(height: 20.h),
                    GridView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: snapshot.data!.length,
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 4,
                        mainAxisSpacing: 10,
                        crossAxisSpacing: 10,
                        childAspectRatio: 75.w / 75.h,
                      ),
                      itemBuilder: (context, index) {
                        return Container(
                          width: 75.w,
                          height: 75.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: const Color(0xFFF1F2F3),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.network(
                                snapshot.data![index].logo,
                                height: 40.h,
                                width: 40.w,
                              ),
                              SizedBox(height: 5.h,),
                              Text(
                                snapshot.data![index].name,
                                style: GoogleFonts.roboto(
                                  fontSize: 8.sp,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                    SizedBox(height: 30.h),
                    const ListBrand(),
                  ],
                ),
              ),
            );
          }else{
            return const Center(child: Text('NO DATA',style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),));
          }
        },
      ),
    );
  }
}
