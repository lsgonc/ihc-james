import 'package:first_app/pages/agradecimento.dart';
import 'package:flutter/material.dart';
import 'package:flutter_chat_bubble/chat_bubble.dart';

class AbdominalProfundo extends StatelessWidget {
  const AbdominalProfundo({super.key});

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
                          Text("Respiração Abdominal Profunda",textAlign: MediaQuery.of(context).size.width < 750 ? TextAlign.justify : TextAlign.left, style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24),),
                        ],
                      ),
                      SizedBox(height: 20),
                      Text( "1.Sente-se ou deite-se confortavelmente.",  style: TextStyle(fontSize: 20,height: 1.8)),
                      Text( "2.Coloque uma mão no peito e a outra no abdômen.",  style: TextStyle(fontSize: 20,height: 1.8),),
                      Text( "3.Inspire profundamente pelo nariz, o abdômen deve expandir.",  style: TextStyle(fontSize: 20,height: 1.8),),
                      Text( "4.Expire lentamente pela boca, permitindo que o abdômen se contraia.",  style: TextStyle(fontSize: 20,height: 1.8),),
                      Text( "5.Repita esse padrão respiratório várias vezes. ",  style: TextStyle(fontSize: 20,height: 1.8)),
    
                      SizedBox(height: 30,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          ElevatedButton(style: ButtonStyle(
                            foregroundColor: MaterialStateProperty.all<Color>(Color.fromRGBO(168, 68, 0, 100)),
                            backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                            side: MaterialStateProperty.all<BorderSide>(BorderSide(color: Color.fromRGBO(168, 68, 0, 100))),
                          ),onPressed: () => {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => Agradecimento()))
                          }, child: Text("Estou melhor, obrigado!")),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Align(alignment: Alignment.topCenter, child: Image(
                alignment: Alignment.center,
                image: AssetImage("assets/images/tecnicas_respiracao.png"),
                width: MediaQuery.of(context).size.width / 4,
                height: MediaQuery.of(context).size.height / 3,))
            ]),
            ),
    );

  }
}
