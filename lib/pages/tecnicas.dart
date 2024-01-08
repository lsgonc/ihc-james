// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:first_app/pages/agradecimento.dart';
import 'package:first_app/pages/cansaco.dart';
import 'package:flutter/material.dart';
import 'package:flutter_chat_bubble/chat_bubble.dart';

class Tecnicas extends StatelessWidget {
  const Tecnicas({super.key});


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
              padding: EdgeInsets.fromLTRB(30, 0, 30, 30),
              child: SizedBox(
                  width: 400,
                  height: 300,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Que tal algumas dicas ou técnicas de respiração e relaxamento?",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                height: 1.5,
                                fontFamily: 'Roboto',
                                fontSize: 20)),

                        SizedBox(height: 30),
                        ElevatedButton(
                            style: ButtonStyle(
                              minimumSize: MaterialStateProperty.all<Size>(
                                  Size.fromHeight(40)),
                              padding:
                                  MaterialStateProperty.all<EdgeInsets>(
                                      EdgeInsets.fromLTRB(30, 5, 30, 5)),
                              foregroundColor:
                                  MaterialStateProperty.all<Color>(
                                      Colors.white),
                              backgroundColor:
                                  MaterialStateProperty.all<Color>(
                                      Color.fromRGBO(0, 96, 150, 100)),
                              side: MaterialStateProperty.all<BorderSide>(
                                  BorderSide(
                                      color:
                                          Color.fromRGBO(0, 96, 150, 100))),
                            ),
                            onPressed: () => {
                                  
                                },
                            child: Text("Cansaço")),
                        SizedBox(height: 20),
                        ElevatedButton(
                            style: ButtonStyle(
                              minimumSize: MaterialStateProperty.all<Size>(
                                  Size.fromHeight(40)),
                              padding:
                                  MaterialStateProperty.all<EdgeInsets>(
                                      EdgeInsets.fromLTRB(30, 5, 30, 5)),
                              foregroundColor:
                                  MaterialStateProperty.all<Color>(
                                      Colors.white),
                              backgroundColor:
                                  MaterialStateProperty.all<Color>(
                                      Color.fromRGBO(0, 96, 150, 100)),
                              side: MaterialStateProperty.all<BorderSide>(
                                  BorderSide(
                                      color:
                                          Color.fromRGBO(0, 96, 150, 100))),
                            ),
                            onPressed: () => {
                              
                            },
                            child: Text("Insônia")),
                        SizedBox(height: 20),
                        ElevatedButton(
                            style: ButtonStyle(
                              minimumSize: MaterialStateProperty.all<Size>(
                                  Size.fromHeight(40)),
                              padding:
                                  MaterialStateProperty.all<EdgeInsets>(
                                      EdgeInsets.fromLTRB(30, 5, 30, 5)),
                              foregroundColor:
                                  MaterialStateProperty.all<Color>(
                                      Colors.white),
                              backgroundColor:
                                  MaterialStateProperty.all<Color>(
                                      Color.fromRGBO(0, 96, 150, 100)),
                              side: MaterialStateProperty.all<BorderSide>(
                                  BorderSide(
                                      color:
                                          Color.fromRGBO(0, 96, 150, 100))),
                            ),
                            onPressed: () => {
                             
                            },
                            child: Text("Ansiedade")),
                        SizedBox(height: 20),
                        ElevatedButton(
                            style: ButtonStyle(
                              minimumSize: MaterialStateProperty.all<Size>(
                                  Size.fromHeight(40)),
                              padding:
                                  MaterialStateProperty.all<EdgeInsets>(
                                      EdgeInsets.fromLTRB(30, 5, 30, 5)),
                              foregroundColor:
                                  MaterialStateProperty.all<Color>(
                                      Colors.white),
                              backgroundColor:
                                  MaterialStateProperty.all<Color>(
                                      Color.fromRGBO(0, 96, 150, 100)),
                              side: MaterialStateProperty.all<BorderSide>(
                                  BorderSide(
                                      color:
                                          Color.fromRGBO(0, 96, 150, 100))),
                            ),
                            onPressed: () => {
                            
                            },
                            child: Text("Estresse")),
                      ])),
            ),
            Image.asset("assets/images/Robot_ola.png")
          ],
        ),
      ),
    );
  }
}
