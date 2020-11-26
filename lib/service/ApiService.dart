import 'dart:convert';
import 'package:http/http.dart' as http;

import '../model/DoctorModel.dart';

class APiService {
  static Future<List<DoctorModel>> fetchEmployee() async {
    final response = await http.get(
        'https://5efdb0b9dd373900160b35e2.mockapi.io/contacts',
        headers: {"Accept": "application/json"});
    List<DoctorModel> modelList = new List<DoctorModel>();
    var list = json.decode(response.body);
    for(var doctor in list){
      DoctorModel doctorModel = DoctorModel.fromJson(doctor);
      print('$doctorModel');
      modelList.add(doctorModel);
    }
    return modelList;
  }
}
