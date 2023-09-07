import 'package:app/constant.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/material.dart';





import 'package:firebase_auth/firebase_auth.dart';



class Collegenews extends StatelessWidget {
   Collegenews({super.key});
final auth = FirebaseAuth.instance;
final ref = FirebaseDatabase.instance.ref('news');
  @override
  
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         centerTitle: true,
        title: Text("College News"),
        backgroundColor: Colors.blue,
        shadowColor: Colors.blue,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Expanded(child: FirebaseAnimatedList(query: ref,
          defaultChild: Text('Loading'),
          
           itemBuilder: (context,snapshot,animation,index){
            return Card(
              color: Colors.grey,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20)
          ),
              child: ListTile(
                title: Text(snapshot.child('title').value.toString()),
              ),
            );
          }))
        ],
      ),
      
      );
    
  }
}
