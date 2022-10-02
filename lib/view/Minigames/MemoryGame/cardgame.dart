import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:star_project/view/Minigames/MemoryGame/GameController/game_controller.dart';
import 'package:star_project/view/Minigames/MemoryGame/GameController/game_settings.dart';

class CardGame extends StatefulWidget {
  final GameOption gameOpcao;

  const CardGame({
    Key? key,
    required this.gameOpcao,
  }) : super(key: key);
  @override
  State<CardGame> createState() => _CardGameState();
}

class _CardGameState extends State<CardGame>
    with SingleTickerProviderStateMixin {
  late final AnimationController animation;

  @override
  void initState() {
    super.initState();
    animation = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 600));
  }

  flipCard() {
    if(!animation.isAnimating && !widget.gameOpcao.matched && !widget.gameOpcao.selected && !Game.jogadaCompleta){
      animation.forward();
      Game.choices(widget.gameOpcao, resetCard,context);
    }
  }
  resetCard(){
    animation.reverse();
  }

  AssetImage getImage(double angle) {
    if (angle > 0.5 * pi) {
      return AssetImage('files/memory/stars/${widget.gameOpcao.option.toString()}.png');
    } else {
      return AssetImage('files/memory/behindcard.png');
    }
  }

  @override
  void dispose() {
    super.dispose();
    animation.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: animation,
      builder: (BuildContext context, _) {
        final angle = animation.value * pi;
        final transform = Matrix4.identity()
          ..setEntry(3, 2, 0.002)
          ..rotateY(angle);
        return GestureDetector(
            onTap: () => flipCard(),
            child: Transform(
                transform: transform,
                alignment: Alignment.center,
                child: Container(
                  decoration:  BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                        image: getImage(angle),
                      )),
                )));
      },
    );
  }
}
