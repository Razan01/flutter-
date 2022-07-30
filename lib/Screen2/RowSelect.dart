import 'package:flutter/material.dart';

class ListRow extends StatefulWidget {
  const ListRow({Key? key}) : super(key: key);

  @override
  State<ListRow> createState() => _ListRow();
}

class _ListRow extends State<ListRow> {
  List<String> ListRowTerms = [
    'BEDROOM',
    'LIVING ROOM',
    'KITCHEN',
    'DINING',
    'BATHROOM',
    'FRAGRANCES',
    'KIDS'
  ];
  int SelectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: SizedBox(
        height: 25,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: ListRowTerms.length,
          itemBuilder: (context, index) => Buildcategory(index),
        ),
      ),
    );
  }

  Widget Buildcategory(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          SelectedIndex = index;
        });
      },
      child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                ListRowTerms[index],
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: SelectedIndex == index
                      ? Colors.black
                      : Color.fromARGB(255, 116, 113, 113),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 5),
                height: 2,
                width: 30,
                color:
                    SelectedIndex == index ? Colors.black : Colors.transparent,
              ),
              // mathing(index),
            ],
          )),
    );
  }
}

// Widget mathing(int index) {
//   for (var element1 in products.Type) {
//     for (var element2 in ListRowTerms) {
//       if(element1==element2){

//       }
//     }
//   }
//   return " " ;
// }
