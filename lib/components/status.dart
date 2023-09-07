// import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/material.dart';


class Statussec extends StatefulWidget {
  const Statussec({super.key});

  @override
  State<Statussec> createState() => _StatussecState();
}

class _StatussecState extends State<Statussec> {
  // final postControll=TextEditingController();
  
  //  bool Loading = false;
  //   final databaseRef = FirebaseDatabase.instance.ref('post  ');.
  // final auth = FirebaseAuth.instance;
  final ref = FirebaseDatabase.instance.ref('post');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
    title:Text('Add post'),

    ),
   body: Column(
    children: [
      Expanded(child: FirebaseAnimatedList(query:ref,
      // defaultChild: Text('Loading'),
       itemBuilder: (context,snapshot,animation,index){
        return ListTile(
          title: Text(snapshot.child('name').value.toString() ,
        style: TextStyle(color: Colors.blue),
           ),
          subtitle: Text(snapshot.child('id').value.toString()),
        ); 
      }
      
      ),),
    ],
   ),

    );
  }
}