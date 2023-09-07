

import 'package:app/constant.dart';
import 'package:pie_chart/pie_chart.dart';
import 'package:flutter/material.dart';

class AttendanceSec extends StatefulWidget {
  const AttendanceSec({ Key? key }) : super(key: key);

  @override
  State<AttendanceSec> createState() => _AttendanceSecState();
}

class _AttendanceSecState extends State<AttendanceSec> {
  Map<String, double> dataMap = {
    "Presents":18.47,
    "Absences":11.70,
    "leaves":3.51,
  };

  List<Color> colorList = [
Color(0xB90270FF),
Color(0xFFFC747F),
Color(0xFF71b8ff),
Color(0xFFffaa5b)
];
  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    return Scaffold(
     appBar: AppBar(
      backgroundColor:bblue,
      centerTitle: true,
      title: const Text("Attandance"),
     ),
     body: Padding(
      padding: EdgeInsets.only(top: 200.0),
        child: Column(
         children: [
           Container(
             child: Center(
              child: PieChart(
                dataMap: dataMap,
                colorList:colorList,
                chartRadius:MediaQuery.of(context).size.width / 2,
                centerText: "Your Attandance",
                chartType: ChartType.ring,
                ringStrokeWidth: 17,
                animationDuration: Duration(seconds: 3),
                chartValuesOptions: ChartValuesOptions(
                showChartValues:true,
                showChartValuesOutside: true,
                showChartValuesInPercentage: true,
                showChartValueBackground: false
                ),
                legendOptions: LegendOptions(
                showLegends: true,
                legendTextStyle: TextStyle(fontSize: 20),
                legendPosition: LegendPosition.bottom,
                showLegendsInRow: true,
                ),
               ),),
           ),
           Container(
            child: Text("If your attandance is blow then 75% you are struck off",style: TextStyle(color: Colors.red),),
           )
         ],
       ),
     ),
     );
       }
}