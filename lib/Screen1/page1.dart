import 'package:flutter/material.dart';
import 'package:fultter6/Screen2/page2.dart';

///
///Here, an image will appear as a background and a teaser title, as well as the start button
///

class Screen1 extends StatelessWidget {
  const Screen1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          //insert image and fix size-----------------------------------------------------
          Image(
            image: AssetImage(
              "assets/images/Screen1.jpg",
            ),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            fit: BoxFit.cover,
          ),
          //insert title also play whit size and color-----------------------------------------------------
          Container(
            margin: EdgeInsets.only(top: 2, left: 20),
            child: Column(
              children: [
                Text("\nElegant\nSimple\nFurnitures.",
                    style: Theme.of(context).textTheme.headline3?.copyWith(
                          color: Color(0xff000000),
                          fontWeight: FontWeight.bold,
                        ))
              ],
            ),
          ),
          Container(
            //create button-----------------------------------------------------
            alignment: Alignment.center,
            padding: EdgeInsets.only(top: 700),
            child: ElevatedButton(
              child: Text("GET START",
                  style: TextStyle(
                    color: Color(0xffDAD3C8),
                    fontWeight: FontWeight.bold,
                    fontSize: 28,
                  )),
              style: ElevatedButton.styleFrom(
                fixedSize: Size(331, 63),
                primary: Color(0xff000000),
                shadowColor: Color(0xff242424),
                elevation: 25, // الابعاد الشادو
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              //call the Second page
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Screen2()),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
