import 'package:first_app/pages/agradecimento.dart';
import 'package:flutter/material.dart';
import 'package:flutter_chat_bubble/chat_bubble.dart';

class NadiShodhana extends StatelessWidget {
  const NadiShodhana({super.key});

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
              Color.fromRGBO(241, 152, 102, 100),
              Color.fromRGBO(255, 239, 234, 100)
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
                          Text("Nadi Shodhana",textAlign: MediaQuery.of(context).size.width < 750 ? TextAlign.justify : TextAlign.left, style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 24),),
                        ],
                      ),
                      const SizedBox(height: 20),
                      const Text( "1. Sente-se em uma posição confortável, mantendo a coluna ereta.",  style: TextStyle(fontSize: 20,height: 1.8)),
                      const Text( "2. Alterne a obstrução de uma narina enquanto respira..",  style: TextStyle(fontSize: 20,height: 1.8),),
                      const Text( "3. Feche a narina direita e inspire pela narina esquerda.",  style: TextStyle(fontSize: 20,height: 1.8),),
                      const Text( "4. Feche a narina esquerda e solte a narina direita enquanto expira.",  style: TextStyle(fontSize: 20,height: 1.8),),
                      const Text( "5. Continue alternando as narinas, mantendo um ritmo lento e constante. ",  style: TextStyle(fontSize: 20,height: 1.8)),
    
                      const SizedBox(height: 30,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          ElevatedButton(style: ButtonStyle(
                            foregroundColor: MaterialStateProperty.all<Color>(const Color.fromRGBO(168, 68, 0, 100)),
                            backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                            side: MaterialStateProperty.all<BorderSide>(const BorderSide(color: Color.fromRGBO(168, 68, 0, 100))),
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
                image: const AssetImage("assets/images/tecnicas_respiracao.png"),
                width: MediaQuery.of(context).size.width / 4,
                height: MediaQuery.of(context).size.height / 3,))
            ]),
            ),
    );

  }
}
