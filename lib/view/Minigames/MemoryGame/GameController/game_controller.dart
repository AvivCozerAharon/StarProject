import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:star_project/model/model.dart';
import 'package:star_project/prefabs/button.dart';
import 'package:star_project/view/Minigames/MemoryGame/GameController/game_settings.dart';
import 'package:star_project/view/Minigames/MemoryGame/memory.dart';

import '../../../../prefabs/estilo.dart';

class Game {
  static int corrects = 0;
  static bool win = false;
  static int touch = 0;
  static int _numPairs = 6;
  static List<GameOption> gameCards = [];
  static List<GameOption> _choice = [];
  static List<Function> _choiceCallback = [];
  static int _corrects = 0;

  static bool get jogadaCompleta => (_choice.length == 2);

  static startGame() {
    _corrects = 0;
    win = false;
    touch = 0;
    generateCards();
  }

  static generateCards() {
    List<int> cardOptions = GameSettings.options.sublist(0)
      ..shuffle();
    cardOptions = cardOptions.sublist(0, _numPairs);
    gameCards = [...cardOptions, ...cardOptions]
        .map((option) =>
        GameOption(option: option, matched: false, selected: false))
        .toList();
    gameCards.shuffle();
  }

  static choices(GameOption option, Function resetCard,
      BuildContext context) async {
    option.selected = true;
    _choice.add(option);
    _choiceCallback.add(resetCard);
    await _compereChoices(context);
  }

  static _compereChoices(BuildContext context) async {
    (context as Element).reassemble();
    if (jogadaCompleta) {
      if (_choice[0].option == _choice[1].option) {
        _corrects++;
        model.selectedPair = _choice[0].option;
        _choice[0].matched = true;
        _choice[1].matched = true;
        Future.delayed(const Duration(milliseconds: 1000), () {
          showDialog(
              barrierColor: Estilo.corPrimaria,
              barrierDismissible: false,
              context: context,
              builder: (BuildContext context) =>
                  AlertDialog(
                    backgroundColor: Estilo.corPrimaria,
                    content: Column(
                        children: [
                    Container(
                    margin: const EdgeInsets.only(top: 5),
                    alignment: Alignment.center,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(0.0),
                      ),
                    ),
                    child: Column(
                      children: [
                        Container(
                          width: 200,
                          height: 200,
                          child: Image.asset(
                              'files/memory/stars/${model.selectedPair
                                  .toString()}.png'),
                        ),
                        const Text(
                          'DID YOU KNOW?',
                          style: TextStyle(
                              fontFamily: Estilo.fonteTitulo,
                              fontSize: 17,
                              color: Estilo.corSecundaria),
                        ),
                        if(model.selectedPair == 1)
                          const Text(
                            'DID YOU KNOW?',
                            style: TextStyle(
                                fontFamily: Estilo.fonteTexto,
                                fontSize: 17,
                                color: Estilo.corSecundaria),
                          ),
                        if(model.selectedPair == 2)
                          const Text(
                            'White dwarfs are rich forensic laboratories that provide links between the history and future evolution of the Milky Way Galaxy (the galaxy that includes the Solar System). The structure and composition of white dwarfs contain the records of the final stages of stellar evolution.',
                            style: TextStyle(
                                fontFamily: Estilo.fonteTexto,
                                fontSize: 17,
                                color: Estilo.corSecundaria),
                            textAlign: TextAlign.center,
                          ),
                        if(model.selectedPair == 3)
                          const Text(
                            'Nebulae are made of dust and gases  - mostly hydrogen and helium',
                            style: TextStyle(
                                fontFamily: Estilo.fonteTexto,
                                fontSize: 17,
                                color: Estilo.corSecundaria),
                            textAlign: TextAlign.center,
                          ),
                        if(model.selectedPair == 4)
                          const Text(
                            'Red giant stars are between 100 to 1.000 times more luminous than our Sun. Most red giant stars live up to around 0.1 to 2 billion years. Red giant stars are much smaller and much less massive than red supergiant stars. Some famous red giant stars are Aldebaran and Arcturus.',
                            style: TextStyle(
                                fontFamily: Estilo.fonteTexto,
                                fontSize: 17,
                                color: Estilo.corSecundaria),
                            textAlign: TextAlign.center,
                          ),
                        if(model.selectedPair == 5)
                          const Text(
                            'DID YOU KNOW?',
                            style: TextStyle(
                                fontFamily: Estilo.fonteTexto,
                                fontSize: 17,
                                color: Estilo.corSecundaria),
                            textAlign: TextAlign.center,
                          ),
                        if(model.selectedPair == 6)
                          const Text(
                            'The Orion Nebula is the closest one to the Earth. - Nebulae are also known as "Stellar Nurseries" because stars are born in them. - The nebulae outside the Milky Way are referred to as extra-galactic nebulae. - Diffuse Nebulae are very well outspread and dont have any limits, or so we believe.',
                            style: TextStyle(
                                fontFamily: Estilo.fonteTexto,
                                fontSize: 17,
                                color: Estilo.corSecundaria),
                            textAlign: TextAlign.center,
                          ),
                      ],
                    ),
                  ),
                          SizedBox(height: MediaQuery.of(context).size.height * 0.05,),
                          Container(
                              margin: const EdgeInsets.all(8),
                              width: MediaQuery.of(context).size.width * 0.75,
                              height: 50,
                              child: Button.buttonMenu(
                                onPressed: () => Navigator.pop(context),
                                text: const Text(
                                  "Back to game",
                                  style: TextStyle(color: Estilo.corSecundaria,fontSize: 17,fontFamily: Estilo.fonteBotao),
                                ),
                              )),
                        ],
              )));
        });
      } else {
        await Future.delayed(const Duration(seconds: 1), () {
          for (var i in [0, 1]) {
            _choice[i].selected = false;
            _choiceCallback[i]();
          }
        });
      }

      _resetPlay();
      touch++;
      _checkGameResult();
    }
  }

  static _resetPlay() {
    _choice = [];
    _choiceCallback = [];
  }

  static _checkGameResult() async {
    bool allMatched = _corrects == _numPairs;
    print(allMatched);
    await Future.delayed(const Duration(seconds: 1), () => win = allMatched);
  }
}
