import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task2/widgets/costum_button.dart';

import '../../widgets/custom_edit_text.dart';

class FullNameEmail extends StatelessWidget {
  const FullNameEmail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              children: [
                Container(
                    alignment: AlignmentDirectional.bottomStart,
                    margin:  EdgeInsetsDirectional.only(start: 20.w,top: 17.h),
                    child: const Icon(Icons.arrow_back_sharp,color: Color(0xFF8E8E93),)),
                SizedBox(height: MediaQuery.of(context).size.height / 15,),
                 const CustomTextFiled(
                  label: 'Full name',
                   suffix: 'assets/icons/close.svg',
                   marginBottom: 28,
                ),
                 const CustomTextFiled(
                  label: 'E-mail',
                   suffix: 'assets/icons/close.svg',
                   helperText: 'Dont miss our latest promotions and updates',
                   marginBottom: 28,
                ),
                 const CustomTextFiled(
                  label: 'password',
                   suffix: 'assets/icons/hide.svg',
                   marginBottom: 28,
                ),
                  CustomTextFiled(
                  label: 'Confirm password',
                   suffix: 'assets/icons/show.svg',
                   marginBottom: MediaQuery.of(context).size.height / 19,
                ),
                 CustomeButton(
                  text: 'Continue',
                  margin: 30,
                  onPressed: () {

                  },
                ),
              ],
            ),
          )),
    );
  }
}

