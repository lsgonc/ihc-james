// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:first_app/pages/piada.dart';
import 'package:first_app/pages/tecnicas.dart';
import 'package:flutter/material.dart';
import 'package:flutter_chat_bubble/chat_bubble.dart';

class Estudos extends StatelessWidget {
  final String tipoProblema;

  const Estudos({super.key, required this.tipoProblema});

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
          children: [
            ChatBubble(
              alignment: Alignment.center,
              clipper: ChatBubbleClipper1(type: BubbleType.sendBubble),
              backGroundColor: Colors.white,
              margin: EdgeInsets.all(50),
              child: SizedBox(
                  width: 400,
                  height: 400,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        if (tipoProblema == "cansaco") ...[
                          Text(
                              "Entendo o quanto os estudos podem ser exaustivos e desafiadores, mas quero que saiba o quão admirável é o esforço que você está dedicando a essa jornada. Cada página virada e cada momento de concentração são passos valiosos em direção aos seus objetivos.",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  height: 1.2,
                                  fontFamily: 'Roboto',
                                  fontSize: 20)),
                          SizedBox(height: 10),
                          RichText(
                              textAlign: TextAlign.left,
                              text: TextSpan(
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.black,
                                      fontFamily: 'Roboto'),
                                  text:
                                      "Lembre-se de que é normal sentir cansaço.",
                                  children: <TextSpan>[
                                    TextSpan(
                                        text: " Permita-se pausas,",
                                        style: TextStyle(
                                            color: Color.fromRGBO(
                                                0, 96, 150, 100))),
                                    TextSpan(text: " quando necessário e "),
                                    TextSpan(
                                        text: " cuide de si mesmo!,",
                                        style: TextStyle(
                                            color: Color.fromRGBO(
                                                0, 96, 150, 100))),
                                  ]))
                        ] else if (tipoProblema == "insonia") ...[
                          RichText(
                              textAlign: TextAlign.left,
                              text: TextSpan(
                                  style: TextStyle(
                                      fontSize: 20,
                                      height: 1.3,
                                      color: Colors.black,
                                      fontFamily: 'Roboto'),
                                  text:
                                      "Sei que os estudos estão causando insônia, e isso pode ser desgastante. Sua dedicação é admirável, mas lembre-se de que cuidar do seu sono é essencial para um desempenho melhor.",
                                  children: <TextSpan>[
                                    TextSpan(
                                        text:
                                            " Tire pequenos intervalos, respire profundamente e permita-se descansar.",
                                        style: TextStyle(
                                            color: Color.fromRGBO(
                                                0, 96, 150, 100))),
                                    TextSpan(
                                        text:
                                            " Você está fazendo um ótimo trabalho, e eu estou aqui para apoiar e incentivar. Acredite em sua capacidade de superar esses desafios! "),
                                  ]))
                        ] else if (tipoProblema == "ansiedade") ...[
                          Text(
                              "Entendo que enfrentar ansiedade nos estudos pode ser desafiador, mas quero que saiba que você não está sozinho nessa jornada. É completamente normal sentir essa pressão, e eu acredito na sua capacidade de superar cada obstáculo.",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  height: 1.2,
                                  fontFamily: 'Roboto',
                                  fontSize: 20)),
                          SizedBox(height: 10),
                          RichText(
                              textAlign: TextAlign.left,
                              text: TextSpan(
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.black,
                                      fontFamily: 'Roboto'),
                                  text: "Lembre-se de que o ",
                                  children: <TextSpan>[
                                    TextSpan(
                                        text:
                                            " aprendizado é um processo gradual, e o mais importante é o progresso, não a perfeição!",
                                        style: TextStyle(
                                            color: Color.fromRGBO(
                                                0, 96, 150, 100))),
                                  ]))
                        ] else if (tipoProblema == "estresse") ...[
                          RichText(
                              textAlign: TextAlign.left,
                              text: TextSpan(
                                  style: TextStyle(
                                      fontSize: 20,
                                      height: 1.3,
                                      color: Colors.black,
                                      fontFamily: 'Roboto'),
                                  text:
                                      "Entendo que o estresse nos estudos pode ser avassalador, mas quero lembrar que você está fazendo o seu melhor. ",
                                  children: <TextSpan>[
                                    TextSpan(
                                        text:
                                            "Permita-se pausas, respire fundo e lembre-se de que a sua saúde mental é tão importante quanto os estudos.",
                                        style: TextStyle(
                                            color: Color.fromRGBO(
                                                0, 96, 150, 100))),
                                  ])),
                          Text(
                              "Cada desafio é uma oportunidade de crescimento, e seus esforços não passam despercebidos. Não hesite em pedir ajuda quando necessário!",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black,
                                  fontFamily: 'Roboto'))
                        ] else if (tipoProblema == "inseguranca") ...[
                          Text(
                              "Entendo como pode ser difícil a insegurança nos estudos, mas quero lembrar que você é mais capaz do que imagina. Cada desafio é uma oportunidade de aprendizado, e seus esforços não passam despercebidos.",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  height: 1.2,
                                  fontFamily: 'Roboto',
                                  fontSize: 20)),
                          SizedBox(height: 10),
                          RichText(
                              textAlign: TextAlign.left,
                              text: TextSpan(
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.black,
                                      fontFamily: 'Roboto'),
                                  text: "Acredite em seu potencial! ",
                                  children: <TextSpan>[
                                    TextSpan(
                                        text:
                                            " Lembre-se de que todos têm o seu próprio ritmo de aprendizado.",
                                        style: TextStyle(
                                            color: Color.fromRGBO(
                                                0, 96, 150, 100))),
                                    TextSpan(
                                        text:
                                            "Celebre suas conquistas, por menores que sejam e"),
                                    TextSpan(
                                        text: " não se compare aos outros",
                                        style: TextStyle(
                                            color: Color.fromRGBO(
                                                0, 96, 150, 100))),
                                  ]))
                        ],
                        SizedBox(height: 20),
                        RichText(
                            textAlign: TextAlign.left,
                            text: TextSpan(
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.black,
                                    fontFamily: 'Roboto'),
                                text: "Para o momento, que tal uma",
                                children: <TextSpan>[
                                  TextSpan(
                                      text: " piada?,",
                                      style: TextStyle(
                                          color:
                                              Color.fromRGBO(0, 96, 150, 100))),
                                ])),
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
                                              builder: (context) => Tecnicas()))
                                    },
                                child: Text("Agora não")),
                            SizedBox(width: 40),
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
                                              builder: (context) => Piada()))
                                    },
                                child: Text("Vamos lá")),
                          ],
                        )
                      ])),
            ),
            Image.asset("assets/images/Robot_ola.png"),
          ],
        ),
      ),
    );
  }
}
