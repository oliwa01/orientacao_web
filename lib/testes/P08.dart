import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:intl/intl.dart';

import 'package:flutter_emoji/flutter_emoji.dart';
import 'package:wop3_ovp/descricao/perc_logicaf.dart';


import '../Home.dart';
import '../resultados/RESULTADOS.dart';





class P08 extends StatefulWidget {
  String _codAluno;
  P08(this._codAluno);
  @override
  _P08State createState() => _P08State();
}

class _P08State extends State<P08> {
  AnimationController controller;
  BorderRadiusGeometry _bR = BorderRadius.circular(8);
  String _dataTimeDb;

  //
  /*
 firebase

*/
  Firestore db = Firestore.instance;
  //

  void _gravaDb () {
    _carregaTab();
    if(_valorpergunta[1] == 1) {score_s ++;};
    if(_valorpergunta[2] == 1) {score_s ++;};
    if(_valorpergunta[3] == 3) {score_s ++;};
    if(_valorpergunta[4] == 4) {score_s ++;};
    if(_valorpergunta[5] == 1) {score_s ++;};
    if(_valorpergunta[6] == 2) {score_s ++;};
    if(_valorpergunta[7] == 2) {score_s ++;};
    if(_valorpergunta[8] == 2) {score_s ++;};
    if(_valorpergunta[9] == 3) {score_s ++;};
    if(_valorpergunta[10] == 4) {score_s ++;};
    if(_valorpergunta[11] == 1) {score_s ++;};
    if(_valorpergunta[12] == 1) {score_s ++;};
    if(_valorpergunta[13] == 4) {score_s ++;};
    if(_valorpergunta[14] == 4) {score_s ++;};
    if(_valorpergunta[15] == 4) {score_s ++;};
    if(_valorpergunta[16] == 3) {score_s ++;};
    if(_valorpergunta[17] == 2) {score_s ++;};
    if(_valorpergunta[18] == 2) {score_s ++;};
    if(_valorpergunta[19] == 2) {score_s ++;};
    if(_valorpergunta[20] == 1) {score_s ++;};
    if(_valorpergunta[21] == 4) {score_s ++;};
    if(_valorpergunta[22] == 3) {score_s ++;};
    if(_valorpergunta[23] == 1) {score_s ++;};
    if(_valorpergunta[24] == 4) {score_s ++;};
    if(_valorpergunta[25] == 3) {score_s ++;};
    if(_valorpergunta[26] == 2) {score_s ++;};

    DateTime now = DateTime.now();
    String _formattedDate = DateFormat('yyyy-MM-dd – kk:mm').format(now);
    _dataTimeDb = _formattedDate;
    db.collection("aluno")
        .document(widget._codAluno)
        .collection("Testes")
        .add(
        {
          "percepção_deducao" : score_s ,

          "Code":"PD1","Data-teste": _formattedDate,
          "P01" : _V01, "P02" : _V02, "P03" : _V03,"P04" : _V04,"P05" : _V05,"P06" : _V06,"P07" : _V07,"P08" : _V08,"P09" : _V09,"P10" : _V10,
          "P11" : _V11, "P12" : _V12, "P13" : _V13,"P14" : _V14,"P15" : _V15,"P16" : _V16,"P17" : _V17,"P18" : _V18,"P19" : _V19,"P20" : _V20,
          "P21" : _V21, "P22" : _V22, "P23" : _V23,"P24" : _V24,"P25" : _V25,"P26" : _V26
        }
    );}

//


//
  void _carregaTab() {
    _V01 = _valorpergunta[1];
    _V02 = _valorpergunta[2];
    _V03 = _valorpergunta[3];
    _V04 = _valorpergunta[4];
    _V05 = _valorpergunta[5];
    _V06 = _valorpergunta[6];
    _V07 = _valorpergunta[7];
    _V08 = _valorpergunta[8];
    _V09 = _valorpergunta[9];
    _V10 = _valorpergunta[10];
    _V11 = _valorpergunta[11];
    _V12 = _valorpergunta[12];
    _V13 = _valorpergunta[13];
    _V14 = _valorpergunta[14];
    _V15 = _valorpergunta[15];
    _V16 = _valorpergunta[16];
    _V17 = _valorpergunta[17];
    _V18 = _valorpergunta[18];
    _V19 = _valorpergunta[19];
    _V20 = _valorpergunta[20];
    _V21 = _valorpergunta[21];
    _V22 = _valorpergunta[22];
    _V23 = _valorpergunta[23];
    _V24 = _valorpergunta[24];
    _V25 = _valorpergunta[25];
    _V26 = _valorpergunta[26];


  }


  int _npergunta = 30;
  int _resultado = 0;
  int _tresultado = 0;
  int _numeroSorteado = 1;
  int _numeroAnterior = 0;
//
  int _V01 = 0;
  int _V02 = 0;
  int _V03 = 0;
  int _V04 = 0;
  int _V05 = 0;
  int _V06 = 0;
  int _V07 = 0;
  int _V08 = 0;
  int _V09 = 0;
  int _V10 = 0;
  int _V11 = 0;
  int _V12 = 0;
  int _V13 = 0;
  int _V14 = 0;
  int _V15 = 0;
  int _V16 = 0;
  int _V17 = 0;
  int _V18 = 0;
  int _V19 = 0;
  int _V20 = 0;
  int _V21 = 0;
  int _V22 = 0;
  int _V23 = 0;
  int _V24 = 0;
  int _V25 = 0;
  int _V26 = 0;
  int _V27 = 0;



  int score_s  = 0;

  //

  String _perguntatela = " ";
  var _valorpergunta = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0];
  var _pergunta = [
    ' ',
   "Este é para este, como este é para?",
    "Qual é o diferente?.",
    "Qual é o diferente?.",
    "Qual é o diferente?.",
    "Qual é o diferente?.",
   "Este é para este, como este é para?",
   "Este é para este, como este é para?",
    "Qual é o diferente?.",
    "Qual é o diferente?.",
   "Este é para este, como este é para?",
   "Este é para este, como este é para?",
    "Qual é o diferente?.",
   "Este é para este, como este é para?",
    "Qual é o diferente?.",
    "Qual é o diferente?.",
    "Qual é o diferente?.",
    "Qual é o diferente?.",
   "Este é para este, como este é para?",
    "Qual é o diferente?.",
    "Qual é o diferente?.",
   "Este é para este, como este é para?",
    "Qual é o diferente?.",
    "Qual é o diferente?.",
    "Qual é o diferente?.",
    "Qual é o diferente?.",
    "Qual é o diferente?.",


  ];

  bool _c1 = false;
  bool _c2 = false;
  bool _c3 = false;
  bool _c4 = false;
  bool _c5 = false;
  bool _c6 = false;
  bool _c7 = false;
  //
  int _TotalAutoEstima;
  int _TotalAnsiedade;
  int _TotalStress;
  int _TotalDispersao;
  int _TotalHiperatividade;
  int _TotalRelacionamentos;
  int _TotalDepressao;
  int _TotalLesao;
  //
  _montaResultado() {
    if      (_c1) { _resultado = 1;}
    else if (_c2) { _resultado = 2;}
    else if (_c3) { _resultado = 3;}
    else if (_c4) { _resultado = 4;}


    _valorpergunta[_numeroSorteado] =_resultado;

  }
  //
  _alteraResultado() {
    _numeroAnterior = _numeroSorteado - 1;
    if      (_valorpergunta[_numeroAnterior] == 0)  { _c1 = true;}
    else if (_valorpergunta[_numeroAnterior] == 1) { _c2 = true;}
    else if (_valorpergunta[_numeroAnterior] == 2) { _c3 = true;}
    else if (_valorpergunta[_numeroAnterior] == 3) { _c4 = true;}
    else if (_valorpergunta[_numeroAnterior] == 4) { _c5 = true;}
    else if (_valorpergunta[_numeroAnterior] == 5) { _c6 = true;}
    else if (_valorpergunta[_numeroAnterior] == 6) { _c7 = true;}
  }
  //
  void _limpaBotao () {
    print(_valorpergunta.toString());
    _c1 = _c2 = _c3 = _c4 = _c5 = _c6 = _c7 = false;
  }


//
  void _gerarPergunta () {
    //gerar numero randomicos
    setState(() {
      _perguntatela = _pergunta[_numeroSorteado];
      _npergunta = _numeroSorteado;
    });
  }
  //  Procedimento de finaliar o teste
  void _finalizaTeste() {

    _gravaDb();
    _tabulaResultados();
  }
  void _tabulaResultados() {


  }
  //
  @override
  void initState() {
    _gerarPergunta();
  }
  Widget build(BuildContext context) {
    final widthlua = MediaQuery.of(context).size.width;
    final heightlua = MediaQuery.of(context).size.height;

    double  font_adj =  (heightlua > 1600) ? heightlua / 35 :
    (heightlua > 1500)  ? heightlua / 36 :
    (heightlua > 1400)  ? heightlua / 37 :
    (heightlua > 1300)  ? heightlua / 38 :
    (heightlua > 1200)  ? heightlua / 38 :
    (heightlua > 1100)  ? heightlua / 39 :
    (heightlua > 1000)  ? heightlua / 39 :
    (heightlua > 900)  ? heightlua / 40 :
    (heightlua > 800)  ? heightlua / 45 :
    (heightlua > 700)  ? heightlua / 47 :
    (heightlua > 600)  ? heightlua / 50 :
    (heightlua > 500)  ? heightlua / 52 : heightlua / 60 ;

    double  fontpergunta =  (widthlua > 1600) ? widthlua / 37:
    (widthlua > 1500)  ? widthlua / 36 :
    (widthlua > 1400)  ? widthlua / 36 :
    (widthlua > 1300)  ? widthlua / 36 :
    (widthlua > 1200)  ? widthlua / 35 :
    (widthlua > 1100)  ? widthlua / 35:
    (widthlua > 1000)  ? widthlua / 35 :
    (widthlua > 900)  ? widthlua / 28:
    (widthlua > 800)  ? widthlua / 25 :
    (widthlua > 700)  ? widthlua / 23 :
    (widthlua > 600)  ? widthlua / 23 :
    (widthlua > 500)  ? widthlua / 24 : widthlua / 25 ;




    double padbox =  (heightlua > 1600) ? 5 :
    (heightlua > 1500)  ? 4 :
    (heightlua > 1400)  ? 3 :
    (heightlua > 1300)  ? 2 :
    (heightlua > 1200)  ? 2 :
    (heightlua > 1100)  ? 1 :
    (heightlua > 1000)  ? 1 :
    (heightlua > 900)  ? 1 :
    (heightlua > 800)  ? 1 :
    (heightlua > 700)  ? 1 :
    (heightlua > 600)  ? 1 :
    (heightlua > 500)  ? 1:  1 ;

    Color colorbar =  (_npergunta > (_pergunta.length * 0.95) ? Colors.green :
    (_npergunta > (_pergunta.length * 0.90) ? Colors.greenAccent :
    (_npergunta > (_pergunta.length * 0.80) ? Colors.lightGreenAccent :
    (_npergunta > (_pergunta.length * 0.70) ? Colors.yellowAccent:
    (_npergunta > (_pergunta.length * 0.60) ? Colors.yellow :
    (_npergunta > (_pergunta.length * 0.50) ? Colors.orangeAccent :
    (_npergunta > (_pergunta.length * 0.40) ? Colors.deepOrangeAccent :
    (_npergunta > (_pergunta.length * 0.30) ? Colors.orange :
    (_npergunta > (_pergunta.length * 0.20) ? Colors.deepOrange :
    (_npergunta > (_pergunta.length * 0.10) ? Colors.redAccent :
    (_npergunta > (_pergunta.length * 0.05) ? Colors.red : Colors.pink)))))))))));



    double  w05p = widthlua * 0.05;
    double  w20p = widthlua * 0.20;
    double  w30p = widthlua * 0.30;
    double  w80p = widthlua * 0.80;
    double  w90p = widthlua * 0.90;
    double  w100p = widthlua * 0.8;

    double  himage = heightlua * 0.45;


    double barranumerob = ((1 -(_npergunta / _pergunta.length))*100 );
    double  barranumerop = ((((_npergunta / _pergunta.length)-1)*100)+100);

    double  fontpercent  =
    ( barranumerop  < 1) ? font_adj * 0.1 :
    ( barranumerop  < 2) ? font_adj * 0.2 :
    ( barranumerop  < 3) ? font_adj * 0.3 :
    ( barranumerop  < 4) ? font_adj * 0.4 :
    ( barranumerop  < 5) ? font_adj * 0.5 :
    ( barranumerop  < 6) ? font_adj * 0.6 :
    ( barranumerop  < 7) ? font_adj * 0.7 :
    ( barranumerop  < 8) ? font_adj * 0.8 :
    ( barranumerop  < 9) ? font_adj * 0.9 :
    (barranumerop  < 10) ? font_adj * 0.95 : font_adj;

    double  hpergunta = heightlua * 0.20;
    double  hspace = heightlua * 0.02;
    double  hnumero = heightlua * 0.05;
    double  hpb = heightlua * 0.05;
    double  hbotao = heightlua * 0.07;
    double  hvolta = heightlua * 0.07;

    double  h80p = heightlua * 0.80;

    String perpergunta = barranumerop.toString();
    //
    String item_1 = "A.";
    String item_2 = "B";
    String item_3 = "C.";
    String item_4 = "D.";

    return Scaffold(
      body: Container(

        color: Colors.white,
        child: ListView(
          children: <Widget>[
            //
            // box numero
            //
            //
            Container(
                height: hnumero,
                child:Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        //
                        // numero pergunta
                        //
                        AnimatedContainer(
                            padding: EdgeInsets.only (top: 11),
                            width:   (w100p * (barranumerop / 100)),
                            height:  hnumero,
                            decoration: BoxDecoration(
                              color: colorbar,
                              borderRadius: _bR,
                            ),
                            alignment: Alignment.center,
                            duration: Duration(seconds: 1),
                            curve: Curves.elasticInOut,
                            child: Text(
                              barranumerop > 10 ?
                              (perpergunta.substring(0,2))+"%" :
                              (perpergunta.substring(0,1))+"%"
                              , textAlign: TextAlign.center,

                              style: TextStyle(
                                  fontSize: fontpercent,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold
                              ),
                            )
                        ),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        //
                        // numero pergunta
                        //
                        AnimatedContainer(
                            padding: EdgeInsets.only (top: 11),
                            width:   (w100p * (barranumerob / 100)),
                            height:  hnumero,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: _bR,
                            ),
                            alignment: Alignment.center,
                            duration: Duration(seconds: 1),
                            curve: Curves.elasticInOut
                        ),
                      ],
                    )
                  ],
                )),
            //space
            SizedBox(
                width: w90p,
                height: hpergunta,
                child:Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    //
                    //  pergunta
                    //
                    Column(children: <Widget>[
                      AnimatedContainer(
                        padding: EdgeInsets.all(11),
                        width:  w80p-30,
                        height: hpergunta,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: _bR,
                        ),
                        alignment: Alignment.center,
                        duration: Duration(seconds: 2),
                        curve: Curves.elasticInOut,
                        child: Text(_perguntatela, textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: fontpergunta,
                              color: Colors.black,
                              fontWeight: FontWeight.bold
                          ),),
                      )
                    ],),


                  ],
                )

            ),
            //space

            //
            Container(
              height: himage,
              child: SizedBox(
                child: Image.asset( (_npergunta == 1) ? "images/perc/p08_01.jpg":
                (_npergunta == 2) ? "images/perc/p08_02.jpg":
                (_npergunta == 3) ? "images/perc/p08_03.jpg":
                (_npergunta == 4) ? "images/perc/p08_04.jpg":
                (_npergunta == 5) ? "images/perc/p08_05.jpg":
                (_npergunta == 6) ? "images/perc/p08_06.jpg":
                (_npergunta == 7) ? "images/perc/p08_07.jpg":
                (_npergunta == 8) ? "images/perc/p08_08.jpg":
                (_npergunta == 9) ? "images/perc/p08_09.jpg":
                (_npergunta == 10) ? "images/perc/p08_10.jpg":
                (_npergunta == 11) ? "images/perc/p08_11.jpg":
                (_npergunta == 12) ? "images/perc/p08_12.jpg":
                (_npergunta == 13) ? "images/perc/p08_13.jpg":
                (_npergunta == 14) ? "images/perc/p08_14.jpg":
                (_npergunta == 15) ? "images/perc/p08_15.jpg":
                (_npergunta == 16) ? "images/perc/p08_16.jpg":
                (_npergunta == 17) ? "images/perc/p08_17.jpg":
                (_npergunta == 18) ? "images/perc/p08_18.jpg":
                (_npergunta == 19) ? "images/perc/p08_19.jpg":
                (_npergunta == 20) ? "images/perc/p08_20.jpg":
                (_npergunta == 21) ? "images/perc/p08_21.jpg":
                (_npergunta == 22) ? "images/perc/p08_22.jpg":
                (_npergunta == 23) ? "images/perc/p08_23.jpg":
                (_npergunta == 24) ? "images/perc/p08_24.jpg":
                (_npergunta == 25) ? "images/perc/p08_25.jpg":
                (_npergunta == 26) ? "images/perc/p08_26.jpg":
                "images/perc/p08_26.jpg"
                ),
              ),
            ),
            Row(
                children: <Widget>[
                  //
                  SizedBox(
                      width: hspace),
                  //
                  // a
                  //
                  SizedBox(
                      width: w20p,
                      height: hpb,
                      child:
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Column(children: <Widget>[
                            GestureDetector (

                                onTap:() {
                                  if (_c1 == false){
                                    setState(() {
                                      // _sc2 = _sc3 = _sc4 = _sc5 = true;
                                      _c1 = true;
                                      _c2 = _c3 = _c4 = _c5 =  _c6 = false;
                                      // _sc1 = false;
                                    });
                                  }else{
                                    setState(() {
                                      _c1 = _c2 = _c3 = _c4 = _c5 = _c6 = false;
                                    });
                                  }
                                },
                                child:
                                AnimatedContainer(
                                    padding: EdgeInsets.only(top : padbox),
                                    width: w20p,
                                    height: hpb,
                                    decoration: BoxDecoration(
                                      color: _c1 ? Colors.green: Colors.red,
                                      borderRadius: _bR,
                                    ),
                                    alignment: Alignment.center,
                                    duration: Duration(seconds: 3),
                                    curve: Curves.fastLinearToSlowEaseIn,
                                    child:
                                    Text(item_1,
                                      style: TextStyle(
                                          fontSize: font_adj,
                                          color: _c1 ? Colors.black : Colors.black,
                                          fontWeight: FontWeight.bold
                                      ),
                                    )
                                ))
                          ],)
                        ],
                      )
                  ),
                  //space
                  SizedBox(
                      width: w05p),
                  //
                  // b
                  //
                  SizedBox(
                      width: w20p,
                      height: hpb,
                      child:
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Column(children: <Widget>[
                            GestureDetector (

                                onTap:() {
                                  if (_c2 == false){
                                    setState(() {
                                      // _sc2 = _sc3 = _sc4 = _sc5 = true;
                                      _c2 = true;
                                      _c1 = _c3 = _c4 = _c5 = _c6 =  false;
                                      // _sc1 = false;
                                    });
                                  }else{
                                    setState(() {
                                      _c1 = _c2 =_c3 = _c4 = _c5 = _c6 =  false;
                                    });
                                  }
                                },
                                child:
                                AnimatedContainer(
                                    padding: EdgeInsets.only(top : padbox),
                                    width: w20p,
                                    height: hpb,
                                    decoration: BoxDecoration(
                                      color: _c2 ? Colors.green: Colors.red,
                                      borderRadius: _bR,
                                    ),
                                    alignment: Alignment.center,
                                    duration: Duration(seconds: 3),
                                    curve: Curves.fastLinearToSlowEaseIn,
                                    child:
                                    Text(item_2,
                                      style: TextStyle(
                                          fontSize: font_adj,
                                          color: _c2 ? Colors.black : Colors.black,
                                          fontWeight: FontWeight.bold
                                      ),
                                    )
                                ))
                          ],)
                        ],
                      )
                  ),
                  //space
                  SizedBox(
                      width: w05p),
                  //
                  // c
                  //
                  SizedBox(
                      width: w20p,
                      height: hpb,
                      child:
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Column(children: <Widget>[
                            GestureDetector (

                                onTap:() {
                                  if (_c3 == false){
                                    setState(() {
                                      // _sc2 = _sc3 = _sc4 = _sc5 = true;
                                      _c3 = true;
                                      _c1 = _c2 = _c4 = _c5 = _c6 =  false;
                                      // _sc1 = false;
                                    });
                                  }else{
                                    setState(() {
                                      _c1 = _c2 =_c3 = _c4 = _c5 = _c6 =  false;
                                    });
                                  }
                                },
                                child:
                                AnimatedContainer(
                                    padding: EdgeInsets.only(top : padbox),
                                    width: w20p,
                                    height: hpb,
                                    decoration: BoxDecoration(
                                      color: _c3 ? Colors.green: Colors.red,
                                      borderRadius: _bR,
                                    ),
                                    alignment: Alignment.center,
                                    duration: Duration(seconds: 3),
                                    curve: Curves.fastLinearToSlowEaseIn,
                                    child:
                                    Text(item_3,
                                      style: TextStyle(
                                          fontSize: font_adj,
                                          color: _c1 ? Colors.black : Colors.black,
                                          fontWeight: FontWeight.bold
                                      ),
                                    )
                                ))
                          ],)
                        ],
                      )
                  ),
                  //space
                  SizedBox(
                      width: w05p),
                  //
                  // d
                  //
                  SizedBox(
                      width: w20p,
                      height: hpb,
                      child:
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Column(children: <Widget>[
                            GestureDetector (

                                onTap:() {
                                  if (_c4 == false){
                                    setState(() {
                                      _c1 = _c2 =_c3 = _c5 = _c6 =  false;
                                      _c4 = true;
                                    });
                                  }else{
                                    setState(() {
                                      _c1 = _c2 =_c3 = _c4 = _c5 = _c6 =  false;
                                    });
                                  }
                                },
                                child:

                                AnimatedContainer(
                                    padding: EdgeInsets.only(top : padbox),
                                    width: w20p,
                                    height: hpb,
                                    alignment: Alignment.center,
                                    duration: Duration(seconds: 4),
                                    curve: Curves.fastLinearToSlowEaseIn,
                                    decoration: BoxDecoration(
                                      color: _c4 ? Colors.green: Colors.red,
                                      borderRadius: _bR,
                                    ),
                                    child:
                                    Text(item_4,
                                      style: TextStyle(
                                          fontSize: font_adj,
                                          color: _c4 ? Colors.black : Colors.black,
                                          fontWeight: FontWeight.bold
                                      ),
                                    )
                                ))
                          ],)
                        ],
                      )
                  )
                ] ),

            //space
            //
            // Botoes
            //
            //space
            SizedBox(
                height: w05p),
            SizedBox(

              height: hbotao,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: w30p,
                    height: hbotao,
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
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[

                            Text(
                              "Voltar",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 20,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                        onPressed: () {
                          if(_numeroSorteado == 1 ){
                            Navigator.push(context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        perc_logicaf(widget._codAluno)));
                          }else{
                            _limpaBotao();
                            _alteraResultado();
                            _numeroSorteado --;
                            _gerarPergunta();}
                        },
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Container(
                  ),
                  (_c1 || _c2 || _c3 || _c4 || _c5 || _c6 || _c7 ) ? Container(
                    width: w30p,
                    height: hbotao,
                    alignment: Alignment.centerLeft,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        stops: [0.3, 1],
                        colors: [
                          Color(0XFFF92B7F),
                          Color(0xFFF58524),
                        ],
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(5),
                      ),
                    ),
                    child: SizedBox.expand(
                      child: FlatButton(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              " Próxima",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 20,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                        onPressed: () {
                          _montaResultado();
                          if(_numeroSorteado == _pergunta.length -1) {

                            _finalizaTeste();
                            Navigator.push(context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        RESULTADOS(
                                            widget._codAluno,
                                            _TotalAutoEstima,
                                            _TotalAnsiedade,
                                            _TotalStress,
                                            _TotalDispersao,
                                            _TotalHiperatividade,
                                            _TotalRelacionamentos,
                                            _TotalDepressao,
                                            _TotalLesao)));
                          }else{
                            _limpaBotao();
                            _numeroSorteado ++;
                            _gerarPergunta();}
                        },
                      ),
                    ),
                  ):
                  Container(
                      width: w30p
                  ),
                ],
              ),
            ),
            SizedBox(
                height: w05p),
            SizedBox(
                width: w05p),
            Container(
              height: hvolta,
              alignment: Alignment.bottomCenter,
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
                            builder: (context) =>
                                Home(widget._codAluno)));
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
