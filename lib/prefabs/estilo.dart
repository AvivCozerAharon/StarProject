import 'package:flutter/material.dart';

class Estilo {
  //cria a classe estilo, essa usado no codigo inteiro, para fontes e cores do aplicativo
  static const corPrimaria = Colors.black;
  static const corSecundaria = Colors.white;
  static const corTerciaria = Colors.purple;
  static const corDesativado = MaterialColor(0xff000000, {
    50: Color.fromRGBO(0, 0, 0, .1),
    100: Color.fromRGBO(0, 0, 0, .2),
    200: Color.fromRGBO(0, 0, 0, .3),
    300: Color.fromRGBO(0, 0, 0, .4),
    400: Color.fromRGBO(0, 0, 0, .5),
    500: Color.fromRGBO(0, 0, 0, .6),
    600: Color.fromRGBO(0, 0, 0, .7),
    700: Color.fromRGBO(0, 0, 0, .8),
    800: Color.fromRGBO(0, 0, 0, .9),
    900: Color.fromRGBO(0, 0, 0, 1),
  });
  static const fonteTexto = "Quicksand";
  static const fonteBotao = "TitilliumWeb";
  static const fonteTitulo = "TitilliumWeb2";
  static const fontePadrao = "Roboto";
  static const fonteLearning = "AmateurCamcorder";

}
