import 'package:flutter/material.dart';
import 'package:star_project/controller/controllerNavegacao.dart';

import '../../../prefabs/button.dart';
import '../../../prefabs/estilo.dart';

class Quiz_menu extends StatefulWidget {
  @override
  Quiz_menu_Estado createState() => Quiz_menu_Estado();
}

class Quiz_menu_Estado extends State<Quiz_menu> {
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
              Button.buttonBack(onPressed: () => Navegacao.minigames(context)),
              Container(
                margin: const EdgeInsets.only(left: 20),
                alignment: Alignment.topLeft,
                child: const Text(
                  "GUESSING THE CONSTELATION",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: Estilo.fonteTitulo,
                      fontSize: 25,
                      color: Estilo.corSecundaria,
                      fontWeight: FontWeight.normal),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Container(
                margin: const EdgeInsets.only(left: 20, right: 20),
                alignment: Alignment.topLeft,
                child: const Text(
                  "Welcome to the constalations Quiz! \n\n On the following questions,you’ll have to guess the correct name of the constelations shown in the pictures.\n\n Try your best and good luck!",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      fontFamily: Estilo.fonteTexto,
                      fontSize: 20,
                      color: Estilo.corSecundaria,
                      fontWeight: FontWeight.normal),
                ),
              ),
              Container(
                  margin: const EdgeInsets.only(top: 200),
                  width: MediaQuery.of(context).size.width * 0.88,
                  height: 45,
                  child: Button.buttonStarQuiz(
                    onPressed: () => Navegacao.startquiz(context),
                    text: const Text(
                      "START THE QUIZ",
                      style: TextStyle(
                          color: Estilo.corPrimaria,
                          fontSize: 20,
                          fontFamily: Estilo.fonteBotao),
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
