// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:first_app/pages/reconhecimentofacial.dart';
import 'package:flutter/material.dart';
import 'package:first_app/pages/ola.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
              Color.fromRGBO(175, 175, 175, 100),
              Color.fromRGBO(231, 230, 230, 100)
            ])),
        child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset("assets/images/Robot_5.png"),
            const Text("Bem-vindo!",
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, height: 1.5),
            ), Padding(padding: EdgeInsets.all(15), child:  
                RichText(text: TextSpan(
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.normal,height: 1.5, color: Color.fromRGBO(51, 51, 51, 100)),
                  children: <TextSpan>[
                    TextSpan(text: "Olá, meu nome é "),
                    TextSpan(text: "James!", style: TextStyle(color: Color.fromRGBO(0, 96, 150, 100))),
                    TextSpan(text: ", gostaria de conversar?")
                  ]
                ),
    
            )),
            SizedBox(height: 15),
            ElevatedButton(
                style: ButtonStyle(
                  padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.fromLTRB(40, 15, 40, 15)),     
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(
                    borderRadius: BorderRadius.zero
                  )),
                  backgroundColor: MaterialStateProperty.all<Color>(Color.fromRGBO(51, 51, 51, 100)),
                ),
                onPressed: () => {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Reconhecimento()))
                },
                child: const Text("Acordar James!",
                  style: TextStyle(color: Colors.white)
                ))
          ],
        )),
      ),
    );
  }
}
