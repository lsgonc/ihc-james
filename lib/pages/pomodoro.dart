import 'package:flutter/material.dart';
import 'package:flutter_chat_bubble/chat_bubble.dart';

class Pomodoro extends StatelessWidget {
  const Pomodoro({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
            padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
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
                  height: MediaQuery.of(context).size.height / 2,
                  child: Column(
                    children: [
                      SizedBox(height: MediaQuery.of(context).size.width / 14),
                      Text("Método Pomodoro", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24),),
                      SizedBox(height: 20),
                      Text(
                        "Divida seu tempo de estudo em intervalos curtos, geralmente de 25 minutos, seguidos por uma pausa de 5 minutos.", 
                        style: TextStyle(fontSize: 20),),
                        SizedBox(height: 20),
                      Text(
                        "Após completar quatro ciclos Pomodoro, faça uma pausa mais longa, de 15-30 minutos.", 
                        style: TextStyle(fontSize: 20),),
                      SizedBox(height: 30,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          ElevatedButton(style: ButtonStyle(
                            foregroundColor: MaterialStateProperty.all<Color>(Color.fromRGBO(0, 96, 150, 100)),
                            backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                            side: MaterialStateProperty.all<BorderSide>(BorderSide(color: Color.fromRGBO(0, 96, 150, 100))),
                          ),onPressed: () => {}, child: Text("Não estou me sentindo bem")),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Align(alignment: Alignment.topCenter, child: Image(
                alignment: Alignment.center,
                image: AssetImage("assets/images/metodo_pomodoro.png"),
                width: MediaQuery.of(context).size.width / 4,
                height: MediaQuery.of(context).size.height / 3,))
            ]),
            ),
    );

  }
}
