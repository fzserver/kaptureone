import 'package:flutter/material.dart';
import 'package:kaptureone/Screens/ButtonsScreen.dart';

void main() => runApp(Kapture());

class Kapture extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(
        title: 'Kapture One',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(),
        home: ButtonsScreen(),
      );
}
