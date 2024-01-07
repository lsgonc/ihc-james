// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:first_app/pages/nao_bem.dart';
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
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ChatBubble(
              alignment: Alignment.center,
              clipper: ChatBubbleClipper1(type: BubbleType.sendBubble),
              backGroundColor: Colors.white,
              padding: EdgeInsets.fromLTRB(40, 10, 40, 10),
              child: SizedBox( width: 400, height: 300, child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,  
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                Text("Olá, novo amigo!", textAlign: TextAlign.left, style: TextStyle(height: 2, fontFamily: 'Roboto',  fontSize: 24, fontWeight: FontWeight.bold)),
                RichText(
                  textAlign: TextAlign.left,
                  text: TextSpan(
                    style: TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.w300,fontFamily: 'Roboto'),
                    text: "Irei me apresentar novamente. Meu nome é", 
                    children: <TextSpan>[
                      TextSpan(text: " James,", style: TextStyle(fontWeight: FontWeight.bold)),
                      TextSpan(text: " sou um robô interativo e estou aqui para conversar com você.")
                    ])),
                  
                SizedBox(height: 20),
                Text("Como está se sentindo hoje?", style: TextStyle(fontFamily: 'Roboto',fontSize: 20,  fontWeight: FontWeight.w300),),
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
                  ),onPressed: () => {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => NaoBem()))
                  }, child: Text("Não estou me sentindo bem")),
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
