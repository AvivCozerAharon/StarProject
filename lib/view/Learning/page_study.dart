import 'package:flutter/material.dart';
import 'package:star_project/controller/controllerNavegacao.dart';
import 'package:star_project/model/model.dart';
import 'package:star_project/view/Learning/page_study_class.dart';

import '../../../prefabs/button.dart';
import '../../../prefabs/estilo.dart';

class Learning_page extends StatefulWidget {
  @override
  Learning_page_Estado createState() => Learning_page_Estado();
}

class Learning_page_Estado extends State<Learning_page> {
  @override
  Widget build(BuildContext context) {
              if(model.selectedLearning == 'movestar') {
                return const PageStudy(title: 'DO THE STARS ACTUALLY MOVE?', subtitle: 'Well, yes, but not in the way we think they do!', text: 'When looking at the night sky from Earth, it appears to us that the stars are moving around us. This motion, however, isn’t created by the stars themselves, but by the motions of our planet.To put it simply, the rotation of the Earth (east to west) makes the stars appear to be moving in the sky.\n\nStars do have their own movements, called proper motion, which happens due to gravity, since stars orbit around the center of their galaxies. However, most stars are so far away from us that we don’t even notice this phenomena.',backgroundimg: "files/LearningBackground.png",);
              }
              if(model.selectedLearning == 'zodiac') {
                return const PageStudy(title: 'WHAT IS THE ZODIAC?', subtitle: 'COMMING', text: 'SOON',backgroundimg: "files/LearningBackground.png",);
              }
              if(model.selectedLearning == 'bright') {
                return const PageStudy(title: 'STAR BRIGHTNESS VARIATION', subtitle: 'COMMING', text: 'SOON',backgroundimg: "files/LearningBackground.png",);
              }

return const Text('');
  }
}
