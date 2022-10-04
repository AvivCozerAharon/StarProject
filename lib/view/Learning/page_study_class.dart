import 'package:flutter/material.dart';

import '../../controller/controllerNavegacao.dart';
import '../../prefabs/button.dart';
import '../../prefabs/estilo.dart';

class PageStudy extends StatefulWidget {
  final String backgroundimg;
  final String title;
  final String subtitle;
  final String text;

  const PageStudy(
      {Key? key,
      required this.title,
      required this.backgroundimg, required this.subtitle, required this.text})
      : super(key: key);

  @override
  State<PageStudy> createState() => _PageStudy();
}

class _PageStudy extends State<PageStudy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Estilo.corPrimaria,
        body: SingleChildScrollView(
            physics: const ClampingScrollPhysics(),
            child: Container(
                decoration:  BoxDecoration(
                  image: DecorationImage(
                    alignment: Alignment.topCenter,

                      image: AssetImage(widget.backgroundimg), ),
                ),
                child: Center(
                    child: Column(children: <Widget>[
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.1,
                      ),
                  Button.buttonBack(
                      onPressed: () => Navegacao.learning(context)),
                  Column(
                    children: [

                      Text(
                        widget.title,
                        style: const TextStyle(
                            fontFamily: Estilo.fonteLearning,
                            fontSize: 40,
                            color: Estilo.corSecundaria),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.05,
                      ),
                      Text(
                        widget.subtitle,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                            fontFamily: Estilo.fonteBotao,
                            fontSize: 20,
                            color: Estilo.corSecundaria),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.05,
                      ),
                      Container(
                        padding: EdgeInsets.all(20),
                        child:
                      Text(
                        widget.text,
                        style: const TextStyle(
                            fontFamily: Estilo.fonteTexto,
                            fontSize: 15,
                            color: Estilo.corSecundaria),
                      ),
                    )
                    ],)
                ])))));
  }
}
