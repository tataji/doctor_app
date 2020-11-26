import 'package:doctor_app/model/DoctorModel.dart';
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
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top:40.0),
              child: Text(widget.doctorModel.firstName),
            ),
          ],
        ),
      ),
    );
  }
}
