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
                Text("Ola meu novo amigo!", textAlign: TextAlign.left, style: TextStyle(height: 2, fontSize: 20, fontWeight: FontWeight.bold)),
                Text("Irei me apresentar novamente. Meu nome é James, sou um robô interativo e estou aqui para conversar com você.", textAlign: TextAlign.justify)
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
