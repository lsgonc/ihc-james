import 'dart:async';
import 'package:first_app/pages/ola.dart';
import 'package:first_app/pages/piada.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  final String emocao;
  const SplashScreen({super.key, required this.emocao});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: initScreen(context),
    );
  }

  startTime() async {
    var duration = const Duration(seconds: 4);
    return Timer(duration, route);
  }

  route() {
    if (widget.emocao == "Angry" ||
        widget.emocao == "Disgust" ||
        widget.emocao == "Fear" ||
        widget.emocao == "Sad") {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => const Ola()));
    } else {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => const Piada()));
    }
  }

  initScreen(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              child: Image.asset("assets/images/Robot_feliz.png"),
            ),
            const Padding(padding: EdgeInsets.only(top: 20.0)),
            const Text(
              "James está processando suas emoções!",
              style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            const Padding(padding: EdgeInsets.only(top: 20.0)),
            const CircularProgressIndicator(
              backgroundColor: Colors.white,
              strokeWidth: 1,
            )
          ],
        ),
      ),
    );
  }
}
