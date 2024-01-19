import 'package:first_app/pages/agradecimento.dart';
import 'package:flutter/material.dart';
import 'package:flutter_chat_bubble/chat_bubble.dart';

class VizualizacaoGuiada extends StatelessWidget {
  const VizualizacaoGuiada({super.key});

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
              Color.fromRGBO(255, 150, 188, 100),
              Color.fromRGBO(255, 244, 251, 100)
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
                          Text("Vizualização Guiada",textAlign: MediaQuery.of(context).size.width < 750 ? TextAlign.justify : TextAlign.left, style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 24),),
                        ],
                      ),
                      const SizedBox(height: 20),
                      const Text( "1. Feche os olhos e respire profundamente para se acalmar..",  style: TextStyle(fontSize: 20,height: 1.8)),
                      const Text( "2. Imagine um local tranquilo e sereno, como uma praia ou um campo.",  style: TextStyle(fontSize: 20,height: 1.8),),
                      const Text( "3. Explore mentalmente esse ambiente, prestando atenção aos detalhes",  style: TextStyle(fontSize: 20,height: 1.8),),
                      const Text( "4. Permita-se sentir a paz e a serenidade desse lugar imaginário.",  style: TextStyle(fontSize: 20,height: 1.8),),

                      const SizedBox(height: 30,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          ElevatedButton(style: ButtonStyle(
                            foregroundColor: MaterialStateProperty.all<Color>(const Color.fromRGBO(255, 39, 118, 100)),
                            backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                            side: MaterialStateProperty.all<BorderSide>(const BorderSide(color: Color.fromRGBO(255, 39, 118, 100))),
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
                image: const AssetImage("assets/images/tecnicas_relaxamento.png"),
                width: MediaQuery.of(context).size.width / 4,
                height: MediaQuery.of(context).size.height / 3,))
            ]),
            ),
    );

  }
}
