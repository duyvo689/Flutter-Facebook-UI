import 'package:flutter/material.dart';
import 'package:flutter_facebook_ui/config/palette.dart';
import 'package:flutter_facebook_ui/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Facebook UI',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.blue,
          scaffoldBackgroundColor: Palette.scaffold,
          visualDensity: VisualDensity.adaptivePlatformDensity),
      home: HomeScreen(),
    );
  }
}
