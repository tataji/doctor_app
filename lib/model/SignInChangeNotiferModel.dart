import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class SignInModel extends ChangeNotifier{

  signIn(int number){
    verifyPhoneNumber(number);
    notifyListeners();
  }
  verifyPhoneNumber(int number) async{
    await FirebaseAuth.instance.verifyPhoneNumber(
      phoneNumber: number.toString(),
      verificationCompleted: (PhoneAuthCredential credential) {},
      verificationFailed: (FirebaseAuthException e) {},
      codeSent: (String verificationId, int resendToken) {},
      codeAutoRetrievalTimeout: (String verificationId) {},
    );
  }
}