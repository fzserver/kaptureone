import 'package:flutter/material.dart';
import './Screens/Rootpage.dart';
import './widget/auth.dart';


void main() => runApp(Kapture());

class Kapture extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(
        title: 'Kapture One',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(),
        home: RootPage(auth: Auth(),),
      );
}
