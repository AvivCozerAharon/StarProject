import 'package:flutter/material.dart';
import 'package:star_project/controller/controllerNavegacao.dart';

import '../../../prefabs/button.dart';
import '../../../prefabs/estilo.dart';
import 'package:star_project/model/model.dart';

class Learning_menu extends StatefulWidget {
  @override
  Learning_menu_Estado createState() => Learning_menu_Estado();
}

class Learning_menu_Estado extends State<Learning_menu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Estilo.corPrimaria,
      body: SingleChildScrollView(
        physics: const ClampingScrollPhysics(),
        child: Center(
          child: Column(
            children: <Widget>[
              SizedBox(height: MediaQuery.of(context).size.height * 0.05,),
              Button.buttonBack(onPressed: () => Navegacao.home(context)),

              Container(
                alignment: Alignment.center,
                child: const Text(
                  'Welcome to the learning area!',
                  style:
                      TextStyle(fontFamily: Estilo.fonteLearning, fontSize: 30,color: Estilo.corSecundaria),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Button.buttonLeaning(onPressed: (){
                Navegacao.learningPage(context);
                model.selectedLearning = 'movestar';
              },img: "files/learning/movestar.png",text: 'DO THE STARS ACTUALLY MOVE?',context: context),
              Button.buttonLeaning(onPressed: (){
                Navegacao.learningPage(context);
                model.selectedLearning = 'zodiac';
              },img: "files/learning/zodiac.png",text: 'WHAT IS THE ZODIAC?',context: context),
              Button.buttonLeaning(onPressed: (){
                Navegacao.learningPage(context);
                model.selectedLearning = 'bright';
              },img: "files/learning/bright_variable.png",text: 'STAR BRIGHTNESS VARIATION',context: context),

            ],
          ),
        ),
      ),
    );
  }
}
