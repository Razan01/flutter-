import 'package:flutter/material.dart';
import 'package:fultter6/Screen1/page1.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:
          false, // it remove the red line in the corner of screen
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xffDAD3C8),
      ),
      home: Screen1(),
    );
  }
}
