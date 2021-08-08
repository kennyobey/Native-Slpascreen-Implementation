import 'dart:async';
import 'package:flutter/material.dart';
import 'package:splash_screen/onboarding.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Splash Screen',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: BoardingScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
// class Splash3 extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title:Text("GeeksForGeeks")),
//       body: Center(
//           child:Text("Home page",textScaleFactor: 2,)
//       ),
//     );
//   }
// }
