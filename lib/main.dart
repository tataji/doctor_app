import 'file:///C:/Users/91850/Desktop/doctor_app/lib/Screens/Home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Color(0xFF015ecb),
        primaryColorDark:  Color(0xFF2F579F),
       accentColor: Color(0xFFfab206),
      ),
      home:Home(),
    );
  }
}


