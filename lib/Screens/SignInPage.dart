import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_picker_dropdown.dart';
import 'package:country_pickers/utils/utils.dart';
import 'package:doctor_app/model/DoctorModel.dart';
import 'package:doctor_app/utils/constant.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class SignInScreen extends StatefulWidget {

  SignInScreen();

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return SignInScreenState();
  }
}

class SignInScreenState extends State<SignInScreen> {
  TextEditingController phoneFieldController = new TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  Widget _buildDropdownItem(Country country) => Container(
    child: Row(
      children: <Widget>[
        CountryPickerUtils.getDefaultFlagImage(country),
        SizedBox(
          width: 8.0,
        ),
        Text("+${country.phoneCode}(${country.isoCode})"),
      ],
    ),
  );
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Container(color: appPrimary,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 100,),
            Text("Enter your Mobile number ",style: TextStyle(color: Colors.white),),
            Row(
              children: <Widget>[
                Expanded(
                  child: CountryPickerDropdown(
                    initialValue: 'in',
                    itemBuilder: _buildDropdownItem,
                    onValuePicked: (Country country) {
                      print("${country.name}");
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
