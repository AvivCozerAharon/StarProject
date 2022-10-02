import 'package:flutter/material.dart';
import 'package:star_project/controller/controllerNavegacao.dart';

import '../../../prefabs/button.dart';
import '../../../prefabs/estilo.dart';


class Memory_menu extends StatefulWidget {
  @override
  Memory_menu_Estado createState() => Memory_menu_Estado();
}

class Memory_menu_Estado extends State<Memory_menu> {
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
              Button.buttonBack(onPressed: ()=> Navegacao.minigames(context)),
              Container(
                margin: const EdgeInsets.only(left: 20),
                alignment: Alignment.center,
                child: const Text("MEMORY GAME",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      fontFamily: Estilo.fonteTitulo,
                      fontSize: 30,
                      color: Estilo.corSecundaria,
                      fontWeight: FontWeight.normal),
                ),
              ),
              const SizedBox(
                height: 20,
              ),              Container(
                margin: const EdgeInsets.only(left: 20,right: 20),
                alignment: Alignment.topLeft,
                child: const Text("Welcome to the Memory Game\n\nTry to find the correct pairs for each picture.\n\nGood luck!",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      fontFamily: Estilo.fonteTexto,
                      fontSize: 20,
                      color: Estilo.corSecundaria,
                      fontWeight: FontWeight.normal),
                ),
              ),
              Container(
                  margin: const EdgeInsets.only(top: 250),
                  width: MediaQuery.of(context).size.width * 0.88,
                  height: 45,
                  child: Button.buttonStarQuiz(
                    onPressed: () => Navegacao.startmemory(context),
                    text: const Text(
                      "STAR MEMORY GAME",
                      style: TextStyle(color: Estilo.corPrimaria,fontSize: 20,fontFamily: Estilo.fonteBotao),
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}