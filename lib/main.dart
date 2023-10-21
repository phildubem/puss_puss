import 'package:flutter/material.dart';
import 'package:puss_puss/pages/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(fontFamily: 'NeueMontreal'),
        title: 'Puss Puss',
        home: const HomePage());
  }
}
