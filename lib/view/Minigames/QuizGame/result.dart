import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:star_project/controller/controllerNavegacao.dart';

import '../../../prefabs/button.dart';
import '../../../prefabs/estilo.dart';
import '../../../model/model.dart';


class Quiz_result extends StatefulWidget {
  @override
  Quiz_result_Estado createState() => Quiz_result_Estado();
}

class Quiz_result_Estado extends State<Quiz_result> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Estilo.corPrimaria,
      body: SingleChildScrollView(
        physics: const ClampingScrollPhysics(),
        child: Center(
          child: Column(
            children: <Widget>[
              const SizedBox(height: 50),
              Container(
                alignment: Alignment.center,
                child:  Text('YOUR SCORE: ${model.totalScore}/12',
                  textAlign: TextAlign.left,
                  style: const TextStyle(
                      fontFamily: Estilo.fonteBotao,
                      fontSize: 40,
                      color: Estilo.corSecundaria,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 5),
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width * 0.9,
                  height: 500,
                decoration:  const BoxDecoration(
                  color: Estilo.corSecundaria,
                    borderRadius:  BorderRadius.all(
                        Radius.circular(15.0),
                    ),
                ),
                child: model.totalScore == 12?Result('Why are you not in NASA yet? ‍🚀 ', 'files/result/Equals10.png','You got 100% on the quiz\n 🎉Congratulations🎉'):
                model.totalScore >=8 && model.totalScore<=11?Result('Almost an NASA Astrounat!‍🚀 ', 'files/result/8to9.png','You got ${((model.totalScore/12 )*100).round()}% on the quiz\n 🎉Congratulations🎉'):
                model.totalScore >=6 && model.totalScore<=7?Result('🤓Not bad, but can be better... 💪 ', 'files/result/6to7.png','You got ${((model.totalScore/12 )*100).round()}% on the quiz\n You can study more at Learning section'):
                Result('🤷‍Don’t worry, here it is the place to learn 👍 ', 'files/result/0to5.png','You got ${((model.totalScore/12 )*100).round()}% on the quiz\n You can study more at Learning section'),
                ),
              Container(
                  margin: const EdgeInsets.only(top: 20),
                  width: MediaQuery.of(context).size.width * 0.88,
                  height: 50,
                  child: Button.buttonMenu(
                    onPressed: () => Navegacao.home(context),
                    text: const Text(
                      "Back to menu",
                      style: TextStyle(color: Estilo.corSecundaria,fontSize: 20,fontFamily: Estilo.fonteBotao),
                    ),
                  ))               ]),


    )    ));


  }

  static Widget Result(upperText,img,bottomText){
    return Column(
      children:  [
        const SizedBox(height: 20,),
        Text(upperText,style: const TextStyle(fontSize: 25),textAlign: TextAlign.center,),
        Image.asset(img,width: 400, height: 300,),
        Text(bottomText,style: const TextStyle(fontSize: 22),textAlign: TextAlign.center,)
      ],
    );
  }
}

