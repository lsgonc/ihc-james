import 'package:first_app/pages/agradecimento.dart';
import 'package:first_app/pages/dicas_estudo.dart';
import 'package:first_app/pages/tecnicas_relaxamento.dart';
import 'package:first_app/pages/tecnicas_respiracao.dart';
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
              padding: const EdgeInsets.fromLTRB(30, 0, 30, 30),
              child: SizedBox(
                  width: 400,
                  height: 300,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("Que tal algumas dicas ou técnicas de respiração e relaxamento?",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                height: 1.5,
                                fontFamily: 'Roboto',
                                fontSize: 20)),

                        const SizedBox(height: 30),
                        ElevatedButton(
                            style: ButtonStyle(
                              minimumSize: MaterialStateProperty.all<Size>(
                                  const Size.fromHeight(40)),
                              padding:
                                  MaterialStateProperty.all<EdgeInsets>(
                                      const EdgeInsets.fromLTRB(30, 5, 30, 5)),
                              foregroundColor:
                                  MaterialStateProperty.all<Color>(
                                      Colors.white),
                              backgroundColor:
                                  MaterialStateProperty.all<Color>(
                                      const Color.fromRGBO(0, 96, 150, 100)),
                              side: MaterialStateProperty.all<BorderSide>(
                                  const BorderSide(
                                      color:
                                          Color.fromRGBO(0, 96, 150, 100))),
                            ),
                            onPressed: () => {
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => const DicasEstudos()))
                                },
                            child: const Text("Dicas de estudo")),
                        const SizedBox(height: 20),
                        ElevatedButton(
                            style: ButtonStyle(
                              minimumSize: MaterialStateProperty.all<Size>(
                                  const Size.fromHeight(40)),
                              padding:
                                  MaterialStateProperty.all<EdgeInsets>(
                                      const EdgeInsets.fromLTRB(30, 5, 30, 5)),
                              foregroundColor:
                                  MaterialStateProperty.all<Color>(
                                      Colors.white),
                              backgroundColor:
                                  MaterialStateProperty.all<Color>(
                                      const Color.fromRGBO(0, 96, 150, 100)),
                              side: MaterialStateProperty.all<BorderSide>(
                                  const BorderSide(
                                      color:
                                          Color.fromRGBO(0, 96, 150, 100))),
                            ),
                            onPressed: () => {
                                Navigator.push(context, MaterialPageRoute(builder: (context) => const TecnicasRespiracao()))
                            },
                            child: const Text("Técnicas de Respiração")),
                        const SizedBox(height: 20),
                        ElevatedButton(
                            style: ButtonStyle(
                              minimumSize: MaterialStateProperty.all<Size>(
                                  const Size.fromHeight(40)),
                              padding:
                                  MaterialStateProperty.all<EdgeInsets>(
                                      const EdgeInsets.fromLTRB(30, 5, 30, 5)),
                              foregroundColor:
                                  MaterialStateProperty.all<Color>(
                                      Colors.white),
                              backgroundColor:
                                  MaterialStateProperty.all<Color>(
                                      const Color.fromRGBO(0, 96, 150, 100)),
                              side: MaterialStateProperty.all<BorderSide>(
                                  const BorderSide(
                                      color:
                                          Color.fromRGBO(0, 96, 150, 100))),
                            ),
                            onPressed: () => {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => const TecnicasRelaxamento()))
                            },
                            child: const Text("Técnicas de Relaxamento")),
                        const SizedBox(height: 20),
                        ElevatedButton(
                            style: ButtonStyle(
                              minimumSize: MaterialStateProperty.all<Size>(
                                  const Size.fromHeight(40)),
                              padding:
                                  MaterialStateProperty.all<EdgeInsets>(
                                      const EdgeInsets.fromLTRB(30, 5, 30, 5)),
                              foregroundColor:
                                  MaterialStateProperty.all<Color>(
                                      const Color.fromRGBO(0, 96, 150, 100)),
                              backgroundColor:
                                  MaterialStateProperty.all<Color>(
                                      Colors.white),
                              side: MaterialStateProperty.all<BorderSide>(
                                  const BorderSide(
                                      color:
                                          Color.fromRGBO(0, 96, 150, 100))),
                            ),
                            onPressed: () => {
                                Navigator.push(context, MaterialPageRoute(builder: (context) => const Agradecimento()))
                            },
                            child: const Text("Já estou me sentindo melhor, obrigado!")),
                      ])),
            ),
            Image.asset("assets/images/Robot_ola.png")
          ],
        ),
      ),
    );
  }
}
