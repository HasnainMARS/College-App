

import 'package:app/appdrawa/collegenews.dart';
import 'package:app/appdrawa/events.dart';
import 'package:app/components/attandance.dart';
import 'package:app/components/bottumnavigationItems/home.dart';
import 'package:app/components/bottumnavigationItems/news.dart';
import 'package:app/components/result.dart';
import 'package:app/components/status.dart';
import 'package:app/components/timet_table.dart';
import 'package:app/constant.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';


import 'components/sorting.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({ Key? key }) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int myIndex=0;
final abs =[
Newa()  ,  //  Text('Home',style: TextStyle(fontSize: 40),),
Home(),  // Text('college',style: TextStyle(fontSize: 40),),
Text('News',style: TextStyle(fontSize: 40),),
Text('sETTING',style: TextStyle(fontSize: 40),),
];
 final currentUser = FirebaseAuth.instance;
 final CollectionReference _session = FirebaseFirestore.instance.collection('session2022-2025');
  @override
  Widget build(BuildContext context) {
    
    
    return Scaffold(
     appBar: AppBar(
        title: const Text('School Admin Panel'),
      ),
      drawer: Drawer(
        child: Column(
          children: [
           StreamBuilder(stream:FirebaseFirestore.instance.collection('session2022-2025').where("uid",isEqualTo:currentUser.currentUser!.uid).snapshots(),
           builder:(context,AsyncSnapshot<QuerySnapshot> streamSnapshot){
             if (streamSnapshot.hasData) {
              return ListView.builder(
        itemCount: streamSnapshot.data!.docs.length,
        shrinkWrap: true,
        itemBuilder: (context, index){
          var data = streamSnapshot.data!.docs[index];
          return UserAccountsDrawerHeader(accountName: Text(data["Name"]), accountEmail:Text(data["Email"]));
          
        }
        
        );
             }else{
              return CircularProgressIndicator();
             }
           }
           ),
            ListTile(
              leading: const Icon(Icons.newspaper),
              title: const Text('Collegenews'),
              onTap: () { Navigator.push(context, MaterialPageRoute(builder: (context)=>
                                  Collegenews(),
                                )
                                );
                // Handle dashboard tap
              },
            ),
            
                ListTile(
                  leading: const Icon(Icons.event),
                  title: const Text('Events'),
                
                  onTap: () {
                     Navigator.push(context, MaterialPageRoute(builder: (context)=>
                                  EventsSec(),
                                )
                                );
                    // Handle students tap
                  },
                ),
              
            ListTile(
              leading: const Icon(Icons.assignment),
              title: const Text('Courses'),
              onTap: () {
                // Handle courses tap
              },
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('Settings'),
              onTap: () {
                // Handle settings tap
              },
            ),
            ListTile(
              leading: const Icon(Icons.logout),
              title: const Text('Logout'),
              onTap: () {
                // Handle logout tap
              },
            ),
          ],
        ),
      ),
      body: SafeArea(
        
        
          child: ListView(
            
          children: [
              
            
            const SizedBox(
              height: 40,
            ),
            
            Padding(
              
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text("Hallo students",style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold,
                          ),
                          
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Text("Today is a good\nto learn something new!",
                        
                        // ignore: unnecessary_const
                        style: const TextStyle(
                          color: Colors.black54,
                          
                          fontSize: 16,
                        fontWeight: FontWeight.w500),
                        ),
                          
                        ],
                      ),
                      const Spacer(),
                      Column(children: [
                        
                        Container(
                          height: 70,
                          width: 70,
                          decoration:  BoxDecoration(color:Colors.white,
                          borderRadius: BorderRadius.circular(30)),
                          
                          child: Image.asset("assets/images/icon1.png",
                          
                          ),
                          
                          
                        )
                        
                      ],
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20,
        
                  ),
                  const Sorting(),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    
                    children:  [
                      const Text("Categories",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        ),
                      ),
                      InkWell(
                        onTap: () async {
                          
                        },
                        child:const Text("See All",style: TextStyle(fontSize: 16,color: kblue), 
                        ),
                        ),
                      
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  
                Column(
                  
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
        
                        Container(
                          height: 210,
                          width: 180,
                          padding: const EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            color: kblue,
                            borderRadius: BorderRadius.circular(30)
                          ),
                          child: InkWell(
                    onTap:() {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>
                            const timetble(),
                            )
                            );
                    },
                    child:
                          Column(
                            children: [
                              
                              Image.asset("assets/images/graphics2.png"),
                              
                            const  SizedBox(
                                height: 5,
                              ),
                              const Text("Time table",
                              textAlign: TextAlign.center,
                              style:TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),
                              )
                            ],
                          ),),
                           ),
                       Container(
                          height: 210,
                          width: 180,
                          padding: const EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            color: kpink,
                            borderRadius: BorderRadius.circular(30)
                          ),
                          child: InkWell(
                    onTap:() {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>
                            const Statussec(),
                            )
                            );
                    },
                     child: Column(
                            children: [
                              Image.asset("assets/images/programming4.png"),
                              const SizedBox(
                                height: 5,
                              ),
                              const Text("Courses",
                              textAlign: TextAlign.center,
                              style:TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),
                              )
                            ],
                          ),
                  ), 
                        ),
                      ],
                      ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                         Container(
                          height: 210,
                          width: 180,
                          padding: const EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            color: kpurple,
                            borderRadius: BorderRadius.circular(30)
                          ),
                          child: InkWell(
                    onTap:() {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>
                            const AttendanceSec(),
                            )
                            );
                    },
                    child: Column(
                            children: [
                              Image.asset("assets/images/attendane7.png"),
                              const SizedBox(
                                height: 5,
                              ),
                              const Text("Attendance",
                              textAlign: TextAlign.center,
                              style:TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),
                              )
                            ],
                          ),
                  ),   
                        ),
                        Container(
                          height: 210,
                          width: 180,
                          padding: const EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            color: korange,
                            borderRadius: BorderRadius.circular(30)
                          ),
                          child: InkWell(
                    onTap:() {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>
                            const ResultSec(),
                            ),
                            );
                       },
                    child: Column(
                            children: [
                              
                              Image.asset("assets/images/ux5.png"),
                              
                              const SizedBox(
                                height: 5,
                              ),
                              const Text("Result",
                              textAlign: TextAlign.center,
                              style:TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),
                              )
                            ],
                          ),
                  ),),
                      ],),
                    SizedBox(
                      height: 10,
                    ),],),
                ],),),
                
          ],
              ),
        ),
      
      
      );
    
  }
}

// child:WidgetList[myIndex],