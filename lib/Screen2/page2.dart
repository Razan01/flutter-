import 'package:flutter/material.dart';
import 'package:fultter6/Product.dart';
import 'package:fultter6/Screen2/RowSelect.dart';
import 'package:fultter6/bottom%20Navigation%20Bar/Profile.dart';
import 'package:fultter6/bottom%20Navigation%20Bar/Wishlisr.dart';

import '../bottom Navigation Bar/CustomSearchDelegate.dart';

///
///here will be the prodect and you can shop and see the item
///

class Screen2 extends StatefulWidget {
  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  int currentIndex = 0;
  List options = [bodyPage2(), Wishlist(), Searsh(), Profile()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: options[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xffDAD3C8),
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined), label: "HOME"),
          BottomNavigationBarItem(
              icon: Icon(Icons.library_add_check_outlined), label: "WISHLIST"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "SEARSH"),
          BottomNavigationBarItem(
              icon: Icon(Icons.location_history_outlined), label: "PROFILE"),
        ],
        currentIndex: currentIndex,
        selectedItemColor: Color(0xff242424),
        unselectedItemColor: Color(0xff999999),
        onTap: (ValueSeleted) {
          setState(() {
            currentIndex = ValueSeleted;
          });
        },
      ),
    );
  }
}

//========================================================================================
AppBar bulidAppBar() {
  return AppBar(
      backgroundColor: Color(0xffDAD3C8),
      elevation: 0, //عشان ما يصير فيه خط الاب بار
      automaticallyImplyLeading: false, //عشان اشيل السهم
      title: Text('Rz. Furniture',
          style: TextStyle(
            color: Color(0xff000000),
            fontSize: 25,
          )),
      actions: [
        IconButton(
            onPressed: () {
              // Navigator.push(context, MaterialPageRoute(builder: ((context) => Body())));
            },
            icon: Icon(
              Icons.shopping_cart,
              color: Color(0xff242424),
              size: 30,
            )),
        Padding(padding: EdgeInsets.only(right: 2)),
      ]);
}

//========================================================================================//bottom Navigation Bar Page2
class bottomNavigationBarPage2 extends StatefulWidget {
  const bottomNavigationBarPage2({Key? key}) : super(key: key);

  @override
  State<bottomNavigationBarPage2> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<bottomNavigationBarPage2> {
  int currentIndex = 0;
  List options = [Screen2(), Wishlist(), Searsh(), Profile()];

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Color(0xffDAD3C8),
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: "HOME"),
        BottomNavigationBarItem(
            icon: Icon(Icons.library_add_check_outlined), label: "WISHLIST"),
        BottomNavigationBarItem(icon: Icon(Icons.search), label: "SEARSH"),
        BottomNavigationBarItem(
            icon: Icon(Icons.location_history_outlined), label: "PROFILE"),
      ],
      currentIndex: currentIndex,
      selectedItemColor: Color(0xff242424),
      unselectedItemColor: Color(0xff999999),
      onTap: (ValueSeleted) {
        setState(() {
          currentIndex = ValueSeleted;
        });
      },
    );
  }
}

//========================================================================================//Grid View
class bodyPage2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: bulidAppBar(),
      body: Column(
        children: [
          Padding(padding: EdgeInsets.only(left: 15, right: 15)),
          ListRow(), //call class RowSelect
          Expanded(
            child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: GridView.builder(
                  itemCount: product.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2, //كل 2 بسطر
                      mainAxisSpacing: 20, //بين الطول
                      crossAxisSpacing: 15, //العرض
                      childAspectRatio: 0.70), //الطول
                  itemBuilder: (context, index) => ItemCard(
                      product: product[index],
                      press: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  Detelsinformation(prodect: product[index]),
                            ));
                      }),
                )),
          )
        ],
      ),
    );
  }
}

//========================================================================================
class ItemCard extends StatelessWidget {
  final products product;
  final Function press;
  const ItemCard({Key? key, required this.product, required this.press})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => press(),
      child: Container(
          padding: EdgeInsets.all(10),
          height: 300,
          width: 159,
          decoration: BoxDecoration(
            color: Color(0xffDAD3C8),
            border: Border.all(color: Color(0xff242424), width: 1),
            borderRadius: BorderRadius.circular(11),
          ),
          child: Stack(
            children: [
              SizedBox(
                height: 190,
                width: 159,
                child: Image.asset(
                  product.image,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                bottom: 20,
                child: Padding(
                  padding: EdgeInsets.only(left: 5),
                  child: Text(
                    product.Title,
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                child: Padding(
                  padding: EdgeInsets.only(left: 5),
                  child: Text(
                    "${product.Price} RSA",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Color(0xff3C5F06)),
                  ),
                ),
              )
            ],
          )),
    );
  }
}

//============================================SectedItem=================================================

class Detelsinformation extends StatelessWidget {
  final products prodect;
  const Detelsinformation({Key? key, required this.prodect}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffDAD3C8),
      appBar: DetelsAppBar(context),
      body: DetelsBody(
        prodect: prodect,
      ),
    );
  }

  AppBar DetelsAppBar(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: Color(0xffDAD3C8),
      automaticallyImplyLeading: false,
      leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios_new,
            color: Colors.black,
          )),
    );
  }
}
//====================================================================================================

class DetelsBody extends StatefulWidget {
  final products prodect;
  const DetelsBody({Key? key, required this.prodect}) : super(key: key);

  @override
  State<DetelsBody> createState() => _DetelsBody();
}

class _DetelsBody extends State<DetelsBody> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size; //total height & width
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
              child: Column(
            children: [
              SizedBox(
                height: size.height,
                width: size.width,
                child: Stack(children: [
                  Container(
                    margin: EdgeInsets.only(top: size.height * 0.3),
                    padding: EdgeInsets.only(
                        top: size.height * 0.12, left: 20, right: 20),
                    height: 500,
                    decoration: BoxDecoration(
                        color: Color(0xff242424),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(24),
                            topRight: Radius.circular(24))),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Column(
                              children: [
                                Container(
                                  padding: EdgeInsets.only(left: 100),
                                  height: 24,
                                  width: 24,
                                  // Image(
                                  //     image: AssetImage(
                                  //   "assets/images/Like.jpg",
                                  // )),
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border:
                                          Border.all(color: Color(0xffDAD3C8))),
                                ),
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  // Padding(
                  //   padding: const EdgeInsets.symmetric(horizontal: 20),
                  //   child: Row(
                  //     crossAxisAlignment: CrossAxisAlignment.center,
                  //     children: [
                  //       Expanded(
                  //           child: Image.asset(widget.prodect.image,
                  //               fit: BoxFit.fill)),
                  //       SizedBox(height: 25),
                  //       Text(widget.prodect.Title.toString(),
                  //           style: Theme.of(context)
                  //               .textTheme
                  //               .headline6
                  //               ?.copyWith(fontSize: 20)),
                  //       SizedBox(height: 25),
                  //       Column(
                  //         children: [
                  //           Text(widget.prodect.Price.toString(),
                  //               style: Theme.of(context)
                  //                   .textTheme
                  //                   .headline6
                  //                   ?.copyWith(
                  //                       fontSize: 20,
                  //                       color: Color(0xff3C5F06))),
                  //           SizedBox(height: 25),
                  //         ],
                  //       )
                  //     ],
                  //   ),
                  // )
                ]),
              ),
            ],
          )),
        )
      ],
    );

    ;
  }
}

//================================================================================
class productsTitele extends StatelessWidget {
  final products prodect;
  const productsTitele({Key? key, required this.prodect}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 20,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(prodect.Title.toString(),
              style: Theme.of(context)
                  .textTheme
                  .headline6
                  ?.copyWith(fontSize: 20)),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              RichText(
                  text: TextSpan(children: [
                TextSpan(
                    text: " ${prodect.Price}",
                    style: Theme.of(context)
                        .textTheme
                        .headline6
                        ?.copyWith(color: Color(0xff3C5F06), fontSize: 20)),
              ])),
              SizedBox(
                width: 20,
              ),
              Expanded(child: Image.asset(prodect.image, fit: BoxFit.fill))
            ],
          )
        ],
      ),
    );
  }
}

//==============================================================================================
class fullproductsTitele extends StatelessWidget {
  final products prodect;
  const fullproductsTitele({Key? key, required this.prodect}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 20,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(prodect.Title.toString(),
              style: Theme.of(context)
                  .textTheme
                  .headline6
                  ?.copyWith(fontSize: 20)),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              RichText(
                  text: TextSpan(children: [
                TextSpan(text: "price"),
                TextSpan(
                    text: " ${prodect.Price}",
                    style: Theme.of(context)
                        .textTheme
                        .headline6
                        ?.copyWith(color: Color(0xff3C5F06), fontSize: 20)),
              ])),
              SizedBox(
                width: 20,
              ),
              Expanded(child: Image.asset(prodect.image, fit: BoxFit.fill))
            ],
          )
        ],
      ),
    );
  }
}
