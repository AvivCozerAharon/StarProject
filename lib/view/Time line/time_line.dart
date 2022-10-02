import 'package:flutter/material.dart';
import 'package:star_project/controller/controllerNavegacao.dart';

import '../../../prefabs/button.dart';
import '../../../prefabs/estilo.dart';
import 'package:star_project/model/model.dart';

class TimeLine extends StatefulWidget {
  @override
  TimeLine_Estado createState() => TimeLine_Estado();
}

class TimeLine_Estado extends State<TimeLine> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Estilo.corPrimaria,
        appBar: AppBar(backgroundColor: Estilo.corPrimaria,),
        body: Center(
          child: Column(
            children: [
              Text('Preview|Comming Soon',style: TextStyle(color: Estilo.corSecundaria,fontSize: 20,fontFamily: Estilo.fonteTitulo),),
              SizedBox(height: 10,),
              Image.asset('files/timeline.png'),

            ],
          ),
          ),

      );
  }
}
