import 'package:doctor_app/model/DoctorModel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../service/ApiService.dart';
import 'DoctorDetailsScreen.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return HomeState();
  }
}

class HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(appBar: AppBar(title: Image.asset("assets/images/bima_dotor_name_blue.png"),
      actions: [
        Image.asset("assets/images/bima_logo_nav_blue.png"),
    ],),
      body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: FutureBuilder(
            future: APiService.fetchEmployee(),
            builder: (context, AsyncSnapshot<List<DoctorModel>> data) {
              if(data.hasData) {
                return ListView.builder(
                  itemCount: data.data.length,
                  itemBuilder: (context, index) {
                    return Container(
                      width: MediaQuery.of(context).size.width,
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: GestureDetector(
                          onTap: (){
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context)=>
                                  DoctorDetailsScreen(data.data[index])));
                        },
                          child: Column(
                            children: [
                              Row(mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  ClipRRect(borderRadius: BorderRadius.all(Radius.circular(100)),
                                    child: Container(width:50,height: 50,
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle
                                      ),
                                      child: Image.network(data.data[index].profilePic),),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      width:MediaQuery.of(context).size.width/1.9 ,
                                      child: Column(
                                        children: [
                                          Container(
                                            height: MediaQuery.of(context).size.height/14,
                                            child: Text(data.data[index].firstName),
                                          ),
                                          Text(data.data[index].firstName),
                                          Text(data.data[index].firstName),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Container(width: 50,
                                    child: Icon(
                                      Icons.arrow_forward_ios,color:  Color(0xFF015ecb),
                                    ),),

                                ],
                              ),
                              Container(width: MediaQuery.of(context).size.width,
                              color: Colors.grey,height: 1,
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                );
              }else{
                return Center(child: Container(width: 50,height: 50,
                    child: CircularProgressIndicator()));
              }
            },
          )),
    );
  }

}
