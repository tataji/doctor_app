import 'package:doctor_app/model/DoctorModel.dart';
import 'package:doctor_app/utils/constant.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatefulWidget {

  SignInScreen();

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return SignInScreenState();
  }
}

class SignInScreenState extends State<SignInScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    verifyPhoneNumber();
  }
  verifyPhoneNumber() async{
    await FirebaseAuth.instance.verifyPhoneNumber(
      phoneNumber: '+91 7483782936',
      verificationCompleted: (PhoneAuthCredential credential) {},
      verificationFailed: (FirebaseAuthException e) {},
      codeSent: (String verificationId, int resendToken) {},
      codeAutoRetrievalTimeout: (String verificationId) {},
    );
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Container(color: appPrimary,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [

          ],
        ),
      ),
    );
  }
}
