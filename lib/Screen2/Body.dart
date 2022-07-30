// import 'package:flutter/material.dart';
// import 'package:fultter6/Screen2/Prodect_card.dart';
// import 'package:fultter6/Product.dart';
// import 'package:fultter6/Screen2/RowSelect.dart';
// import 'package:fultter6/Screen2/detalsScreen/DetailsScreen.dart';

// class Body1 extends StatelessWidget {
//   const Body1({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Padding(padding: EdgeInsets.only(left: 15, right: 15)),
//         ListRow(), //call class RowSelect
//         Expanded(
//           child: Padding(
//               padding: EdgeInsets.symmetric(horizontal: 20),
//               child: GridView.builder(
//                 itemCount: product.length,
//                 gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                     crossAxisCount: 2, //كل 2 بسطر
//                     mainAxisSpacing: 20, //بين الطول
//                     crossAxisSpacing: 10, //العرض
//                     childAspectRatio: 0.70), //الطول
//                 itemBuilder: (context, index) => ItemCard(
//                   product: product[index],
//                   press: () => Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                         builder: (context) =>
//                             Detelsinformation(prodect: product[index]),
//                       )),
//                 ),
//               )),
//         )
//       ],
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:fultter6/Screen2/CustomSearchDelegate.dart';
// import 'package:fultter6/Screen2/Profile.dart';
// import 'package:fultter6/Screen2/Wishlisr.dart';
// import 'package:fultter6/Screen2/page2.dart';

// class bottomNavigationBarPage2 extends StatefulWidget {
//   const bottomNavigationBarPage2({Key? key}) : super(key: key);

//   @override
//   State<bottomNavigationBarPage2> createState() => _MyWidgetState();
// }

// class _MyWidgetState extends State<bottomNavigationBarPage2> {
//   int currentIndex = 0;
//   List options = [Screen2(), Wishlist(), Searsh(), Profile()];

//   @override
//   Widget build(BuildContext context) {
//     return BottomNavigationBar(
//       backgroundColor: Color(0xffDAD3C8),
//       items: [
//         BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: "HOME"),
//         BottomNavigationBarItem(
//             icon: Icon(Icons.library_add_check_outlined), label: "WISHLIST"),
//         BottomNavigationBarItem(icon: Icon(Icons.search), label: "SEARSH"),
//         BottomNavigationBarItem(
//             icon: Icon(Icons.location_history_outlined), label: "PROFILE"),
//       ],
//       currentIndex: currentIndex,
//       selectedItemColor: Color(0xff242424),
//       unselectedItemColor: Color(0xff999999),
//       onTap: (ValueSeleted) {
//         setState(() {
//           currentIndex = ValueSeleted;
//         });
//       },
//     );
//   }
// }
