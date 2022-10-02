import 'package:flutter/material.dart';
import '../controller/controllerNavegacao.dart';
import '../prefabs/button.dart';
import '../prefabs/estilo.dart';

class Menu extends StatefulWidget {
  @override
  Menu_Estado createState() => Menu_Estado();
}

class Menu_Estado extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: Scaffold(
        backgroundColor: Estilo.corPrimaria,
        body: Container(
         // decoration: const BoxDecoration(gradient: LinearGradient(begin: Alignment.topLeft,end: Alignment.bottomRight, colors: [Color(0xff1F0D65),Color(0xffD9D9D9)])),
          child:Center(
            child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(height: 10,),
              Image.asset(
                'files/logo_completa.png',
                width: 320,
                height: 400,
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 8,),
                  width: MediaQuery.of(context).size.width * 0.75,
                  height: 50,
                  child: Button.buttonMenu(
                    onPressed: () => Navegacao.learning(context),
                    text: const Text(
                      "Learning",
                      style: TextStyle(color: Estilo.corSecundaria,fontSize: 17,fontFamily: Estilo.fonteBotao),
                    ),
                  )),
              Container(
                  margin: const EdgeInsets.all(8),
                  width: MediaQuery.of(context).size.width * 0.75,
                  height: 50,
                  child: Button.buttonMenu(
                    onPressed: () => Navegacao.minigames(context),
                    text: const Text(
                      "Minigames",
                      style: TextStyle(color: Estilo.corSecundaria,fontSize: 17,fontFamily: Estilo.fonteBotao),
                    ),
                  )),
              Container(
                  margin: const EdgeInsets.all(8),
                  width: MediaQuery.of(context).size.width * 0.75,
                  height: 50,
                  child: Button.buttonMenu(
                    onPressed: () => null,
                    text: const Text(
                      "Timeline",
                      style: TextStyle(color: Estilo.corSecundaria,fontSize: 17,fontFamily: Estilo.fonteBotao),
                    ),
                  ))
            ],
          ),
        ),
      ),
      ));
  }
}