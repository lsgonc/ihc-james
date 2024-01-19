// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:first_app/models/piadas_model.dart';
import 'package:first_app/pages/agradecimento.dart';
import 'package:first_app/pages/tecnicas.dart';
import 'package:first_app/services/piadas_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_chat_bubble/chat_bubble.dart';

class Piada extends StatefulWidget {
  const Piada({super.key});

  @override
  State<Piada> createState() => _PiadaState();
}

@override
void initState() {
  getPiadas();
}

class _PiadaState extends State<Piada> {
  PiadasModel? piada;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
              Color.fromRGBO(102, 183, 241, 100),
              Color.fromRGBO(234, 245, 255, 100)
            ])),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset("assets/images/Robot_feliz.png"),
            ChatBubble(
              alignment: Alignment.center,
              clipper: ChatBubbleClipper1(type: BubbleType.receiverBubble),
              backGroundColor: Colors.white,
              padding: EdgeInsets.fromLTRB(30, 0, 30, 30),
              child: SizedBox(
                  width: 400,
                  height: 300,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Aqui vai uma piada para alegrar seu dia!",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                height: 1.5,
                                fontFamily: 'Roboto',
                                fontSize: 20)),
                        SizedBox(height: 15),
                        piada != null
                            ? Text("\"${piada!.setup}\"",
                                style: TextStyle(
                                    height: 1.5,
                                    fontFamily: 'Roboto',
                                    fontSize: 20))
                            : Text(""),
                        piada != null
                            ? Text(piada!.delivery,
                                style: TextStyle(
                                    height: 1.5,
                                    fontFamily: 'Roboto',
                                    fontSize: 20))
                            : Text(""),
                        SizedBox(height: 20),
                        Row(
                          children: [
                            ElevatedButton(
                                style: ButtonStyle(
                                  fixedSize: MaterialStateProperty.all<Size>(
                                      Size(150, 5)),
                                  padding:
                                      MaterialStateProperty.all<EdgeInsets>(
                                          EdgeInsets.fromLTRB(20, 5, 20, 5)),
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
                                onPressed: pegarPiada,
                                child: Text("Conte outra!")),
                            SizedBox(width: 100),
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
                                              builder: (context) => Tecnicas()))
                                    },
                                child: Text("Continuar")),
                          ],
                        ),
                        SizedBox(height: 20),
                        ElevatedButton(
                            style: ButtonStyle(
                              minimumSize: MaterialStateProperty.all<Size>(
                                  Size.fromHeight(40)),
                              padding: MaterialStateProperty.all<EdgeInsets>(
                                  EdgeInsets.fromLTRB(30, 5, 30, 5)),
                              foregroundColor: MaterialStateProperty.all<Color>(
                                  Color.fromRGBO(0, 96, 150, 100)),
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Colors.white),
                              side: MaterialStateProperty.all<BorderSide>(
                                  BorderSide(
                                      color: Color.fromRGBO(0, 96, 150, 100))),
                            ),
                            onPressed: () => {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              Agradecimento()))
                                },
                            child: Text("Já esstou me sentindo melhor!")),
                      ])),
            ),
          ],
        ),
      ),
    );
  }

  void pegarPiada() async {
    final response = await getPiadas();

    setState(() {
      piada = response;
    });
  }
}
