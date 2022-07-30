// import 'package:flutter/material.dart';
// import 'package:fultter6/Product.dart';

// class ItemCard extends StatelessWidget {
//   final products product;
//   final Function press;
//   const ItemCard({Key? key, required this.product, required this.press})
//       : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: () {
//         const snackBar = SnackBar(content: Text('Tap'));

//         ScaffoldMessenger.of(context).showSnackBar(snackBar);
//       },
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Expanded(
//               child: Container(
//             padding: EdgeInsets.all(10),
//             height: 249,
//             width: 159,
//             decoration: BoxDecoration(
//               color: Color(0xffDAD3C8),
//               border: Border.all(color: Color(0xff242424), width: 1),
//               borderRadius: BorderRadius.circular(11),
//             ),
//             child: Image.asset(
//               product.image,
//               fit: BoxFit.cover,
//             ),
//           )),
//           Padding(
//             padding: EdgeInsets.only(left: 5),
//             child: Text(
//               product.Title,
//               style: TextStyle(color: Colors.black),
//             ),
//           ),
//           Padding(
//             padding: EdgeInsets.only(left: 5),
//             child: Text(
//               "${product.Price} RSA",
//               style: TextStyle(
//                   fontWeight: FontWeight.bold, color: Color(0xff3C5F06)),
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }
