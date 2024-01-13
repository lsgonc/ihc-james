import 'package:first_app/pages/abdominal_profundo.dart';
import 'package:first_app/pages/box_breathing.dart';
import 'package:first_app/pages/ensine_aprendeu.dart';
import 'package:first_app/pages/escrita_terapeutica.dart';
import 'package:first_app/pages/home.dart';
import 'package:first_app/pages/mapas_mentais.dart';
import 'package:first_app/pages/meditacao_mindfullness.dart';
import 'package:first_app/pages/nadi_shodhana.dart';
import 'package:first_app/pages/pomodoro.dart';
import 'package:first_app/pages/reconhecimentofacial.dart';
import 'package:first_app/pages/vizualizacao_guiada.dart';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

void main() async {
  // WidgetsFlutterBinding.ensureInitialized();

  // await Permission.camera.request();
  // await Permission.microphone.request();

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
        home: HomePage());
  }
}
