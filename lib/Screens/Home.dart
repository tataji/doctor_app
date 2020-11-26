import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../service/ApiService.dart';
import '../model/DoctorModel.dart';

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
    return Scaffold(appBar: AppBar(title: Text("BIMA"),),
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
                    return Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Row(
                        children: [
                          ClipRect(
                            child: Container(width: 100,height: 100,
                              child: Image.network(data.data[index].profilePic),),
                          ),
                          Column(
                            children: [
                              Container(
                                height: MediaQuery.of(context).size.height/14,
                                child: Text(data.data[index].firstName),
                              )
                            ],
                          ),
                        ],
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
