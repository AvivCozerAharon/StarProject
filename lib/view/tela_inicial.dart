import 'dart:async';
import 'package:flutter/material.dart';
import '../controller/controllerNavegacao.dart';
import '../prefabs/estilo.dart';


class Tela_inicial extends StatefulWidget {
  @override
  Tela_inicial_Estado createState() => Tela_inicial_Estado();
  Widget build(BuildContext context) => const Scaffold();

}

class Tela_inicial_Estado extends State<Tela_inicial> with SingleTickerProviderStateMixin{


  var _visible = true;

  late AnimationController animationController;
  late Animation<double> animation;

  startTime() async {
    var duration = const Duration(seconds: 2);
    return Timer(duration, navigationPage);
  }
  @override

  dispose() {
    animationController.dispose(); // you need this
    super.dispose();
  }

  void navigationPage() {
    Navegacao.home(context);

  }

  @override
  void initState() {
    super.initState();



    animationController = AnimationController(vsync: this, duration:  const Duration(seconds: 4));
    animation =  CurvedAnimation(parent: animationController, curve: Curves.easeOut);

    animation.addListener(() => setState(() {}));
    animationController.forward();

    setState(() {
      _visible = !_visible;
    });
    startTime();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Estilo.corPrimaria,
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                margin: const EdgeInsets.only(bottom: 40),
                child:Image.asset(
                  'files/logo.png',
                  width: 150,
                  height: 150,
                ),

              ),

            ],
          ),
        ],
      ),
    );
  }
}