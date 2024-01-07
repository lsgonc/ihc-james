// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:first_app/pages/nao_bem.dart';
import 'package:flutter/material.dart';
import 'package:flutter_chat_bubble/chat_bubble.dart';

class Trabalho extends StatelessWidget {
  const Trabalho({super.key});

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
                SizedBox(height: 10),
                RichText(
                  textAlign: TextAlign.left,
                  text: TextSpan(
                    style: TextStyle(fontSize: 15, color: Colors.black,fontFamily: 'Roboto'),
                    text: "Compreendo que o trabalho pode ser desafiador e cansativo, e quero expressar minha admiração pela sua dedicação incansável. Sei que cada esforço no trabalho contribui para o seu crescimento e sucesso. Lembre-se de ", 
                    children: <TextSpan>[
                      TextSpan(text: "cuidar de si mesmo, permita-se pausas", style: TextStyle(color: Color.fromRGBO(0, 96, 150, 100))),
                      TextSpan(text: " quando necessário e "),
                      TextSpan(text: " reconheça a importância do seu trabalho!,", style: TextStyle(color: Color.fromRGBO(0, 96, 150, 100))),
                    ])),
                SizedBox(height: 10),
                Text("Este cansaço é temporário, mas as conquistas quee você está alcançando são duradouras!", textAlign: TextAlign.left, style: TextStyle(height: 1.4, fontFamily: 'Roboto',  fontSize: 15)),
                SizedBox(height: 10),
                RichText(
                  textAlign: TextAlign.left,
                  text: TextSpan(
                    style: TextStyle(fontSize: 15, color: Colors.black,fontFamily: 'Roboto'),
                    text: "Para o momento, que tal uma", 
                    children: <TextSpan>[
                      TextSpan(text: " piada?,", style: TextStyle(color: Color.fromRGBO(0, 96, 150, 100))),
                    ])),
                SizedBox(height: 20),
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
