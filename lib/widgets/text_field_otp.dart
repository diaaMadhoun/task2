import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextFieldOTP extends StatelessWidget {

  bool first;
  bool last;
  TextEditingController controller;
  bool correct;


  TextFieldOTP({
    required this.last,
    required this.first,
    required this.controller,
    required this.correct,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 40.w,
      height: 50.h,
      child:  TextField(
        controller: controller,
        onChanged: (value) {
          if (value.isNotEmpty && last == false){
            FocusScope.of(context).nextFocus();
          }else if(value.isEmpty && first == false){
            FocusScope.of(context).previousFocus();
          }
        },
        keyboardType: TextInputType.number,
        maxLength: 1,
        textAlign: TextAlign.center,
        style: const TextStyle(fontSize: 24),
        decoration: InputDecoration(
          enabledBorder:  OutlineInputBorder(
            borderSide: BorderSide(
              width: 1.5,
              color: correct ? Colors.transparent : Colors.red,
            ),
          ),
          filled: true,
          fillColor: const Color(0xFFF1F2F3),
          counterText: '',
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(10),
          ),
          disabledBorder: InputBorder.none,
        ),
      ),
    );
  }
}
