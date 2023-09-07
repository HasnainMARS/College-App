import 'package:app/constant.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/material.dart';





import 'package:firebase_auth/firebase_auth.dart';



class timetble extends StatefulWidget {
  const timetble({super.key});

  @override
  State<timetble> createState() => _timetbleState();
}

class _timetbleState extends State<timetble> {
  final auth = FirebaseAuth.instance;
final ref = FirebaseDatabase.instance.ref('Post');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         centerTitle: true,
        title: Text("Timetable"),
        backgroundColor: kpink,
        shadowColor: Colors.red,
      ),
      body: Column(
        children: [
          Expanded(child: FirebaseAnimatedList(query: ref,
          defaultChild: Text('Loading'),
          
           itemBuilder: (context,snapshot,animation,index){
            return ListTile(
              title: Text(snapshot.child('title').value.toString()),
            );
          }))
        ],
      ),
      
      );
    
  }
}