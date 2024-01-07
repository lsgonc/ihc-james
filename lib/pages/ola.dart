// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_chat_bubble/chat_bubble.dart';

class Ola extends StatelessWidget {
  const Ola({super.key});

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
          children: [
            ChatBubble(
              clipper: ChatBubbleClipper1(type: BubbleType.sendBubble),
              backGroundColor: Colors.white,
              margin: EdgeInsets.all(50),
              child: Container(alignment: Alignment.topLeft, width: 400, child: Column(crossAxisAlignment: CrossAxisAlignment.start,  children: [
                Text("Olá, novo amigo!", textAlign: TextAlign.left, style: TextStyle(height: 2, fontSize: 24, fontWeight: FontWeight.bold)),
                Text("Irei me apresentar novamente. Meu nome é James, sou um robô interativo e estou aqui para conversar com você.", textAlign: TextAlign.left, style: TextStyle(fontSize: 18)),
                SizedBox(height: 20),
                Text("Como está se sentindo hoje?", style: TextStyle(fontSize: 18),),
                SizedBox(height: 30),
                Row(children: [
                  ElevatedButton(style: ButtonStyle(
                    foregroundColor: MaterialStateProperty.all<Color>(Color.fromRGBO(0, 96, 150, 100)),
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                    side: MaterialStateProperty.all<BorderSide>(BorderSide(color: Color.fromRGBO(0, 96, 150, 100))),
                  ),onPressed: () => {}, child: Text("Estou bem!")),
                  SizedBox(width: 10),
                  ElevatedButton(style: ButtonStyle(
                    foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                    backgroundColor: MaterialStateProperty.all<Color>(Color.fromRGBO(0, 96, 150, 100)),
                    side: MaterialStateProperty.all<BorderSide>(BorderSide(color: Color.fromRGBO(0, 96, 150, 100))),
                  ),onPressed: () => {}, child: Text("Não estou me sentindo bem")),
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
