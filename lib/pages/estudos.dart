// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:first_app/pages/nao_bem.dart';
import 'package:flutter/material.dart';
import 'package:flutter_chat_bubble/chat_bubble.dart';

class Estudos extends StatelessWidget {
  const Estudos({super.key});

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
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ChatBubble(
              alignment: Alignment.center,
              clipper: ChatBubbleClipper1(type: BubbleType.sendBubble),
              backGroundColor: Colors.white,
              margin: EdgeInsets.all(50),
              child: SizedBox(width: 400, height: 400,  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,  
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                Text("Entendo o quanto os estudos podem ser exaustivos e desafiadores, mas quero que saiba o quão admirável é o esforço que você está dedicando a essa jornada. Cada página virada e cada momento de concentração são passos valiosos em direção aos seus objetivos.", textAlign: TextAlign.left, style: TextStyle(height: 1.2, fontFamily: 'Roboto',  fontSize: 20)),
                SizedBox(height: 10),
                RichText(
                  textAlign: TextAlign.left,
                  text: TextSpan(
                    style: TextStyle(fontSize: 20, color: Colors.black,fontFamily: 'Roboto'),
                    text: "Lembre-se de que é normal sentir cansaço.", 
                    children: <TextSpan>[
                      TextSpan(text: " Permita-se pausas,", style: TextStyle(color: Color.fromRGBO(0, 96, 150, 100))),
                      TextSpan(text: " quando necessário e "),
                      TextSpan(text: " cuide de si mesmo!,", style: TextStyle(color: Color.fromRGBO(0, 96, 150, 100))),
                    ])),
                  
                SizedBox(height: 20),
                RichText(
                  textAlign: TextAlign.left,
                  text: TextSpan(
                    style: TextStyle(fontSize: 20, color: Colors.black,fontFamily: 'Roboto'),
                    text: "Para o momento, que tal uma", 
                    children: <TextSpan>[
                      TextSpan(text: " piada?,", style: TextStyle(color: Color.fromRGBO(0, 96, 150, 100))),
                    ])),
                SizedBox(height: 30),
                Row(children: [
                  ElevatedButton(style: ButtonStyle(
                    fixedSize: MaterialStateProperty.all<Size>(Size(150,5)),
                    padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.fromLTRB(30, 5, 30, 5)),
                    foregroundColor: MaterialStateProperty.all<Color>(Color.fromRGBO(0, 96, 150, 100)),
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                    side: MaterialStateProperty.all<BorderSide>(BorderSide(color: Color.fromRGBO(0, 96, 150, 100))),
                  ),onPressed: () => {}, child: Text("Agora não")),
                  SizedBox(width: 40),
                  ElevatedButton(style: ButtonStyle(
                    fixedSize: MaterialStateProperty.all<Size>(Size(150,5)),
                    padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.fromLTRB(30, 5, 30, 5)),
                    foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                    backgroundColor: MaterialStateProperty.all<Color>(Color.fromRGBO(0, 96, 150, 100)),
                    side: MaterialStateProperty.all<BorderSide>(BorderSide(color: Color.fromRGBO(0, 96, 150, 100))),
                  ),onPressed: () => {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => NaoBem()))
                  }, child: Text("Vamos lá")),
                ],)
              ])
              ),
            ),
            Image.asset("assets/images/Robot_ola.png"),
                      ],
                    ),
      ),
    );
  }
}
