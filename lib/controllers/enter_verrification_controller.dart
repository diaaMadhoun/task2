import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class EnterVerificationController extends GetxController {

  final FirebaseAuth _auth = FirebaseAuth.instance;
  late TextEditingController c1, c2, c3, c4, c5, c6;
  bool correct = true;
  String? verifId;
  String phone;
  EnterVerificationController(this.phone);

  @override
  void onInit() {
    super.onInit();
    phoneAuth();
    c1 = TextEditingController();
    c2 = TextEditingController();
    c3 = TextEditingController();
    c4 = TextEditingController();
    c5 = TextEditingController();
    c6 = TextEditingController();
  }

  void disposeControllers() {
    c1.dispose();
    c2.dispose();
    c3.dispose();
    c4.dispose();
    c5.dispose();
    c6.dispose();
  }

  @override
  void onClose() {
    disposeControllers();
    super.onClose();
  }

  void phoneAuth() async{
    await FirebaseAuth.instance.verifyPhoneNumber(
      phoneNumber: phone,
      timeout: const Duration(seconds: 60),
      verificationCompleted: (PhoneAuthCredential credential) {},
      verificationFailed: (FirebaseAuthException e) {},
      codeSent: (
          String verificationId, int? resendToken) async{
        verifId = verificationId;

      },
      codeAutoRetrievalTimeout: (String verificationId) {},
    );
  }

  sentCoce() async{
    try{
      String smsCode = c1.text + c2.text + c3.text + c4.text + c5.text + c6.text;
      PhoneAuthCredential credential = PhoneAuthProvider.credential(verificationId: verifId!, smsCode: smsCode);
      await _auth.signInWithCredential(credential).then((value) {
        if(value.user != null){
          Get.offNamed('/bn_screen');
        }
      });
    } catch(ex){
      correct = false;
      update();
    }

  }

}
