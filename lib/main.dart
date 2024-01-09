import 'package:first_app/pages/home.dart';
import 'package:first_app/pages/reconhecimentofacial.dart';
import 'package:flutter/material.dart';

void main() {

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Robô Interativo",
        theme: ThemeData(fontFamily: 'Poppins'),
        debugShowCheckedModeBanner: false,
        home: const Reconhecimento());
  }
}
