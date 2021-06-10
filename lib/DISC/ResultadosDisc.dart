import 'package:date_format/date_format.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:path/path.dart';
import 'dart:math' as math;
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../Home.dart';
import 'GraficosDisc.dart';
class ResultadoDisc extends StatefulWidget {
  String _codAluno;
  int _valD;
  int _valI;
  int _valS;
  int _valC;
  int _valDantes;
  int _valIantes;
  int _valSantes;
  int _valCantes;
  ResultadoDisc(this._codAluno,this._valD,this._valI,this._valS,this._valC,this._valDantes,this._valIantes,this._valSantes,this._valCantes,);
  @override
  _ResultadoDiscState createState() => _ResultadoDiscState();
}

class _ResultadoDiscState extends State<ResultadoDisc> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 60, left: 40, right: 40),
        color: Colors.white,
        child: ListView(
          children: <Widget>[
            SizedBox(
              width: 40,
              height: 40,
              child: Image.asset("images/logo.png"),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 128,
              height: 260,
              child:SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                      children: <Widget>[
                        Text(" Relatório perfil Comportamental.\n\n"
                 "Desde de sempre, o homem busca compreender e classificar o comportamento humano com uma forma para melhor entende-lo.\n\n"
                  "Os gregos atribuíam aos quatro elementos básicos da natureza (fogo, água, terra e ar) a influência básica no comportamento das pessoas. A observação dessa natureza humana em quatro formas retrocede ainda mais no tempo. Em 500 a.C., o profeta Ezequiel via o homem corporificado em quatro criaturas viventes, cada uma com quatro faces (a de um leão, de um boi, de um homem e de uma águia).\n\n"
              "A igreja também escolheu ter quatro evangelhos no Novo Testamento, escritos por homens de quatro temperamentos diferentes: o espontâneo Marcos, o histórico Mateus, o espiritual João e o erudito Lucas. Ela dizia que “As criaturas viventes são quadriforme, e, portanto, o evangelho também é quadriforme.\n\n"
            "Hipócrates, pai da medicina Ocidental, por volta de 370 a.C, defendia que nosso temperamento é determinado pelo equilíbrio de quatro fluidos corpóreos essenciais:\n\n"
            "Sangue: alegre de temperamento.\n\n"
              "Bile. Se negra, somos sombrios de temperamento; se amarela, somos entusiásticos de temperamento.\n\n"
            "Fleuma: calmos de temperamento.\n\n"
              "Posteriormente, surgiram os conceitos: colérico, sanguíneo, fleumático e melancólico como tendências comportamentais das pessoas.\n\n"
              "Carl Gustav Jung, médico e psiquiatra suíço estudou os traços de personalidade, classificando os indivíduos em quatro tipos:\n\n"
              "Produtor, Sensitivo, Intuitivo e Analítico\n\n"
            "Seguindo estes estudos e linhas de pesquisas o psicólogo norte-americano William Moulton Marston, no início dos anos 20, construiu o modelo DISC — que são as iniciais:\n\n"
                  "Dominância: A ênfase está em moldar o ambiente superando oposições para alcançar resultados.\n\n"
                  "Influência: A ênfase está em moldar o ambiente influenciando e persuadindo os demais.\n\n"
                  "Estabilidade: A ênfase está em trabalhar conscientemente dentro das circunstâncias existentes para assegurar qualidade e precisão.\n\n"
                  "Cautela:  A ênfase está em trabalhar conscientemente dentro das circunstâncias existentes para assegurar qualidade e precisão.\n\n"
                    "Ao ler o relatório, tenha em mente que nenhuma dimensão ou perfil Comportamental é melhor ou pior do que qualquer outro e não há respostas certas ou erradas. O relatório mostra as suas reações ao seu ambiente. Analise com seu terapeuta ou Coaching qual melhor forma de potencializar os seus talentos, e como lidar com seus pontos de melhora.\n\n",

                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold,),textAlign: TextAlign.center, )
                        ,]
                  )
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              height: 60,
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: [0.3, 1],
                  colors: [
                    Color(0xFFF58524),
                    Color(0XFFF92B7F),
                  ],
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(5),
                ),
              ),
              child: SizedBox.expand(
                child: FlatButton(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[

                      Container(
                        child: SizedBox(
                          child: Image.asset("images/logo.png"),
                          height: 28,
                          width: 28,
                        ),
                      ),
                      Text(
                        "Resultado do seu - D I S C",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 15,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  onPressed: () {

                    Navigator.push(context,
                        MaterialPageRoute(
                            builder: (context) =>
                                GraficosDisc(widget._codAluno,widget._valD,widget._valI,widget._valS,widget._valC,widget._valDantes,widget._valIantes,widget._valSantes,widget._valCantes)));
                  },
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 60,
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(
                color: Color(0xFF3C5A99),
                borderRadius: BorderRadius.all(
                  Radius.circular(5),
                ),
              ),
              child: SizedBox.expand(
                child: FlatButton(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Text(
                        "Voltar Menu ",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 20,
                        ),
                        textAlign: TextAlign.left,
                      )
                    ],
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(
                            builder: (context) => Home(widget._codAluno)
                        ));
                  },
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
