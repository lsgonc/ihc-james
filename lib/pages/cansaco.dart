// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_chat_bubble/chat_bubble.dart';

class Cansaco extends StatelessWidget {
  const Cansaco({super.key});

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
            Image.asset("assets/images/Robot_cansaco.png"),
            ChatBubble(
              clipper: ChatBubbleClipper1(type: BubbleType.sendBubble),
              backGroundColor: Colors.white,
              margin: EdgeInsets.all(50),
              padding: EdgeInsets.fromLTRB(20, 20, 0, 5),
              child: Container(alignment: Alignment.topLeft, width: 400, child: Column(crossAxisAlignment: CrossAxisAlignment.start,  children: [
                Text("Entendo que situações como essa podem ser difíceis. O cansaço deve ser levado a sério!", textAlign: TextAlign.left, style: TextStyle(height: 1.5, fontFamily: 'Roboto',  fontSize: 20)),
                Text("Você consegue me dizer a causa do problema?", textAlign: TextAlign.left, style: TextStyle(height: 1.5, fontFamily: 'Roboto',  fontSize: 20)), 
                SizedBox(height: 10),
                Row(children: [
                  ElevatedButton(style: ButtonStyle(
                    fixedSize: MaterialStateProperty.all<Size>(Size(150,5)),
                    padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.fromLTRB(30, 5, 30, 5)),
                    foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                    backgroundColor: MaterialStateProperty.all<Color>(Color.fromRGBO(0, 96, 150, 100)),
                    side: MaterialStateProperty.all<BorderSide>(BorderSide(color: Color.fromRGBO(0, 96, 150, 100))),
                  ),onPressed: () => {}, child: Text("Estudos")),
                  SizedBox(width: 50),
                  ElevatedButton(style: ButtonStyle(
                    fixedSize: MaterialStateProperty.all<Size>(Size(150,5)),
                    padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.fromLTRB(30, 5, 30, 5)),
                    foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                    backgroundColor: MaterialStateProperty.all<Color>(Color.fromRGBO(0, 96, 150, 100)),
                    side: MaterialStateProperty.all<BorderSide>(BorderSide(color: Color.fromRGBO(0, 96, 150, 100))),
                  ),onPressed: () => {}, child: Text("Trabalho")),
                ],),
                SizedBox(height: 5),
                Row(children: [
                  ElevatedButton(style: ButtonStyle(
                    fixedSize: MaterialStateProperty.all<Size>(Size(150,5)),
                    padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.fromLTRB(30, 5, 30, 5)),
                    foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                    backgroundColor: MaterialStateProperty.all<Color>(Color.fromRGBO(0, 96, 150, 100)),
                    side: MaterialStateProperty.all<BorderSide>(BorderSide(color: Color.fromRGBO(0, 96, 150, 100))),
                  ),onPressed: () => {}, child: Text("Rotina")),
                  SizedBox(width: 50),
                  ElevatedButton(style: ButtonStyle(
                    fixedSize: MaterialStateProperty.all<Size>(Size(150,5)),
                    padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.fromLTRB(30, 5, 30, 5)),
                    foregroundColor: MaterialStateProperty.all<Color>(Color.fromRGBO(0, 96, 150, 100)),
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                    side: MaterialStateProperty.all<BorderSide>(BorderSide(color: Color.fromRGBO(0, 96, 150, 100))),
                  ),onPressed: () => {}, child: Text("Estresse")),
                ],),   
              ]
              )
              ),
            ),
            ],
          ),
      ),
    );
  }
}
