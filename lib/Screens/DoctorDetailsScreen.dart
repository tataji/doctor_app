import 'package:doctor_app/model/DoctorModel.dart';
import 'package:doctor_app/utils/constant.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DoctorDetailsScreen extends StatefulWidget {
  DoctorModel doctorModel;

  DoctorDetailsScreen(this.doctorModel);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return DoctorDetailsScreenState();
  }
}

class DoctorDetailsScreenState extends State<DoctorDetailsScreen> {
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
      body: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height:MediaQuery.of(context).size.height ,
            child: Container(decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              color: Colors.white,
              borderRadius: BorderRadius.circular(100),
             // border: Box,
            ), child: Text(""),),
          ),
          Container(color: appPrimary,
            width: MediaQuery.of(context).size.width,
            height: 100,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top:40.0),
                  child: Text(widget.doctorModel.firstName),
                ),

              ],
            ),
          ),

        ],
      ),
    );
  }
}
