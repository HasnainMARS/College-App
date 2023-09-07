import 'package:app/constant.dart';

import 'package:flutter/material.dart';

import 'home_screen.dart';
import 'package:lottie/lottie.dart';



class MainSec extends StatelessWidget {
  const MainSec({ Key? key }) : super(key: key);
static final id = 'loginscreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(child: Column(
        children: [
          Expanded(
            flex: 3,
            child: Container(
              width: double.infinity,
              decoration:const BoxDecoration(
                color: kblue,
                borderRadius: BorderRadius.only(bottomRight: Radius.circular(50))
              ) ,
              child: Column(
                children: [
                  Expanded(child: 
                  Lottie.asset('assets/images/28893-book-loading.json')
                  ),
                  
                ],
              ),
            ),
          ),
          Expanded(flex:2, 
          child:Container(
            color: kblue,
            child: Container(
              width: double.infinity,
              decoration: const BoxDecoration(color: Colors.white,
            borderRadius: BorderRadius.only(topLeft: Radius.circular(50)),
            ),
            child:Padding(padding: const EdgeInsets.all(15.0),
            child: Column(
              children:  [
                Spacer(),
                // ignore: prefer_const_constructors
                Text("Learning with app",
                // ignore: prefer_const_constructors
                style: TextStyle(
                  wordSpacing: 2.5,
                  fontSize: 28,
                fontWeight: FontWeight.bold),
                ),
                const Spacer(
                  flex: 3,
                ),
                const Text("Learn with plueasure with\nus,where you are",
                textAlign: TextAlign.center,
                // ignore: unnecessary_const
                style: const TextStyle(
                  color: Colors.black54,
                  height: 1.5,
                  fontSize: 16,
                fontWeight: FontWeight.w500),
                ),
                const Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      MaterialButton(
                        minWidth: 120,
                        height: 60,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
                        color: kpink,
                        
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>
                          const HomeScreen(),
                          )
                          );
                        },
                      child: const Text("Get Start",
                      // ignore: unnecessary_const
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.white
                      ),
                      ),
                      )
                    ],
                  )
              ],
            ),),

            ),
          ),
          ),

        ],
      )),
      
    );
    

  }
}