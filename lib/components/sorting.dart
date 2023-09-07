import 'package:flutter/material.dart';

import '../constant.dart';

class Sorting extends StatelessWidget {
  const Sorting({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          padding:const EdgeInsets.symmetric(
            horizontal: 15.0,vertical: 10),
            decoration: BoxDecoration(color: kpink,borderRadius: BorderRadius.circular(10.0)),
            child: const Text("Top", style: TextStyle(fontSize: 18.0,color: Colors.white),),

        ),
        // Container(
        //   padding:const EdgeInsets.symmetric(
        //     horizontal: 15.0,vertical: 10),
            
        //     child: const Text("Detail", style: TextStyle(fontSize: 18.0,),),

        // ),
        //  Container(
        //   padding:const EdgeInsets.symmetric(
        //     horizontal: 15.0,vertical: 10),
            
        //     child: const Text("College", style: TextStyle(fontSize: 18.0,),),
        //  ),
        //   Container(
        //   padding:const EdgeInsets.symmetric(
        //     horizontal: 10.0,vertical: 9),
            
        //     child: const Text("Student Profile", style: TextStyle(fontSize: 18.0,),),
        //   ),
      ],
    );
  }
}

