import 'package:flutter/material.dart';
import 'package:star_project/view/Learning/menu_study.dart';
import 'package:star_project/view/Learning/page_study.dart';
import 'package:star_project/view/Minigames/MemoryGame/memory.dart';
import 'package:star_project/view/Minigames/MemoryGame/menu_memory.dart';
import 'package:star_project/view/Minigames/QuizGame/menu_quiz.dart';
import 'package:star_project/view/Minigames/QuizGame/quiz.dart';
import 'package:star_project/view/Minigames/QuizGame/result.dart';
import 'package:star_project/view/Time%20line/time_line.dart';
import '../view/Minigames/menu_games.dart';
import '../view/menu.dart';

class Navegacao {
  //menu
  static void home(context) =>
      Navigator.push(context, MaterialPageRoute(builder: (context) => Menu()));

  static void minigames(context) => Navigator.push(
      context, MaterialPageRoute(builder: (context) => Minigames_menu()));

  //quiz
  static void quiz(context) => Navigator.push(
      context, MaterialPageRoute(builder: (context) => Quiz_menu()));

  static void startquiz(context) => Navigator.push(
      context, MaterialPageRoute(builder: (context) => Quiz_Game()));

  static void resultQuiz(context) => Navigator.push(
      context, MaterialPageRoute(builder: (context) => Quiz_result()));

  //memory
  static void memory(context) => Navigator.push(
      context, MaterialPageRoute(builder: (context) => Memory_menu()));

  static void startmemory(context) => Navigator.push(
      context, MaterialPageRoute(builder: (context) => MemoryGame()));

  //learning
  static void learning(context) => Navigator.push(
      context, MaterialPageRoute(builder: (context) => Learning_menu()));
  static void learningPage(context) => Navigator.push(
      context, MaterialPageRoute(builder: (context) => Learning_page()));

  //timeLine
  static void timeline(context) => Navigator.push(
      context, MaterialPageRoute(builder: (context) => TimeLine()));
}
