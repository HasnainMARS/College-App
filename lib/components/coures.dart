import 'package:app/constant.dart';
import 'package:flutter/material.dart';

class CoursesSec extends StatefulWidget {
  const CoursesSec({ Key? key }) : super(key: key);

  @override
  State<CoursesSec> createState() => _CoursesSecState();
}

class _CoursesSecState extends State<CoursesSec> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         centerTitle: true,
        title: Text("Courses"),
        backgroundColor: kpink,
        shadowColor: Colors.red,
      ),
    );
  }
}