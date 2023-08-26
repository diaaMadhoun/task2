import 'package:flutter/material.dart';

class CustomBottomSheetWidget extends StatelessWidget {
  final BuildContext parentContext;

  CustomBottomSheetWidget(this.parentContext);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance!.addPostFrameCallback((_) {
      _showCustomBottomSheet(parentContext); // استدعاء الدالة لعرض BottomSheet بعد البناء الأولي للواجهة
    });

    return Container();
  }

  void _showCustomBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: 200,
          child: Center(
            child: Text(
              'محتوى Custom Bottom Sheet',
              style: TextStyle(fontSize: 18),
            ),
          ),
        );
      },
    );
  }
}
