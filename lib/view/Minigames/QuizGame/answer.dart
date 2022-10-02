import 'package:flutter/material.dart';

import '../../../prefabs/estilo.dart';

class Answer extends StatelessWidget {
  final String answerText;
  final Color answerColor;
  final VoidCallback answerPressed;
  const Answer({super.key,  required this.answerText,required this.answerColor,required this.answerPressed});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      width: MediaQuery.of(context).size.width * 0.9,
        height: 50,
      child:  TextButton(
        onPressed: answerPressed,
        style: TextButton.styleFrom(
          backgroundColor: answerColor,
          shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(50)),),
        child:  Text(answerText,style: const TextStyle(color: Estilo.corPrimaria,fontSize: 19,fontFamily: Estilo.fonteTexto),),
      ),
    );
  }
}
