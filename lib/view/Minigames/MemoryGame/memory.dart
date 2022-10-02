import 'package:flutter/material.dart';

import 'package:star_project/controller/controllerNavegacao.dart';
import 'package:star_project/view/Minigames/MemoryGame/GameController/game_controller.dart';
import 'package:star_project/view/Minigames/MemoryGame/GameController/game_settings.dart';
import 'package:star_project/view/Minigames/MemoryGame/cardgame.dart';
import 'package:provider/provider.dart';
import '../../../prefabs/estilo.dart';

class MemoryGame extends StatefulWidget {
  @override
  MemoryGame_Estado createState() => MemoryGame_Estado();
}

class MemoryGame_Estado extends State<MemoryGame> {
  @override
  void initState() {
    super.initState();
    Game.startGame();
  }

@override
  Widget build(BuildContext context) {

    return Scaffold(
        backgroundColor: Estilo.corPrimaria,
        body: SingleChildScrollView(
            physics: const ClampingScrollPhysics(),
            child: Center(
              child: Column(
                children: [
                  const SizedBox(
                    height: 12,
                  ),
                  AppBar(
                    backgroundColor: Estilo.corPrimaria,
                    centerTitle: true,
                    title: const Text(
                      "FIND THE PAIRS",
                      style: TextStyle(
                          color: Estilo.corSecundaria,
                          fontSize: 30,
                          fontFamily: Estilo.fonteTitulo),
                    ),
                    actions: <Widget>[
                      Container(
                        padding:  const EdgeInsets.only(right: 15),
                        child: Row(
                          children:  [
                            const Icon(Icons.touch_app),
                            Text(Game.touch.toString()),
                          ],
                        ),
                      ),

                    ],
                  ),
                  GridView.count(
                    shrinkWrap: true,
                    crossAxisCount: 3,
                    mainAxisSpacing: 15,
                    crossAxisSpacing: 15,
                    padding: const EdgeInsets.all(24),
                    children: Game.gameCards.map((GameOption go) => CardGame(gameOpcao: go)).toList(),
                  ),


                ],
              ),
            )));
  }
}
