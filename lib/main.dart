import 'package:flutter/material.dart';
import 'Screens/HomeScreen.dart';
import 'Screens/LocationScreen.dart';
import 'Screens/LoginScreen.dart';
import 'home.dart';

void main() => runApp(Kapture());

class Kapture extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(
        title: 'Kapture One',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(),
        home: LocationScreen(),
      );
}
