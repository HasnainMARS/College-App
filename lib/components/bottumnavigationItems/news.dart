import 'package:app/constant.dart';
import 'package:flutter/material.dart';

class Newa extends StatefulWidget {
  const Newa({super.key});

  @override
  State<Newa> createState() => _NewaState();
}

class _NewaState extends State<Newa> {
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