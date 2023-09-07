


import 'package:app/mainsec.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // ignore: unused_element
  Future<FirebaseApp> _initializeFirebase() async{
    FirebaseApp firebaseApp = await Firebase.initializeApp();
    return firebaseApp;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: _initializeFirebase(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done);
          return LoginScreen();
        
        // ignore: dead_code
        return const Center(child: CircularProgressIndicator());
        }
      ),
  
 );
    
  }
}


class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  // loginFuntion
  // ignore: unused_element
  static Future<User?>  loginUsingEmailPassward(

{required String email,
required String password,
required BuildContext context}) async {
  FirebaseAuth auth = FirebaseAuth.instance;
  User? user;
  try {
    UserCredential userCredential = await auth.signInWithEmailAndPassword(email: email, password: password);
    user = userCredential.user;
  } on FirebaseAuthException catch (e) {
    
    if(e.code == "user-not-found");{
      print("No user found for that email ");
    }
  }
  return user;
}
  @override
  Widget build(BuildContext context) {
    // create the textfiled controller
    // ignore: unused_local_variable
    TextEditingController _emailController = TextEditingController();
    // ignore: unused_local_variable
    TextEditingController _passwordController = TextEditingController();

    return 
       Padding(padding: EdgeInsets.all(16.0),
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("MyApp Title",
            style: TextStyle(
              color: Colors.black,
              fontSize: 28.0,
              fontWeight: FontWeight.bold,
            ),
            ),
            Text(
              "Login to your App",
              style:TextStyle(
                color: Colors.black,
                fontSize: 44.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 44.0,
            ),
            TextField(
              controller: _emailController,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                hintText: "User Email",
                prefixIcon: Icon(Icons.mail,color: Colors.black,),
              ),
            ),
            SizedBox(
              height: 44.0,
            ),
            TextField(
              controller:  _passwordController,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                hintText: "User Password",
                prefixIcon: Icon(Icons.lock,color: Colors.black,),
              ),
            ),
             SizedBox(
              height: 12.0,
             ),
             Text(
              "Don't Remmber your Password?",
              style: TextStyle(color: Colors.blue),
             ),
             SizedBox(
              height: 88.0,
             ),
             Container(
              width: double.infinity,
              child: RawMaterialButton(
                fillColor: Color(0xFF0069FE),
                elevation: 0.0,
                padding: EdgeInsets.symmetric(vertical:20.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0),
                ),
                onPressed: () async{
                  User? user = await loginUsingEmailPassward(email: _emailController.text, password: _passwordController.text, context: context);
                  print(user);
                  if (user != null){
                    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>MainSec()));
                  }
                },
                child: Text("Login",
                style:TextStyle(
                  color: Colors.white,
                  fontSize: 18.0,
                )
                
                ),
                ),
             )
          ],
        ),
        );
  }
}