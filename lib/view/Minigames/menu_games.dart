import 'package:flutter/material.dart';
import 'package:star_project/controller/controllerNavegacao.dart';
import '../../prefabs/button.dart';
import '../../prefabs/estilo.dart';

class Minigames_menu extends StatefulWidget {
  @override
  Minigames_menu_Estado createState() => Minigames_menu_Estado();
}

class Minigames_menu_Estado extends State<Minigames_menu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Estilo.corPrimaria,
      body: SingleChildScrollView(
        physics: const ClampingScrollPhysics(),
        child: Center(
          child: Column(
            children: <Widget>[
              const SizedBox(height: 30),
              Button.buttonBack(onPressed: () => Navegacao.home(context)),
              Container(
                margin: const EdgeInsets.only(left: 20),
                alignment: Alignment.topLeft,
                child: const Text(
                  "Discover while playing:",
                  style: TextStyle(
                      fontFamily: Estilo.fonteTitulo,
                      fontSize: 30,
                      color: Estilo.corSecundaria,
                      fontWeight: FontWeight.normal),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Button.buttonChoice(
                  img: "files/buttonBackground.jpg",
                  text: "QUIZ GAME",
                  context: context,
                  onPressed: () => Navegacao.quiz(context)),
              const SizedBox(
                height: 20,
              ),
              Button.buttonChoice(
                  img: "files/buttonBackground2.png",
                  text: "MEMORY GAME",
                  context: context,
                  onPressed: () => Navegacao.memory(context)),
            ],
          ),
        ),
      ),
    );
  }
}
