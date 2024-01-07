// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_chat_bubble/chat_bubble.dart';

class NaoBem extends StatelessWidget {
  const NaoBem({super.key});

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
            Image.asset("assets/images/Robot_ola.png"),
            ChatBubble(
              clipper: ChatBubbleClipper1(type: BubbleType.sendBubble),
              backGroundColor: Colors.white,
              margin: EdgeInsets.all(50),
              padding: EdgeInsets.fromLTRB(30, 20, 0, 5),
              child: Container(alignment: Alignment.topLeft, width: 400, child: Column(crossAxisAlignment: CrossAxisAlignment.start,  children: [
                Text("Percebi que não está se sentindo bem.", textAlign: TextAlign.left, style: TextStyle(height: 1.5, fontFamily: 'Roboto',  fontSize: 20)),
                Text("Qual problema te antige?.", textAlign: TextAlign.left, style: TextStyle(height: 1.5, fontFamily: 'Roboto',  fontSize: 20)), 
                SizedBox(height: 20),
                Row(children: [
                  ElevatedButton(style: ButtonStyle(
                    fixedSize: MaterialStateProperty.all<Size>(Size(150,5)),
                    padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.fromLTRB(30, 5, 30, 5)),
                    foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                    backgroundColor: MaterialStateProperty.all<Color>(Color.fromRGBO(0, 96, 150, 100)),
                    side: MaterialStateProperty.all<BorderSide>(BorderSide(color: Color.fromRGBO(0, 96, 150, 100))),
                  ),onPressed: () => {}, child: Text("Cansaço")),
                  SizedBox(width: 50),
                  ElevatedButton(style: ButtonStyle(
                    fixedSize: MaterialStateProperty.all<Size>(Size(150,5)),
                    padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.fromLTRB(30, 5, 30, 5)),
                    foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                    backgroundColor: MaterialStateProperty.all<Color>(Color.fromRGBO(0, 96, 150, 100)),
                    side: MaterialStateProperty.all<BorderSide>(BorderSide(color: Color.fromRGBO(0, 96, 150, 100))),
                  ),onPressed: () => {}, child: Text("Insônia")),
                ],),
                SizedBox(height: 5),
                Row(children: [
                  ElevatedButton(style: ButtonStyle(
                    fixedSize: MaterialStateProperty.all<Size>(Size(150,5)),
                    padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.fromLTRB(30, 5, 30, 5)),
                    foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                    backgroundColor: MaterialStateProperty.all<Color>(Color.fromRGBO(0, 96, 150, 100)),
                    side: MaterialStateProperty.all<BorderSide>(BorderSide(color: Color.fromRGBO(0, 96, 150, 100))),
                  ),onPressed: () => {}, child: Text("Ansiedade")),
                  SizedBox(width: 50),
                  ElevatedButton(style: ButtonStyle(
                    fixedSize: MaterialStateProperty.all<Size>(Size(150,5)),
                    padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.fromLTRB(30, 5, 30, 5)),
                    foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                    backgroundColor: MaterialStateProperty.all<Color>(Color.fromRGBO(0, 96, 150, 100)),
                    side: MaterialStateProperty.all<BorderSide>(BorderSide(color: Color.fromRGBO(0, 96, 150, 100))),
                  ),onPressed: () => {}, child: Text("Estresse")),
                ],),
                SizedBox(height: 5),
                Row(children: [
                  ElevatedButton(style: ButtonStyle(
                    fixedSize: MaterialStateProperty.all<Size>(Size(150,5)),
                    padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.fromLTRB(14, 5, 14, 5)),
                    foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                    backgroundColor: MaterialStateProperty.all<Color>(Color.fromRGBO(0, 96, 150, 100)),
                    side: MaterialStateProperty.all<BorderSide>(BorderSide(color: Color.fromRGBO(0, 96, 150, 100))),
                  ),onPressed: () => {}, child: Text("Insegurança")),
                  SizedBox(width: 50),
                  ElevatedButton(style: ButtonStyle(
                    fixedSize: MaterialStateProperty.all<Size>(Size(150,5)),
                    padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.fromLTRB(14, 5, 14, 5)),
                    foregroundColor: MaterialStateProperty.all<Color>(Color.fromRGBO(0, 96, 150, 100)),
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                    side: MaterialStateProperty.all<BorderSide>(BorderSide(color: Color.fromRGBO(0, 96, 150, 100))),
                  ),onPressed: () => {}, child: Text("Já estou melhor!")),
                ],)        
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
