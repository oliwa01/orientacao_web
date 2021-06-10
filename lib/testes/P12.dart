import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:intl/intl.dart';

import 'package:flutter_emoji/flutter_emoji.dart';

import '../DiagnosticoEmocional.dart';
import '../Home.dart';
import '../resultados/RESULTADOS.dart';


class P12 extends StatefulWidget {
  String _codAluno;
  P12(this._codAluno);
  @override
  _P12State createState() => _P12State();
}

class _P12State extends State<P12> {
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
    score_controla = (_V02 + _V03 + _V07 + _V09 + _V10 + _V12 + _V15 + _V17 + _V18 + _V19 + _V21 + _V24 + _V28 + _V29 + _V30 + _V32 + _V35 + _V37 + _V38 + _V39 + _V40);

    DateTime now = DateTime.now();
    String _formattedDate = DateFormat('yyyy-MM-dd – kk:mm').format(now);
    _dataTimeDb = _formattedDate;
    db.collection("aluno")
        .document(widget._codAluno)
        .collection("Testes")
        .add(
        {
          "Controla" : score_controla ,
          "Code":"D12","Data-teste": _formattedDate,
          "P01" : _V01, "P02" : _V02, "P03" : _V03,"P04" : _V04,"P05" : _V05,"P06" : _V06,"P07" : _V07,"P08" : _V08,"P09" : _V09,"P10" : _V10,
          "P11" : _V11, "P12" : _V12, "P13" : _V13,"P14" : _V14,"P15" : _V15,"P16" : _V16,"P17" : _V17,"P18" : _V18,"P19" : _V19,"P20" : _V20,
          "P21" : _V21, "P22" : _V22, "P23" : _V23,"P24" : _V24,"P25" : _V25,"P26" : _V26,"P27" : _V27,"P28" : _V28,"P29" : _V29,"P30" : _V30,
          "P31" : _V31, "P32" : _V32, "P33" : _V33,"P34" : _V34,"P35" : _V35,"P36" : _V36,"P37" : _V37,"P38" : _V38,"P39" : _V39,"P40" : _V40,
          "P41" : _V41, "P42" : _V42, "P43" : _V43
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
    _V27 = _valorpergunta[27];
    _V28 = _valorpergunta[28];
    _V29 = _valorpergunta[29];
    _V30 = _valorpergunta[30];
    _V31 = _valorpergunta[31];
    _V32 = _valorpergunta[32];
    _V33 = _valorpergunta[33];
    _V34 = _valorpergunta[34];
    _V35 = _valorpergunta[35];
    _V36 = _valorpergunta[36];
    _V37 = _valorpergunta[37];
    _V38 = _valorpergunta[38];
    _V39 = _valorpergunta[39];
    _V40 = _valorpergunta[40];
    _V41 = _valorpergunta[41];
    _V42 = _valorpergunta[42];
    _V43 = _valorpergunta[43];
    _V44 = _valorpergunta[44];
    _V45 = _valorpergunta[45];
    _V46 = _valorpergunta[46];
    _V47 = _valorpergunta[47];
    _V48 = _valorpergunta[48];
    _V49 = _valorpergunta[49];
    _V50 = _valorpergunta[50];
  }


  int _npergunta = 60;
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
  int _V28 = 0;
  int _V29 = 0;
  int _V30 = 0;
  int _V31 = 0;
  int _V32 = 0;
  int _V33 = 0;
  int _V34 = 0;
  int _V35 = 0;
  int _V36 = 0;
  int _V37 = 0;
  int _V38 = 0;
  int _V39 = 0;
  int _V40 = 0;
  int _V41 = 0;
  int _V42 = 0;
  int _V43 = 0;
  int _V44 = 0;
  int _V45 = 0;
  int _V46 = 0;
  int _V47 = 0;
  int _V48 = 0;
  int _V49 = 0;
  int _V50 = 0;

  int  score_controla = 0;



  //

  String _perguntatela = " ";
  var _valorpergunta = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,00,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0];
  var _pergunta = [
    " ",
    "Sou facilmente despertado pelo barulho.",
    "Quando é hora de tomar uma decisão importante de comprar algo, eu costumo tomar essa decisão.",
    "Quando é hora de tomar uma decisão importante mudar algo, Eu costumo tomar essa decisão.",
    "Meu dia a dia é cheio de coisas que são interessantes.",
    "Eu gosto de histórias de detetive ou mistério.",
    "Eu trabalho sob muita tensão.",
    "Quando é hora de disciplinar , eu too essa decisão.",
    "Ninguém parece me entender.",
    "Quando é hora de decidir sobre eventos sociais com amigos ou família, eu costumo tomar essa decisão.",
    "Eu gosto de mandar.",
    "Às vezes eu tenho vontade de xingar.",
    "Eu gosto de ter a última palavra.",
    "Acho difícil focar minha mente em uma tarefa.",
    "Às vezes eu sinto vontade de esmagar coisas.",
    "Eu gosto de saber os detalhes sobre o conversas de outras pessoas.",
    "Nem sempre digo a verdade.",
    "Eu gosto de ter regras para lidar com as situações.",
    "Eu gosto de monitorar outras pessoas para ter certeza de que as coisas são indo do jeito que deveriam ser.",
    "Gosto de ter certeza de que tudo vai de acordo com o plano.",
    "Eu sou um bom papo (boa coversa).",
    "Gosto de liderar conversas ou discussões em grupo.",
    "Eu sou querido pela maioria das pessoas.",
    "Eu fico com raiva às vezes.",
    "Eu posso estar inclinado a interromper as pessoas se elas não estão respondendoda maneira que deveriam ser.",
    "Acho que a maioria das pessoas mentiria para seguir em frente.",
    "Me falta autoconfiança.",
    "Eu sou uma pessoa importante.",
    "Eu tenho uma tendência a manipular, manobrar ou controlar outras pessoas.",
    "Sou um bom líder, mas não particularmente um bom seguidor.",
    "Gosto de dar instruções sobre direção ou outras atividades.",
    "Estou feliz na maioria das vezes.",
    "Eu sou uma pessoa que, gosta de decidir onde comer, que filme assistir, etc.",
    "Minhas batalhas mais difíceis são comigo mesmo.",
    "Eu pareço ser tão capaz e inteligente quanto a maioria dos outros ao meu redor.",
    "Eu costumo superestruturar o tempo espontâneo, como férias, etc. e transformá-los em eventos controlados.",
    "Eu me sinto inútil às vezes.",
    "Eu tenho ideias sobre controlar outras coisas , como a quantidade de comida que eles deve ter em seu prato, etc.",
    "Sou visto por parentes como sendo um membro dominante da família.",
    "Eu sou o único que geralmente decide qual canal da TV assistir.",
    "Eu sou o único que geralmente controla o ar condicionado da Casa.",
    "Crítica ou bronca me machuca terrivelmente.",
    "Eu prefiro ganhar do que perder em um jogo.",
    "Eu não me canso rapidamente.",

  ];
  bool _s1 = false;
  bool _c1 = false;
  bool _c2 = false;
  bool _c3 = false;
  bool _c4 = false;
  bool _c5 = false;
  bool _c6 = false;
  bool _c7 = false;
  bool _sc1 = false;
  bool _sc2 = false;
  bool _sc3 = false;
  bool _sc4 = false;
  bool _sc5 = false;
  bool _sc6 = false;
  bool _sc7 = false;
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
  double N1 = 6.6;
  double N2 = 8.6;
  double N3 = 7.9;
  double N4 = 3.6;
  double N5 = 9;
  double N6 = 6.7;
  double N7 = 4.4;
  double N8 = 7.8;
  double N9 = 8.5;
  double N10 = 8.1;
  double N11 = 1.4;
  double N12 = 1;
  double N13 = 8.5;
  double N14 = 2.8;
  double N15 = 7.8;
  double N16 = 7.4;
  double N17 = 4.5;
  double N18 = 8.2;
  double N19 = 6.4;
  double N20 = 3.1;
  double N21 = 1.1;
  double N22 = 1.3;
  double N23 = 1.9;
  double N24 = 8.2;
  double N25 = 7;
  double N26 = 5.7;
  double N27 = 1;
  double N28 = 6.8;
  double N29 = 7;
  double N30 = 6.4;
  double N31 = 1.1;
  double N32 = 7.9;
  double N33 = 6;
  double N34 = 1.4;
  double N35 = 5.2;
  double N36 = 4.7;
  double N37 = 4.8;
  double N38 = 1.1;
  double N39 = 3.7;
  double N40 = 8.1;
  double N41 = 1.5;
  double N42 = 8.5;
  double N43 = 8.2;
  double N44 = 6.9;
  double N45 = 1.1;
  double N46 = 6.8;
  double N47 = 1;
  double N48 = 6.7;
  double N49 = 5.9;
  double N50 = 6.1;
  double N51 = 7.2;
  double N52 = 7.7;
  double N53 = 7.5;
  double N54 = 7.5;
  double N55 = 7.3;
  double N56 = 4.6;
  double N57 = 3.1;
  double N58 = 6.3;
  double N59 = 6.7;
  double N60 = 6.4;

  _montaResultado() {
    if      (_c1) { _resultado = 1;}
    else  { _resultado = 0;}
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
    (heightlua > 900)  ? heightlua / 30 :
    (heightlua > 800)  ? heightlua / 35 :
    (heightlua > 700)  ? heightlua / 30 :
    (heightlua > 600)  ? heightlua / 30 :
    (heightlua > 500)  ? heightlua / 30 : heightlua / 30 ;

    double  fontpergunta =  (widthlua > 1600) ? widthlua / 28:
    (widthlua > 1500)  ? widthlua / 25 :
    (widthlua > 1400)  ? widthlua / 25 :
    (widthlua > 1300)  ? widthlua / 25 :
    (widthlua > 1200)  ? widthlua / 25 :
    (widthlua > 1100)  ? widthlua / 25:
    (widthlua > 1000)  ? widthlua / 24 :
    (widthlua > 900)  ? widthlua / 24:
    (widthlua > 800)  ? widthlua / 24 :
    (widthlua > 700)  ? widthlua / 20 :
    (widthlua > 600)  ? widthlua / 20 :
    (widthlua > 500)  ? widthlua / 20 : widthlua / 20;




    double padbox =  (heightlua > 1600) ? 25 :
    (heightlua > 1500)  ? 24 :
    (heightlua > 1400)  ? 23 :
    (heightlua > 1300)  ? 22 :
    (heightlua > 1200)  ? 22 :
    (heightlua > 1100)  ? 21 :
    (heightlua > 1000)  ? 20 :
    (heightlua > 900)  ? 20 :
    (heightlua > 800)  ? 18 :
    (heightlua > 700)  ?18 :
    (heightlua > 600)  ?18 :
    (heightlua > 500)  ?18 : 18 ;

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



    double  w10p = widthlua * 0.10;
    double  w20p = widthlua * 0.20;
    double  w30p = widthlua * 0.30;
    double  w40p = widthlua * 0.40;
    double  w50p = widthlua * 0.50;
    double  w60p = widthlua * 0.60;
    double  w70p = widthlua * 0.70;
    double  w80p = widthlua * 0.80;
    double  w90p = widthlua * 0.90;
    double  w100p = widthlua * 0.8;


    double barranumerob = ((1 -(_npergunta / _pergunta.length))*100 );
    double  barranumerop = ((((_npergunta / _pergunta.length)-1)*100)+100);

    double  fontpercent  =
    ( barranumerop  < 5) ? font_adj * 0.3:
    ( barranumerop  < 8) ? font_adj * 0.4 :
    ( barranumerop  < 11) ? font_adj * 0.5 :
    ( barranumerop  < 15) ? font_adj * 0.6 :
    ( barranumerop  < 17) ? font_adj * 0.7 :
    ( barranumerop  < 19) ? font_adj * 0.8 :
    (barranumerop  < 22) ? font_adj * 0.9 : font_adj;

    double  h10p = heightlua * 0.05;
    double  hpergunta = heightlua * 0.26;
    double  hspace = heightlua * 0.05;
    double  hnumero = heightlua * 0.1;
    double  hpb = heightlua * 0.1;
    double  hbotao = heightlua * 0.05;
    double  hvolta = heightlua * 0.1;

    double  h80p = heightlua * 0.80;

    String perpergunta = barranumerop.toString();

    return Scaffold(
      body: Container(
        color: Colors.white,
        child: ListView(
          children: <Widget>[
            SizedBox(
                height: hspace / 2),
            //
            // box numero
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
            SizedBox(
                height: hspace),

            //
            // NUNCA
            //
            SizedBox(
                width: w30p,
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
                                _c2 = false;
                                // _sc1 = false;
                              });
                            }else{
                              setState(() {
                                _c1 = _c2 = false;
                              });
                            }
                          },
                          child:
                          AnimatedContainer(
                              padding: EdgeInsets.only(top : padbox ),
                              width: w40p,
                              height: hpb,
                              decoration: BoxDecoration(
                                color: _c1 ? Colors.green: Colors.red,
                                borderRadius: _bR,
                              ),
                              alignment: _c1 ? Alignment.center : AlignmentDirectional.topCenter,
                              duration: Duration(seconds: 3),
                              curve: Curves.fastLinearToSlowEaseIn,
                              child:
                              Text("VERDADEIRO",
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
                height: hspace),
            //
            // nao
            //
            SizedBox(
                width: w40p,
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
                                _c1 = false;
                                // _sc1 = false;
                              });
                            }else{
                              setState(() {
                                _c1 = _c2 = false;
                              });
                            }
                          },
                          child:
                          AnimatedContainer(
                              padding: EdgeInsets.only(top : padbox),
                              width: w40p,
                              height: hpb,
                              decoration: BoxDecoration(
                                color: _c2 ? Colors.green: Colors.red,
                                borderRadius: _bR,
                              ),
                              alignment: _c2 ? Alignment.center : AlignmentDirectional.topCenter,
                              duration: Duration(seconds: 3),
                              curve: Curves.fastLinearToSlowEaseIn,
                              child:
                              Text("FALSO",
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
                height: hspace ),
            //
            // Botoes
            //
            //space
            SizedBox(
                height: hspace),
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
                                        Auto_Estima(widget._codAluno)));
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
                  (_c1 || _c2 ) ? Container(
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
            //space
            SizedBox(
                height: hspace),
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
