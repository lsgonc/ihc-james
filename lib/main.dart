import 'package:first_app/pages/home.dart';
import 'package:first_app/pages/reconhecimentofacial.dart';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:first_app/services/face_service.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  sendFace();

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
        home: const HomePage());
  }
}
