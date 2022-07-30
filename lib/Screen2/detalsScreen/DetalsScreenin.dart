

// import 'package:flutter/material.dart';
// import 'package:fultter6/Product.dart';

// class DetelsBody extends StatefulWidget {
//   final products Product;
//   const DetelsBody({Key? key, required this.Product}) : super(key: key);

//   @override
//   State<DetelsBody> createState() => _DetelsBody();
// }

// class _DetelsBody extends State<DetelsBody> {
//   @override
//   Widget build(BuildContext context) {
//     Size size = MediaQuery.of(context).size; //total h & w
//     return SingleChildScrollView(
//       child: Column(
//         children: [
//           SizedBox(
//             height: size.height,
//             width: size.width,
//             child: Stack(children: [
//               Container(
//                 margin: EdgeInsets.only(top: size.height * 0.3),
//                 height: 500,
//                 decoration: BoxDecoration(
//                     color: Colors.blueAccent,
//                     borderRadius: BorderRadius.only(
//                         topLeft: Radius.circular(24),
//                         topRight: Radius.circular(24))),
//               ),
//               productsTitele(
//                 product: product,
//               ),
//             ]),
//           ),
//         ],
//       ),
//     );
//   }
// }

// //================================================================================
// class productsTitele extends StatelessWidget {
//   final products prodect;
//   const productsTitele({Key? key, required this.prodect}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: EdgeInsets.symmetric(
//         horizontal: 20,
//       ),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text(products.Title,
//               style: Theme.of(context)
//                   .textTheme
//                   .headline6
//                   .copyWith(fontSize: FontWeight.bold)),
//           SizedBox(
//             height: 20,
//           ),
//           Row(
//             children: [
//               RichText(
//                   text: TextSpan(children: [
//                 TextSpan(text: "price"),
//                 TextSpan(
//                     text: " ${prodect.Price}",
//                     style: Theme.of(context).textTheme.headline6.copyWith(
//                         color: Color(0xff3C5F06), fontSize: FontWeight.bold)),
//               ])),
//               SizedBox(
//                 width: 20,
//               ),
//               Expanded(child: Image.asset(product.image, fit: BoxFit.fill))
//             ],
//           )
//         ],
//       ),
//     );
//   }
// }
