// // ignore: unused_import
// import 'package:app/col.dart';
// import 'package:flutter/material.dart';

// import '../model/product_model.dart';

// class CategoryList extends StatelessWidget {
//   const CategoryList({
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return GridView.builder(
      
//       shrinkWrap: true,
//       physics: const ScrollPhysics(),
//       itemCount: products.length,
//       gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount:2),itemBuilder: (context,index)=> CategoryCard(
//         product: products[index],
//       ));
//   }
// }

// class CategoryCard extends StatelessWidget {
//   const CategoryCard({
//     Key? key,required this.product, 
//   }) : super(key: key);
// // ignore: prefer_typing_uninitialized_variables
// final  product;
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
      
      
//       padding: const EdgeInsets.all(8.0),
//       child: Container(
    
//         padding: const EdgeInsets.all(10.0),
//         height: 10,
//         decoration: BoxDecoration(
//           color: product.color,
//           borderRadius: BorderRadius.circular(15.0),
          
          
//         ),
        
        
//         child: Column(
          
//           children: [
            
              
  
//             Image.asset(
//               product.image,
//               height: 120,
//             ),
//             const SizedBox(
//               height: 10,
//             ),
//             Text(
//               product.title,
//               style: const TextStyle(fontSize: 18,
//               color: Colors.white,
//               fontWeight: FontWeight.bold),
//               ),
  
// ]
//         ),
  
//       ),
  
//     );
//   }
  
// }

