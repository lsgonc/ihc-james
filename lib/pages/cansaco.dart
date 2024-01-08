// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:first_app/pages/agradecimento.dart';
import 'package:first_app/pages/estudos.dart';
import 'package:first_app/pages/rotina.dart';
import 'package:first_app/pages/trabalho.dart';
import 'package:flutter/material.dart';
import 'package:flutter_chat_bubble/chat_bubble.dart';

class Cansaco extends StatelessWidget {
  final String causaProblema;

  const Cansaco({super.key, required this.causaProblema});

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
            Image.asset("assets/images/Robot_cansaco.png"),
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
                        if(causaProblema == 'cansaço')
                          Text(
                              "Entendo que situações como essa podem ser difíceis. O $causaProblema deve ser levado a sério!",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  height: 1.5,
                                  fontFamily: 'Roboto',
                                  fontSize: 20))
                        else if (causaProblema == 'insonia')
                          Text(
                              "Entendo que situações como essa podem ser difíceis. Mas não se preocupe, a insônia é muto comum entre as pessoas!",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  height: 1.5,
                                  fontFamily: 'Roboto',
                                  fontSize: 20))
                        else if (causaProblema == "ansiedade")
                          Text(
                              "Entendo que situações como essa podem ser difíceis. A ansiedade é causada por muitos fatores diferentes.",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  height: 1.5,
                                  fontFamily: 'Roboto',
                                  fontSize: 20))
                        else if (causaProblema == "estresse") 
                        Text(
                              "Entendo que situações como essa podem ser difíceis. Ninguém gosta de se sentir estressado, não é mesmo?",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  height: 1.5,
                                  fontFamily: 'Roboto',
                                  fontSize: 20))
                        else if(causaProblema == "inseguranca")
                          Text(
                              "Entendo que situações como essa podem ser difíceis. Mas não se preocupe, é muto comum se sentir inseguro!",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  height: 1.5,
                                  fontFamily: 'Roboto',
                                  fontSize: 20)),
                        SizedBox(height: 10),
                        Text("Você consegue me dizer a causa do problema?",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                height: 1.5,
                                fontFamily: 'Roboto',
                                fontSize: 20)),
                        SizedBox(height: 15),
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
                                              builder: (context) => Estudos()))
                                    },
                                child: Text("Estudos")),
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
                                              builder: (context) => Trabalho()))
                                    },
                                child: Text("Trabalho")),
                          ],
                        ),
                        SizedBox(height: 20),
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
                                              builder: (context) => Rotina()))
                                    },
                                child: Text("Rotina")),
                            SizedBox(width: 50),
                            ElevatedButton(
                                style: ButtonStyle(
                                  fixedSize: MaterialStateProperty.all<Size>(
                                      Size(150, 5)),
                                  padding:
                                      MaterialStateProperty.all<EdgeInsets>(
                                          EdgeInsets.fromLTRB(10, 5, 10, 5)),
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
                        ),
                      ])),
            ),
          ],
        ),
      ),
    );
  }
}
