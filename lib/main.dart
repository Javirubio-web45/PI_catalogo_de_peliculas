import 'package:flutter/material.dart';
import 'home.dart';
//import 'package:pi_catalogo_peliculas/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // ignore: unnecessary_new
    return new MaterialApp(
      home: const Home(),
      theme: ThemeData.dark(),
    );
  }
}