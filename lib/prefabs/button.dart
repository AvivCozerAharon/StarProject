import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'estilo.dart';

class Button {
  static Widget buttonMenu({@required onPressed, text, height, width}) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        backgroundColor: Estilo.corPrimaria,
        shape: RoundedRectangleBorder(
            side: const BorderSide(
                color: Estilo.corSecundaria,
                width: 2,
                style: BorderStyle.solid),
            borderRadius: BorderRadius.circular(40)),
      ),
      child: text,
    );
  }

  static Widget buttonChoice({@required onPressed, img, text, context}) {
    return TextButton(
      onPressed: onPressed,
      child: Container(
        width: MediaQuery.of(context).size.width * 0.9,
        height: MediaQuery.of(context).size.height * 0.25,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(
                Radius.circular(10.0) //                 <--- border radius here
                ),
            image: DecorationImage(image: AssetImage(img), fit: BoxFit.cover)),
        child: Text(
          text,
          style: const TextStyle(
              backgroundColor: Estilo.corPrimaria,
              fontSize: 30,
              color: Estilo.corSecundaria,
              fontFamily: Estilo.fonteBotao),
        ),
      ),
    );
  }

  static Widget buttonStarQuiz(
      {@required onPressed, text, height, width, context}) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        backgroundColor: Estilo.corSecundaria,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      ),
      child: text,
    );
  }

  static Widget buttonBack({@required onPressed, height, width}) {
    return Row(
      children: [
        IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Estilo.corSecundaria,
          ),
          onPressed: onPressed,
        ),
      ],
    );
  }

  static Widget buttonLeaning({@required onPressed, img, text, context}) {
    return TextButton(
      onPressed: onPressed,
      child: Container(
        width: MediaQuery.of(context).size.width * 0.9,
        height: MediaQuery.of(context).size.height * 0.25,
        alignment: Alignment.center,
        margin: EdgeInsets.only(top: 10),
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(
                Radius.circular(10.0) //                 <--- border radius here
                ),
            image: DecorationImage(image: AssetImage(img), fit: BoxFit.cover)),
        child: Text(
          text,
          style: const TextStyle(
              fontSize: 24,
              color: Estilo.corSecundaria,
              fontFamily: Estilo.fonteLearning),
        ),
      ),
    );
  }
}
