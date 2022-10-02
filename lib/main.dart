import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:star_project/view/Minigames/MemoryGame/GameController/game_controller.dart';
import 'package:star_project/view/tela_inicial.dart';
import 'prefabs/estilo.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Estilo.corPrimaria, // status bar color

  ));
  runApp(MyApp());
  ;}



// This Widget is the main application widget.
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Tela_inicial(),
    );
  }
}
