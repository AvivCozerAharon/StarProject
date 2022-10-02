import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:star_project/controller/controllerNavegacao.dart';

import '../../../prefabs/button.dart';
import '../../../model/model.dart';

import '../../../prefabs/estilo.dart';
import 'answer.dart';

class Quiz_Game extends StatefulWidget {
  @override
  QuizGame_Estado createState() => QuizGame_Estado();
}

int _questionIndex = 0;
int _totalscore = 0;

bool answerSelected = false;
bool endQuiz = false;
bool correctAnswerSelected = false;

class QuizGame_Estado extends State<Quiz_Game> {
  int _totalscore = 0;

  void _questionAnswered(bool answerScore) {
    setState(() {
      answerSelected = true;
      if (answerScore) {
        _totalscore++;
        correctAnswerSelected = true;
      }
      if (_questionIndex + 1 == _questions.length) {
        endQuiz = true;
      }
      if (endQuiz) {
        Future.delayed(const Duration(milliseconds: 1000), () {
          model.totalScore = _totalscore;
          _resetQuiz();
          Navegacao.resultQuiz(context);
        });
      } else {
        Future.delayed(const Duration(milliseconds: 1000), () {
          setState(() {
            _questionIndex++;
            answerSelected = false;
          });
        });
      }
    });
  }

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalscore = 0;
      endQuiz = false;
      answerSelected = false;
    });
  }
  @override
  void initState() {
    super.initState();
    _resetQuiz();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Estilo.corPrimaria,
      body: SingleChildScrollView(
        physics: const ClampingScrollPhysics(),
        child: Center(
          child: Column(children: <Widget>[
            const SizedBox(
              height: 30,
            ),
            Button.buttonBack(
              onPressed: () {
                setState(() {
                  Navegacao.home(context);
                });
              },
            ),
            Container(
              margin: const EdgeInsets.only(left: 20),
              alignment: Alignment.centerLeft,
              child: Text(
                'Question ${_questionIndex + 1}/12',
                style: const TextStyle(
                    fontSize: 30,
                    color: Estilo.corSecundaria,
                    fontFamily: Estilo.fonteTitulo,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.left,
              ),
            ),
            const SizedBox(height: 5),
            Container(
              width: MediaQuery.of(context).size.width * 0.9,
              height: 3,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10.0) //
                    ),
              ),
              child: LinearProgressIndicator(
                value: (_questionIndex + 1) / 12,
                backgroundColor: Estilo.corSecundaria,
                valueColor: const AlwaysStoppedAnimation<Color>(Colors.indigo),
              ),
            ),
            const SizedBox(height: 10),
            Container(
              margin: const EdgeInsets.only(left: 20),
              child: Text(
                _questions[_questionIndex]['question'].toString(),
                style: const TextStyle(
                    color: Estilo.corSecundaria,
                    fontFamily: Estilo.fonteBotao,
                    fontSize: 24),
                textAlign: TextAlign.start,
              ),
            ),
            if (_questions[_questionIndex]['img'] != null)
              Container(
                child: Image.asset(
                  _questions[_questionIndex]['img'] as String,
                  width: 250,
                  height: 150,
                ),
              ),
            ...(_questions[_questionIndex]['answers']
                    as List<Map<String, Object>>)
                .map(
              (answer) => Answer(
                  answerText: answer['answerText'] as String,
                  answerColor: answerSelected
                      ? answer['correct'] as bool
                          ? Colors.green
                          : Colors.red
                      : Estilo.corSecundaria,
                  answerPressed: () {
                    if (answerSelected) {
                      return;
                    }
                    _questionAnswered(answer['correct'] as bool);
                  }),
            ),
          ]),
        ),
      ),
    );
  }

  final _questions = const [
    {
      'question':
          'Which zodiac constellation is most visible in the Northern Hemisphere during Spring?',
      'img': 'files/questions/virgo.png',
      'answers': [
        {'answerText': 'Aries', 'correct': false},
        {'answerText': 'Libra', 'correct': false},
        {'answerText': 'Virgo', 'correct': true},
        {'answerText': 'Capricorn', 'correct': false},

      ],
    },
    {
      'question':
      'Which zodiac constellation is most visible in the Northern Hemisphere during Autumn?',
      'img': 'files/questions/aquarius.png',
      'answers': [
        {'answerText': 'Taurus', 'correct': false},
        {'answerText': 'Virgo', 'correct': false},
        {'answerText': 'Cancer', 'correct': false},
        {'answerText': 'Aquarius', 'correct': true},

      ],
    },
    {
      'question':
      'Which zodiac constellation is most visible in the Southern Hemisphere during Summer?',
      'img': 'files/questions/taurus.png',
      'answers': [
        {'answerText': 'Taurus', 'correct': true},
        {'answerText': 'Libra', 'correct': false},
        {'answerText': 'Scorpius', 'correct': false},
        {'answerText': 'Leo', 'correct': false},

      ],
    },
    {
      'question':
      'Which zodiac constellation is most visible in the Northern Hemisphere during Winter?',
      'img': 'files/questions/gemini.png',
      'answers': [
        {'answerText': 'Virgo', 'correct': false},
        {'answerText': 'Capricorn', 'correct': false},
        {'answerText': 'Aquarius', 'correct': false},
        {'answerText': 'Gemini', 'correct': true},

      ],
    },
    {
      'question':
      'Which zodiac constellation is most visible in the Southern Hemisphere during Autumn?',
      'img': 'files/questions/leo.png',
      'answers': [
        {'answerText': 'Taurus', 'correct': false},
        {'answerText': 'Leo', 'correct': true},
        {'answerText': 'Libra', 'correct': false},
        {'answerText': 'Aries', 'correct': false},

      ],
    },
    {
      'question':
      'Which zodiac constellation is most visible in the Southern Hemisphere during Summer?',
      'img': 'files/questions/aries.png',
      'answers': [
        {'answerText': 'Aries', 'correct': true},
        {'answerText': 'Pisces', 'correct': false},
        {'answerText': 'Aquarius', 'correct': false},
        {'answerText': 'Capricorn', 'correct': false},

      ],
    },
    {
      'question':
      'Which zodiac constellation is most visible in the Northern Hemisphere during Spring?',
      'img': 'files/questions/cancer.png',
      'answers': [
        {'answerText': 'Scorpius', 'correct': false},
        {'answerText': 'Taurus', 'correct': false},
        {'answerText': 'Cancer', 'correct': true},
        {'answerText': 'Libra', 'correct': false},

      ],
    },
    {
      'question':
      'Which zodiac constellation is most visible in the Northern Hemisphere during Winter?',
      'img': 'files/questions/sagittarius.png',
      'answers': [
        {'answerText': 'Scorpius', 'correct': false},
        {'answerText': 'Cancer', 'correct': false},
        {'answerText': 'Leo', 'correct': false},
        {'answerText': 'Sagittarius', 'correct': true},

      ],
    },
    {
      'question':
      'Which zodiac constellation is most visible in the Northern Hemisphere during Summer?',
      'img': 'files/questions/scorpio.png',
      'answers': [
        {'answerText': 'Taurus', 'correct': false},
        {'answerText': 'Scorpius', 'correct': true},
        {'answerText': 'Virgo', 'correct': false},
        {'answerText': 'Aquarius', 'correct': false},

      ],
    },
    {
      'question':
      'Which zodiac constellation is most visible in the Northern Hemisphere during Autumn?',
      'img': 'files/questions/capricorn.png',
      'answers': [
        {'answerText': 'Scorpius', 'correct': false},
        {'answerText': 'Gemini', 'correct': false},
        {'answerText': 'Capricorn', 'correct': true},
        {'answerText': 'Aries', 'correct': false},

      ],
    },
    {
      'question':
      'Which zodiac constellation is most visible in the Northern Hemisphere during Spring?',
      'img': 'files/questions/libra.png',
      'answers': [
        {'answerText': 'Taurus', 'correct': false},
        {'answerText': 'Leo', 'correct': false},
        {'answerText': 'Aquarius', 'correct': false},
        {'answerText': 'Libra', 'correct': true},

      ],
    },
    {
      'question':
      'Which zodiac constellation is most visible in the Southern Hemisphere during Spring?',
      'img': 'files/questions/pisces.png',
      'answers': [
        {'answerText': 'Pisces', 'correct': true},
        {'answerText': 'Cancer', 'correct': false},
        {'answerText': 'Sagittarius', 'correct': false},
        {'answerText': 'Libra', 'correct': false},

      ],
    },

  ];
}
