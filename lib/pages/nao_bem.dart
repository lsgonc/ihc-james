// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:first_app/pages/agradecimento.dart';
import 'package:first_app/pages/cansaco.dart';
import 'package:flutter/material.dart';
import 'package:flutter_chat_bubble/chat_bubble.dart';

class NaoBem extends StatelessWidget {
  const NaoBem({super.key});

  final cansaco = "cansaco";
  final insonia = "insonia";
  final ansiedade = "ansiedade";
  final estresse = "estresse";
  final inseguranca = "inseguranca";

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
            Image.asset("assets/images/Robot_ola.png"),
            ChatBubble(
              alignment: Alignment.center,
              clipper: ChatBubbleClipper1(type: BubbleType.receiverBubble),
              backGroundColor: Colors.white,
              padding: EdgeInsets.fromLTRB(30, 0, 0, 30),
              child: SizedBox(
                  width: 400,
                  height: 300,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Percebi que não está se sentindo bem.",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                height: 1.5,
                                fontFamily: 'Roboto',
                                fontSize: 20)),
                        Text("Qual problema te antige?.",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                height: 1.5,
                                fontFamily: 'Roboto',
                                fontSize: 20)),
                        SizedBox(height: 30),
                        Row(
                          children: [
                            ElevatedButton(
                                style: ButtonStyle(
                                  fixedSize: MaterialStateProperty.all<Size>(
                                      Size(150, 5)),
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
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => Cansaco(causaProblema: cansaco,)))
                                    },
                                child: Text("Cansaço")),
                            SizedBox(width: 50),
                            ElevatedButton(
                                style: ButtonStyle(
                                  fixedSize: MaterialStateProperty.all<Size>(
                                      Size(150, 5)),
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
                                  Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => Cansaco(causaProblema: insonia,)))
                                },
                                child: Text("Insônia")),
                          ],
                        ),
                        SizedBox(height: 30),
                        Row(
                          children: [
                            ElevatedButton(
                                style: ButtonStyle(
                                  fixedSize: MaterialStateProperty.all<Size>(
                                      Size(150, 5)),
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
                                  Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => Cansaco(causaProblema: ansiedade)))
                                },
                                child: Text("Ansiedade")),
                            SizedBox(width: 50),
                            ElevatedButton(
                                style: ButtonStyle(
                                  fixedSize: MaterialStateProperty.all<Size>(
                                      Size(150, 5)),
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
                                  Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => Cansaco(causaProblema: estresse,)))
                                },
                                child: Text("Estresse")),
                          ],
                        ),
                        SizedBox(height: 30),
                        Row(
                          children: [
                            ElevatedButton(
                                style: ButtonStyle(
                                  fixedSize: MaterialStateProperty.all<Size>(
                                      Size(150, 5)),
                                  padding:
                                      MaterialStateProperty.all<EdgeInsets>(
                                          EdgeInsets.fromLTRB(14, 5, 14, 5)),
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
                                  Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => Cansaco(causaProblema: inseguranca,)))
                                },
                                child: Text("Insegurança")),
                            SizedBox(width: 50),
                            ElevatedButton(
                                style: ButtonStyle(
                                  fixedSize: MaterialStateProperty.all<Size>(
                                      Size(150, 5)),
                                  padding:
                                      MaterialStateProperty.all<EdgeInsets>(
                                          EdgeInsets.fromLTRB(14, 5, 14, 5)),
                                  foregroundColor:
                                      MaterialStateProperty.all<Color>(
                                          Color.fromRGBO(0, 96, 150, 100)),
                                  backgroundColor:
                                      MaterialStateProperty.all<Color>(
                                          Colors.white),
                                  side: MaterialStateProperty.all<BorderSide>(
                                      BorderSide(
                                          color:
                                              Color.fromRGBO(0, 96, 150, 100))),
                                ),
                                onPressed: () => {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  Agradecimento()))
                                    },
                                child: Text("Já estou melhor!")),
                          ],
                        )
                      ])),
            ),
          ],
        ),
      ),
    );
  }
}
