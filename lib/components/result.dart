import 'package:app/constant.dart';
import 'package:flutter/material.dart';

class ResultSec extends StatefulWidget {
  const ResultSec({ Key? key }) : super(key: key);

  @override
  State<ResultSec> createState() => _ResultSecState();
}

class _ResultSecState extends State<ResultSec> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: korange,
        centerTitle: true,
      title: const Text("Result"),
      ),
      body: Padding(padding: EdgeInsets.only(top: 60.0),
      child: Column(children: [
      Container(
        height: 100,
            
            
        
        child:Center(child: Text("1st Semester Result",style: TextStyle(color: Colors.black,fontSize:30),)),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 50.0),
        child: Container(
          height: 50,
              width: 500,
              color: korange,
              child:Center(child: Text("Subjacts                        markes",style: TextStyle(color: Colors.black,fontSize:25),)),
      ), 
        ),
      Padding(
        padding: const EdgeInsets.only(top: 10.0),
        child: Container(
          height: 150,
              width: 500,
              color:korange,
              child: Text("Programming:   40\nCalculas:            40\nNetworking:       35\nObjectOriented: 35\nDataStructure:   50\n  TotalGPA=3.5",textAlign: TextAlign.justify,
              style: TextStyle(color: Colors.black,fontSize:20,wordSpacing:140.0,),)),
      ), 
        
      ]
      ),
      ),
    );
  }
}
