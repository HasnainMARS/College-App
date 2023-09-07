// import 'package:flutter/material.dart';


// class Coolsec extends StatelessWidget {
//   const Coolsec({ Key? key }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: Text("fhfh"),
//     );
//   }
// }
//  Container(
//         child: GridView(
//           children: [
//             Container(
//               decoration: const BoxDecoration(
                
//                 image: DecorationImage(image: AssetImage("assets/images/graphics2.png"))
                
//               ),
//               child: InkWell(
//                   onTap:() {
//                     Navigator.push(context, MaterialPageRoute(builder: (context)=>
//                           const Attandance(),
//                           )
//                           );
//                   },
//                 ),

//             ),
//             Container(
//               decoration: const BoxDecoration(
                
//                 image: DecorationImage(image: AssetImage("assets/images/programming4.png"))
                
//               ),

//             ),
//             Container(
//               decoration: const BoxDecoration(
                
//                 image: DecorationImage(image: AssetImage("assets/images/finance1.png"))
                
//               ),

//             ),
//             Container(
//               decoration: const BoxDecoration(
                
//                 image: DecorationImage(image: AssetImage("assets/images/ux5.png"))
                
//               ),

//             ),
            
//           ],
//           gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,crossAxisSpacing: 10,mainAxisSpacing: 10),
//         ),
//       ),





// import 'package:app/constant.dart';
// import 'package:flutter/material.dart';

// class TimeTableSec extends StatefulWidget {
//   const TimeTableSec({ Key? key }) : super(key: key);

//   @override
//   State<TimeTableSec> createState() => _TimeTableSecState();
// }

// class _TimeTableSecState extends State<TimeTableSec> {
//   @override
//   Widget build(BuildContext context) {
    
  
//     return Scaffold(
//       appBar: AppBar(
        
//         centerTitle: true,
//         title: Text("Time Table"),
//         backgroundColor: kblue,
//         shadowColor: Colors.blue,
//       ),
//       body:
//       SingleChildScrollView(
       
//         child: Center(
//           child: Column(
//             children: [
              
//               const SizedBox(
//                 height: 30,
//               ),
//               Container(
//                 height: 100,
//                 width: 398,
                
//               decoration: BoxDecoration(
                
//                 color: Colors.grey,
//                  borderRadius: BorderRadius.circular(10),
                 
//               ),
//               child:Column(
//                 children: [
                  
//                      const Text("Monday",
//                               textAlign: TextAlign.center,
//                               style:TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),
//                               ),
                  
//                   const SizedBox(
//                     height: 20,
//                   ),
//                   Row(
//                     children: const [
//                       Text("Period:",
//                               textAlign: TextAlign.center,
//                               style:TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),
//                               ),
//                               Text("DLD(1:00_2:00), DS(2:00_3:00), PF(3:00_4:00), PST(4:00_5:00)",
//                               textAlign: TextAlign.center,
//                               style:TextStyle(fontSize: 11,fontWeight: FontWeight.bold,color: Colors.white),
//                               )
//                     ],
//                   ),
//                 ],
//               ),
//               ),
//                const SizedBox(
//                 height: 30,
//               ),
//               Container(
//                 height: 100,
//                 width: 398,
                
//               decoration: BoxDecoration(
//                 color: Colors.grey,
//                  borderRadius: BorderRadius.circular(10),
                 
//               ),
//               child:Column(
//                 children: [
                  
//                      const Text("Tuesday",
//                               textAlign: TextAlign.center,
//                               style:TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),
//                               ),
                  
//                   const SizedBox(
//                     height: 20,
//                   ),
//                   Row(
//                     children: const [
//                       Text("Period:",
//                               textAlign: TextAlign.center,
//                               style:TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),
//                               ),
//                               Text("PF(1:00_2:00), DS(2:00_3:00), PF(3:00_4:00), PST(4:00_5:00)",
//                               textAlign: TextAlign.center,
//                               style:TextStyle(fontSize: 11,fontWeight: FontWeight.bold,color: Colors.white),
//                               )
//                     ],
//                   ),
//                 ],
//               ),
//            ),
//             const SizedBox(
//                 height: 30,
//               ),
//               Container(
//                 height: 100,
//                 width: 398,
                
//               decoration: BoxDecoration(
//                 color: Colors.grey,
//                  borderRadius: BorderRadius.circular(10),
                 
//               ),
//               child:Column(
//                 children: [
                  
//                      const Text("Wednesday",
//                               textAlign: TextAlign.center,
//                               style:TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),
//                               ),
                  
//                   const SizedBox(
//                     height: 20,
//                   ),
//                   Row(
//                     children: const [
//                       Text("Period:",
//                               textAlign: TextAlign.center,
//                               style:TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),
//                               ),
//                               Text("MATH(1:00_2:00), PF(2:00_3:00), DS(3:00_4:00), ENG(4:00_5:00)",
//                               textAlign: TextAlign.center,
//                               style:TextStyle(fontSize: 11,fontWeight: FontWeight.bold,color: Colors.white),
//                               )
//                     ],
//                   ),
//                 ],
//               ),
//            ),
//             const SizedBox(
//                 height: 30,
//               ),
//               Container(
//                 height: 100,
//                 width: 398,
                
//               decoration: BoxDecoration(
//                 color: Colors.grey,
//                  borderRadius: BorderRadius.circular(10),
                 
//               ),
//               child:Column(
//                 children: [
                  
//                      const Text(" Thursday",
//                               textAlign: TextAlign.center,
//                               style:TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),
//                               ),
                  
//                   const SizedBox(
//                     height: 20,
//                   ),
//                   Row(
//                     children: const [
//                       Text("Period:",
//                               textAlign: TextAlign.center,
//                               style:TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),
//                               ),
//                               Text("DLD(1:00_2:00), MATH(2:00_3:00), DLD(3:00_4:00), ",
//                               textAlign: TextAlign.center,
//                               style:TextStyle(fontSize: 11,fontWeight: FontWeight.bold,color: Colors.white),
//                               )
//                     ],
//                   ),
//                 ],
//               ),
//           ),
//            const SizedBox(
//                 height: 30,
//               ),
//               Container(
//                 height: 100,
//                 width: 398,
                
//               decoration: BoxDecoration(
//                 color: Colors.grey,
//                  borderRadius: BorderRadius.circular(10),
                 
//               ),
//               child:Column(
//                 children: [
                  
//                      const Text("Friday",
//                               textAlign: TextAlign.center,
//                               style:TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),
//                               ),
                  
//                   const SizedBox(
//                     height: 20,
//                   ),
//                   Row(
//                     children: const [
//                       Text("",
//                               textAlign: TextAlign.center,
//                               style:TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),
//                               ),
//                               Text("                            OFF",
//                               textAlign: TextAlign.center,
//                               style:TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.red),
//                               )
//                     ],
//                   ),
//                 ],
//               ),
//           ),
//            const SizedBox(
//                 height: 30,
//               ),
//               Container(
//                 height: 100,
//                 width: 398,
                
//               decoration: BoxDecoration(
//                 color: Colors.grey,
//                  borderRadius: BorderRadius.circular(10),
                 
//               ),
//               child:Column(
//                 children: [
                  
//                      const Text("Saturday",
//                               textAlign: TextAlign.center,
//                               style:TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),
//                               ),
                  
//                   const SizedBox(
//                     height: 20,
//                   ),
//                   Row(
//                     children: const [
//                       Text("Period:",
//                               textAlign: TextAlign.center,
//                               style:TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),
//                               ),
//                               Text("MATH(1:00_2:00), DLD(2:00_3:00),ENG(3:00_4:00),ENG(4:00_5:00)",
//                               textAlign: TextAlign.center,
//                               style:TextStyle(fontSize: 10.5,fontWeight: FontWeight.bold,color: Colors.white),
//                               )
//                     ],
//                   ),
//                 ],
//               ),
              
//           ),
//           SizedBox(height: 30,)
//             ],
//           ),
//         ),
//       ),
      
//     );
    
//   }
// }




