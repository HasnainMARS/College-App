

// import 'package:app/components/loginscreen.dart';

// import 'package:app/mainsec.dart';
import 'package:app/model/loginscreen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  // WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
static final id='mainsec';
Future<FirebaseApp> _initializeFirebase() async{
      FirebaseApp firebaseApp = await Firebase.initializeApp();
      return firebaseApp;
    }
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
     
    
    
  }
}

