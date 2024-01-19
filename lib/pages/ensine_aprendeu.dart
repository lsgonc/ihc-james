import 'package:first_app/pages/agradecimento.dart';
import 'package:flutter/material.dart';
import 'package:flutter_chat_bubble/chat_bubble.dart';

class EnsineAprendeu extends StatelessWidget {
  const EnsineAprendeu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
            padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
              Color.fromRGBO(102, 149, 241, 100),
              Color.fromRGBO(234, 241, 255, 100)
            ])),
            child: Stack(
              alignment: Alignment.center,
              children: [ChatBubble(
                alignment: Alignment.center,
                backGroundColor: Colors.white,
                clipper: ChatBubbleClipper6(type: BubbleType.sendBubble),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width / 1.3,
                  height: MediaQuery.of(context).size.height / 1.5,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: MediaQuery.of(context).size.width / 14),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Ensine o que aprendeu",textAlign: MediaQuery.of(context).size.width < 750 ? TextAlign.justify : TextAlign.left, style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 24),),
                        ],
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        "Após estudar um tópico, tente ensiná-lo a alguém, mesmo que seja para um amigo imaginário ou por escrito.", 
                        style: TextStyle(fontSize: 20),),
                      const Text.rich(TextSpan(
                        children: <TextSpan>[
                          TextSpan(text: "Ensinar o que aprendeu ", style: TextStyle(fontSize: 20)),
                          TextSpan(text: "reforça seu próprio entendimento", style: TextStyle(fontSize: 20,color: Color.fromRGBO(55, 123, 255, 100))),
                          TextSpan(text: " e ", style: TextStyle(fontSize: 20)),
                          TextSpan(text: "destaca áreas que ainda precisam de revisão.", style: TextStyle(fontSize: 20,color: Color.fromRGBO(55, 123, 255, 100))),
                        ]
                      )),
                      
                      const SizedBox(height: 30,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          ElevatedButton(style: ButtonStyle(
                            foregroundColor: MaterialStateProperty.all<Color>(const Color.fromRGBO(0, 96, 150, 100)),
                            backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                            side: MaterialStateProperty.all<BorderSide>(const BorderSide(color: Color.fromRGBO(0, 96, 150, 100))),
                          ),onPressed: () => {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => const Agradecimento()))
                          }, child: const Text("Estou melhor, obrigado!")),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Align(alignment: Alignment.topCenter, child: Image(
                alignment: Alignment.center,
                image: const AssetImage("assets/images/metodo_pomodoro.png"),
                width: MediaQuery.of(context).size.width / 4,
                height: MediaQuery.of(context).size.height / 3,))
            ]),
            ),
    );

  }
}
