import 'package:flutter/material.dart';

class products {
  final String image, Title, Description, Type;
  final int Id, Price, Quantity;
  final double Rate;

  products({
    required this.Id,
    required this.image,
    required this.Title,
    required this.Description,
    required this.Type,
    required this.Price,
    required this.Rate,
    required this.Quantity,
  });
}

List<products> product = [
//========BEDROOM=========//
  products(
      Id: 1,
      Title: "CAMPANULA FLOWER PRINT DUVET COVER",
      Description:
          "Duvet cover in 180 thread count cotton percale with a campanula floral print.Concealed button fastening at the bottom. JOIN LIFE Care for water: produced using less water. The use of closed cycles that allow water to be reused or technologies such as low bath ratio machines or mass dyeing help us to reduce water consumption in the processes of dyeing or washing garments.",
      Type: "BEDROOM",
      Price: 500,
      Rate: 4.5,
      Quantity: 12,
      image: "assets/images/1.jpg"),
//========LIVING ROOM=========//
  products(
      Id: 10,
      Title: "ACACIA WOOD DOUBLE BENCH",
      Description: "Double bench with a lower shelf made of 100% acacia wood.",
      Type: "LIVING ROOM",
      Price: 2999,
      Rate: 4.5,
      Quantity: 5,
      image: "assets/images/10.jpg"),

//=========KITCHEN===========//
  products(
      Id: 19,
      Title: "COPPER AND BRASS SAUCEPAN",
      Description:
          "Copper saucepan with a pure tin inner coating for food use with brass accessories. Copper is an excellent heat conductor, providing even cooking and stable temperature. Suitable for all hobs except induction. Cooking surface: 16 cm. Capacity: 1.75L. Recommendations and special care: - Use suitable oven mitts due to the brass accessories and handles. - Do not use metal utensils or cutlery on the inside. - Hand wash, not using metal scourers or abrasive solutions. - Both tin and copper tend to naturally darken over time and with use. For the copper exterior, the original colour can be recovered using specific products or a traditional vinegar and salt solution.",
      Type: "KITCHEN",
      Price: 1899,
      Rate: 5,
      Quantity: 1,
      image: "assets/images/19.jpg"),

//=========DINING===========//
  products(
      Id: 24,
      Title: "BLACK SPIRAL STONEWARE TABLEWARE",
      Description:
          "Black painted stoneware tableware with a brushed spiral effect.",
      Type: "DINING",
      Price: 199,
      Rate: 3.4,
      Quantity: 2,
      image: "assets/images/24.jpg"),

//=======BATHROOM========//
  products(
      Id: 27,
      Title: "TOWEL WITH EMBROIDERED APPLIQUÉ",
      Description:
          "Cotton towel with embroidered appliqué detail. JOIN LIFE Care for water: produced using less water. The use of closed cycles that allow water to be reused or technologies such as low bath ratio machines or mass dyeing help us to reduce water consumption in the processes of dyeing or washing garments. Grammage: 480 g/m2.",
      Type: "BATHROOM",
      Price: 549,
      Rate: 2.5,
      Quantity: 3,
      image: "assets/images/27.jpg"),

//========FRAGRANCES=======//
  products(
      Id: 30,
      Title: "BASILICUM SCENTED OUTDOOR CANDLE",
      Description:
          "Outdoor scented candle for fragrancing spaces such as balconies, terraces, porches etc. Comes in a cement pot making it ideal for all types of environments. Its Basilicum fragrance exudes the naturalness and energy of basil.",
      Type: "FRAGRANCES",
      Price: 799,
      Rate: 4.6,
      Quantity: 3,
      image: "assets/images/30.jpg"),

//========kIDS=======//
  products(
      Id: 33,
      Title: "RATTAN BASKET WITH EARS",
      Description:
          "Woven beige rattan basket. Oval shape and lid with mouse ear detail. Available in two sizes.",
      Type: "kIDS",
      Price: 559,
      Rate: 4.0,
      Quantity: 9,
      image: "assets/images/33.jpg")
];
