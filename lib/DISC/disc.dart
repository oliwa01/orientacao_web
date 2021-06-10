import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:intl/intl.dart';

import '../Home.dart';
import 'ResultadosDisc.dart';

class Disc extends StatefulWidget {
  String _codAluno;
  Disc(this._codAluno);
  @override
  _DiscState createState() => _DiscState();
}

class _DiscState extends State<Disc> {
  AnimationController controller;
  BorderRadiusGeometry _bR = BorderRadius.circular(8);

  var _dadoslabel1 = [    " ",    " ",    " ",    " ",    " ",    " ",    " ",    " ",    " ",    " ",    " ",    " ",    " ",    " ",    " ",    " ",    " ",    " ",    " ",    " ",    " ",    " ",    " ",    " ",    " ",    " ",    " ",    " ",    " ",   " "  ];
  var _dadoslabel2 = [    " ",    " ",    " ",    " ",    " ",    " ",    " ",    " ",    " ",    " ",    " ",    " ",    " ",    " ",    " ",    " ",    " ",    " ",    " ",    " ",    " ",    " ",    " ",    " ",    " ",    " ",    " ",    " ",    " ",   " "  ];
  var _dadoslabel3 = [    " ",    " ",    " ",    " ",    " ",    " ",    " ",    " ",    " ",    " ",    " ",    " ",    " ",    " ",    " ",    " ",    " ",    " ",    " ",    " ",    " ",    " ",    " ",    " ",    " ",    " ",    " ",    " ",    " ",   " "  ];
  var _dadoslabel4 = [    " ",    " ",    " ",    " ",    " ",    " ",    " ",    " ",    " ",    " ",    " ",    " ",    " ",    " ",    " ",    " ",    " ",    " ",    " ",    " ",    " ",    " ",    " ",    " ",    " ",    " ",    " ",    " ",    " ",   " "  ];
  //
  //
  //
  var _valorMais  = [0,3,2,1,4,2,4,2,1,4,1,3,4,4,2,2,1,2,1,2,2,4,2,2,4,3,3,2,4]  ;
  var _valorMenos = [0,4,3,2,1,3,2,1,2,1,3,4,1,3,1,1,4,4,3,4,4,1,4,1,1,1,2,4,2]  ;
  //  Tabelas verificação DISC MAIS
  var _tabMaisD  =  [0,2,2,3,4,1,5,3,4,4,1,3,4,1,3,3,2,3,2,1,4,4,3,3,3,1,3,1,2];
  var _tabMaisI  =  [0,1,3,1,1,3,2,1,1,3,2,4,1,3,4,1,4,1,4,2,1,3,1,1,1,4,1,3,3];
  var _tabMaisS  =  [0,4,4,5,3,4,1,5,3,2,3,2,2,2,2,4,3,2,1,3,2,2,4,4,2,3,4,2,4];
  var _tabMaisC  =  [0,3,1,2,2,2,5,2,2,1,5,1,3,4,1,2,1,4,3,5,5,1,2,2,4,2,2,4,1];
  //  Tabelas verificação DISC MENOS
  var _tabMenosD  = [0,2,2,3,4,1,4,3,4,4,1,3,4,1,3,3,2,3,5,1,4,4,3,3,3,1,3,1,2];
  var _tabMenosI  = [0,1,3,5,1,3,5,1,1,3,2,4,1,3,4,1,4,1,4,2,1,3,1,1,1,4,1,3,3];
  var _tabMenosS  = [0,4,5,4,3,4,1,4,3,2,3,2,2,2,2,4,3,2,1,3,2,2,4,4,2,3,4,2,4];
  var _tabMenosC  = [0,3,1,2,2,2,3,2,5,1,4,1,3,4,1,5,1,4,3,4,3,1,2,2,4,2,2,4,1];

  // totais antes de subtrais Mais de Menos
  int _totDMais = 0;
  int _totIMais = 0;
  int _totSMais = 0;
  int _totCMais = 0;
  //
  int _totDMenos = 0;
  int _totIMenos = 0;
  int _totSMenos = 0;
  int _totCMenos = 0;
  //
  // Valores de Disc Para pesquiva na Tabela PontosDisc
  int _valDAntes = 0;
  int _valIAntes = 0;
  int _valSAntes = 0;
  int _valCAntes = 0;
  //
  // Valor final  de Disc
  int _valD = 0;
  int _valI = 0;
  int _valS = 0;
  int _valC = 0;
  //
  //

  int _nroDISC = 0;

  /*
 firebase

*/
  Firestore db = Firestore.instance;

  //

//
  void _iniciaDbAdjetivos() async {
    int i =0;
    QuerySnapshot querySnapshot = await db
        .collection("Disc")
        .document("tabelas")
        .collection("Adjetivos")
        .getDocuments();
    for (DocumentSnapshot item in querySnapshot.documents) {
      var dados = item.data;
      i++;
      _dadoslabel1[i] = dados["label1"];
      _dadoslabel2[i] = dados["label2"];
      _dadoslabel3[i] = dados["label3"];
      _dadoslabel4[i] = dados["label4"];
    }
    setState(() {
    _label1 = _dadoslabel1[1];
    _label2 = _dadoslabel2[1];
    _label3 = _dadoslabel3[1];
    _label4 = _dadoslabel4[1];
    });
  }

//

  //
  int _npergunta = 0;
  int _numeroSorteado = 1;
//
  int _valorRecebido1 = 0;
  int _valorRecebido2 = 0;

  int _V01mais = 0;
  int _V01menos = 0;

  //
  String _valor1 = "1";
  String _valor2 = "2";
  String _valor3 = "3";
  String _valor4 = "4";

  //

  String _perguntatela =
      "Na Lista Baixo escolha os adjetivos que MAIS e Menos te qualifiquem, arrastando-os para o box indicado.";
  var _valormais = 0;
  var _valormenos = 0;
  var _pergunta = "1";

  bool _s1 = false;
  bool _s2 = false;
  bool _s3 = true;
  bool _c1 = false;
  bool _c2 = false;

  //
  bool _visible1 = true;
  bool _visible2 = true;
  bool _visible3 = true;
  bool _visible4 = true;

  //
  bool _areadrop1 = false;
  bool _areadrop2 = false;

  //
  Color caughtColor1 = Colors.grey;
  Color caughtColor2 = Colors.grey;

  String caughtLabel1 = " ";
  String caughtLabel2 = " ";

  Color _azul = Colors.blueAccent;
  Color _laranja = Colors.orange;
  Color _verde = Colors.green;
  Color _vermelho = Colors.red;

  Offset position = Offset(0.0, 0.0);
  //
  String _label1 = "LABEL 01";
  String _label2 = "LABEL 02";
  String _label3 = "LABEL 03";
  String _label4 = "LABEL 04";
  //
  bool _tela1 = true;
  bool _tela2 = true;
  //
  void _limpaBotao() {
    _c1 = _c2 = false;
    _areadrop1 = false;
    _areadrop2 = false;
  }
  //
  void _gerarPergunta() {
    setState(() {
      _npergunta = _numeroSorteado;
      _label1 = _dadoslabel1[_numeroSorteado];
      _label2 = _dadoslabel2[_numeroSorteado];
      _label3 = _dadoslabel3[_numeroSorteado];
      _label4 = _dadoslabel4[_numeroSorteado];
    });
  }
  void _validaRecebeMais (String valor) {
    if (valor == "1") {
      _valorMenos[_numeroSorteado] = 1;
      setState(() {
        if (caughtColor1 == _laranja) {_visible2 = true;}
        if (caughtColor1 == _verde) {_visible3 = true;}
        if (caughtColor1 == _vermelho) {_visible4 = true;}
      });
      caughtColor1 = _azul;
      caughtLabel1 = _label1;
    } else if (valor == "2") {
      _valorMenos[_numeroSorteado] = 2;
      setState(() {
        if (caughtColor1 == _azul) {_visible1 = true;}
        if (caughtColor1 == _verde) {_visible3 = true;}
        if (caughtColor1 == _vermelho) {_visible4 = true;}
      });
      caughtColor1 = _laranja;
      caughtLabel1 = _label2;
    } else if (valor == "3") {
      _valorMenos[_numeroSorteado] = 3;
      setState(() {
        if (caughtColor1 == _azul) {_visible2 = true;}
        if (caughtColor1 == _laranja) {_visible2 = true;}
        if (caughtColor1 == _vermelho) {_visible4 = true;}
      });
      caughtColor1 = _verde;
      caughtLabel1 = _label3;
    }
    else if (valor == "4") {
      _valorMenos[_numeroSorteado] = 4;
        setState(() {
        if (caughtColor1 == _azul) {_visible1 = true;}
        if (caughtColor1 == _laranja) {_visible2 = true;}
        if (caughtColor1 == _verde) {_visible3 = true;}
      });
      caughtColor1 = _vermelho;
      caughtLabel1 = _label4;
    }
  }
  //
  void _validaRecebeMenos (String valor) {
    if (valor == "1") {
      _valorMais[_numeroSorteado] = 1;
      setState(() {
        _visible1 = false;
        if (caughtColor2 == _laranja) {_visible2 = true;}
        if (caughtColor2 == _verde) {_visible3 = true;}
        if (caughtColor2 == _vermelho) {_visible4 = true;}
      });
      caughtColor2 = _azul;
      caughtLabel2 = _label1;
    } else
      //
      if (valor == "2") {
      _valorMais[_numeroSorteado] = 2;
      setState(() {
        if (caughtColor2 == _azul) {_visible1 = true;}
        if (caughtColor2 == _verde) {_visible3 = true;}
        if (caughtColor2 == _vermelho) {_visible4 = true;}
      });
      caughtColor2 = _laranja;
      caughtLabel2 = _label2;
    } else
      //
      if (valor == "3") {
      _valorMais[_numeroSorteado] = 3;
      setState(() {
        if (caughtColor2 == _azul) {_visible1 = true;}
        if (caughtColor2 == _laranja) {_visible2 = true;}
        if (caughtColor2 == _vermelho) {_visible4 = true;}
      });
      caughtColor2 = _verde;
      caughtLabel2 = _label3;
    } else
      //
      if (valor == "4") {
      _valorMais[_numeroSorteado] = 4;
      setState(() {
        if (caughtColor2 == _azul) {_visible1 = true;}
        if (caughtColor2 == _laranja) {_visible2 = true;}
        if (caughtColor2 == _verde) {_visible3 = true;}
      });
      caughtColor2 = _vermelho;
      caughtLabel2 = _label4;
    }
  }
  //
  void _contabilizar() async {
    for (int i = 1; i < 29; i++) {
      if (_valorMais[i] == _tabMaisD[i]) {
        _totDMais++;
      }
      if (_valorMais[i] == _tabMaisI[i]) {
        _totIMais++;
      }
      if (_valorMais[i] == _tabMaisS[i]) {
        _totSMais++;
      }
      if (_valorMais[i] == _tabMaisC[i]) {
        _totCMais++;
      }
      //
      if (_valorMenos[i] == _tabMenosD[i]) {
        _totDMenos++;
      }
      if (_valorMenos[i] == _tabMenosI[i]) {
        _totIMenos++;
      }
      if (_valorMenos[i] == _tabMenosS[i]) {
        _totSMenos++;
      }
      if (_valorMenos[i] == _tabMenosC[i]) {
        _totCMenos++;
      }
    }
    _valDAntes = _totDMais - _totDMenos;
    _valIAntes = _totIMais - _totIMenos;
    _valSAntes = _totSMais - _totSMenos;
    _valCAntes = _totCMais - _totCMenos;
//  Calcula Valor Final de D
    if (_valDAntes >= 6) {
      _valD = 7;
    } else if ((_valDAntes <= 5) && (_valDAntes >= 0)) {
      _valD = 6;
    } else if ((_valDAntes <= -1) && (_valDAntes >= -4)) {
      _valD = 5;
    } else if ((_valDAntes <= -5) && (_valDAntes >= -7)) {
      _valD = 4;
    } else if ((_valDAntes <= -8) && (_valDAntes >= -11)) {
      _valD = 3;
    } else if ((_valDAntes <= -12) && (_valDAntes >= -14)) {
      _valD = 2;
    } else if (_valDAntes <= -15) {
      _valD = 1;
    }



    //  Calcula Valor Final de i
    if (_valIAntes >= 8) {
      _valI = 7;
    } else if ((_valIAntes <= 7) && (_valIAntes >= 6)) {
      _valI = 6;
    } else if ((_valIAntes <= 5) && (_valIAntes >= 3)) {
      _valI = 5;
    } else if ((_valIAntes <= 2) && (_valIAntes >= 1)) {
      _valI = 4;
    } else if ((_valIAntes <= 0) && (_valIAntes >= -2)) {
      _valI = 3;
    } else if ((_valIAntes <= -3) && (_valIAntes >= -5)) {
      _valI = 2;
    } else if (_valIAntes <= -6) {
      _valI = 1;
    }

    //  Calcula Valor Final de S
    if (_valSAntes >= 12) {
      _valS = 7;
    } else if ((_valSAntes <= 11) && (_valSAntes >= 9)) {
      _valS = 6;
    } else if ((_valSAntes <= 8) && (_valSAntes >= 6)) {
      _valS = 5;
    } else if ((_valSAntes <= 5) && (_valSAntes >= 3)) {
      _valS = 4;
    } else if ((_valSAntes <= 2) && (_valSAntes >= 0)) {
      _valS = 3;
    } else if ((_valSAntes <= -1) && (_valSAntes >= -4)) {
      _valS = 2;
    } else if (_valSAntes <= -5) {
      _valS = 1;
    }

    //  Calcula Valor Final de C
    if (_valCAntes >= 6) {
      _valC = 7;
    } else if ((_valCAntes <= 5) && (_valCAntes >= 3)) {
      _valC = 6;
    } else if ((_valCAntes <= 2) && (_valCAntes >= 0)) {
      _valC = 5;
    } else if ((_valCAntes <= -1) && (_valCAntes >= -2)) {
      _valC = 4;
    } else if ((_valCAntes <= -3) && (_valCAntes >= -5)) {
      _valC = 3;
    } else if ((_valCAntes <= -6) && (_valCAntes >= -8)) {
      _valC = 2;
    } else if (_valCAntes <= -9) {
      _valC = 1;
    }

   // _nroDISC = ((_valD * 1000) + (_valI * 100) + (_valS * 10) + (_valC));

    DateTime now = DateTime.now();
    String formattedDate = DateFormat('yyyy-MM-dd – kk:mm').format(now);

    db.collection("aluno")
        .document("001")
        .collection("Testes")
        .add(
        {
          "Teste-Code":"DI","Teste":"DISC","data-teste": formattedDate,"valD" : _valD, "valI" : _valI,"valS" : _valS,"valC" : _valC,
          "valantesD" : _valDAntes,"valantesI" : _valIAntes,"valantesS" : _valSAntes,"valantesC" : _valCAntes,
        });

    }


  //
  @override
  void initState() {
    setState(() {
      _numeroSorteado = 1;
      _npergunta = 1;
      _iniciaDbAdjetivos();
     // _gerarPergunta();
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 5, left: 40, right: 40),
        color: Colors.white,
        child: ListView(
          children: <Widget>[

            SizedBox(
              height: 10,
            ),
            //
            // box PERGUNTA
            //
            //
            SizedBox(
                width: 228,
                height: 100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        //
                        // numero pergunta
                        //
                        AnimatedContainer(
                            padding: EdgeInsets.only(top: 11),
                            width: _s1 ? 0.0 : 50.0,
                            height: _s1 ? 0.0 : 50.0,
                            decoration: BoxDecoration(
                              color: _s1 ? Colors.white : Colors.pink,
                              borderRadius: _bR,
                            ),
                            alignment: _s1
                                ? Alignment.center
                                : AlignmentDirectional.topCenter,
                            duration: Duration(seconds: 1),
                            curve: Curves.elasticInOut,
                            child: Text(
                              _npergunta.toString(),
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            )),
                        AnimatedContainer(
                            padding: EdgeInsets.only(top: 11),
                            width: _s1 ? 0.0 : 50.0,
                            height: _s1 ? 0.0 : 50.0,
                            decoration: BoxDecoration(
                              color: _s1 ? Colors.white : Colors.grey,
                              borderRadius: _bR,
                            ),
                            alignment: _s1
                                ? Alignment.center
                                : AlignmentDirectional.topCenter,
                            duration: Duration(seconds: 1),
                            curve: Curves.fastOutSlowIn,
                            child: Text(
                              "28",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ))
                      ],
                    ),
                    //
                    //  pergunta
                    //
                    Column(
                      children: <Widget>[
                        AnimatedContainer(
                          padding: EdgeInsets.all(11),
                          width: _s1 ? 0.0 : 280.0,
                          height: _s1 ? 0.0 : 100.0,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: _bR,
                          ),
                          alignment: Alignment.center,
                          duration: Duration(seconds: 2),
                          curve: Curves.elasticInOut,
                          child: Text(
                            _perguntatela,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    ),
                  ],
                )),
            //
            // Drag area 1
            //
            SizedBox(

              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  width : 60,
                    child: Text("    ",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.bold))
                ),
                Container(
                    width : 60,
                    child: Text("Mais",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.bold))
                ),
                Container(
                    width : 80,
                    child: Text("  ",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.bold))
                ),
                Container(
                    width : 100,
                    child: Text("Menos",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold))

                )
              ],
              ),
            ),
            SizedBox(
                height: 370,
                  child: Stack(

                    children: <Widget>[
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                      //
                      //
                      //     area tela 1
                      //
                      //
                      Positioned(
                        left: 0.0,
                        top: 0.0,
                        child: DragTarget(
                          onAccept: (String valor) {
                            setState(() {
                              _areadrop1 = true;
                              _c1 = true;
                              _validaRecebeMais(valor);
                            });

                          },
                          builder: (
                            BuildContext context,
                            List<dynamic> accepted,
                            List<dynamic> rejected,
                          ) {
                            if (_areadrop1) {
                              return Container(
                                width: _tela1 ? 150.0 : 0.0,
                                height: _tela1 ? 100.0 : 0.0,
                                decoration: BoxDecoration(
                                  color: caughtColor1,
                                ),
                                child: Center(
                                  child: Text(caughtLabel1,
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold)),
                                ),
                              );
                            } else {
                              return Container(
                                width: _tela1 ? 150.0 : 0.0,
                                height: _tela1 ? 100.0 : 0.0,
                                decoration: BoxDecoration(
                                  color: Colors.grey,
                                ),
                                child: Center(
                                  child: Text("Mais",
                                      style: TextStyle(
                                          fontSize: 40,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold)),
                                ),
                              );
                            }
                          },
                        ),
                      ),
                      //
                      //
                      // Area 2
                      //
                      //
                      //
                      Positioned(
                        left: 160.0,
                        top: 0.0,
                        child: DragTarget(
                          onAccept: (String valor) {
                            setState(() {
                              _areadrop2 = true;
                              _c2 = true;
                              _validaRecebeMenos(valor);
                            });

                          },
                          builder: (
                            BuildContext context,
                            List<dynamic> accepted,
                            List<dynamic> rejected,
                          ) {
                            if (_areadrop2) {
                              return Container(
                                width: _tela2 ? 150.0 : 0.0,
                                height: _tela2 ? 100.0 : 0.0,
                                decoration: BoxDecoration(
                                  color: caughtColor2,
                                ),
                                child: Center(
                                  child: Text(caughtLabel2,
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold)),
                                ),
                              );
                            } else {
                              return Container(
                                width: _tela2 ? 150.0 : 0.0,
                                height: _tela2 ? 100.0 : 0.0,
                                decoration: BoxDecoration(
                                  color: Colors.grey,
                                ),
                                child: Center(
                                  child: Text("Menos",
                                      style: TextStyle(
                                          fontSize: 40,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold)),
                                ),
                              );
                            }
                          },
                        ),
                      )]),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(height: 100),
                      SizedBox(height: 10),

                      Positioned(
                          left: 60.0,
                          top: 120.0,
                          child: Draggable(
                            data: _valor1,
                            onDragCompleted: () {
                              setState(() {
                                _visible1 = false;
                              });
                            },
                            child: Container(
                              width: _visible1 ? 200.0 : 0.0,
                              height: _visible1 ? 50.0 : 0.0,
                              color: Colors.blueAccent,
                              child: Center(
                                child: Text(
                                  _label1,
                                  style: TextStyle(
                                    color: Colors.white,
                                    decoration: TextDecoration.none,
                                    fontSize: 15.0,
                                  ),
                                ),
                              ),
                            ),
                            onDraggableCanceled: (velocity, offset) {
                              setState(() {
                                position = Offset(60.0, 150.0);
                              });
                            },
                            feedback: Container(
                              width: 120.0,
                              height: 120.0,
                              color: Colors.blueAccent.withOpacity(0.5),
                              child: Center(
                                child: Text(
                                  _label1,
                                  style: TextStyle(
                                    color: Colors.white,
                                    decoration: TextDecoration.none,
                                    fontSize: 15.0,
                                  ),
                                ),
                              ),
                            ),
                          )),
                      SizedBox(height: 10),
                      Positioned(
                          left: 60.0,
                          top: 180.0,
                          child: Draggable(
                            data: _valor2,
                            onDragCompleted: () {
                              setState(() {
                                _visible2 = false;
                              });
                            },
                            child: Container(
                              width: _visible2 ? 200.0 : 0.0,
                              height: _visible2 ? 50.0 : 0.0,
                              color: Colors.orange,
                              child: Center(
                                child: Text(
                                  _label2,
                                  style: TextStyle(
                                    color: Colors.white,
                                    decoration: TextDecoration.none,
                                    fontSize: 15.0,
                                  ),
                                ),
                              ),
                            ),
                            onDraggableCanceled: (velocity, offset) {
                              setState(() {
                                position = Offset(60.0, 200.0);
                              });
                            },
                            feedback: Container(
                              width: 120.0,
                              height: 120.0,
                              color: Colors.orange.withOpacity(0.5),
                              child: Center(
                                child: Text(
                                  _label2,
                                  style: TextStyle(
                                    color: Colors.white,
                                    decoration: TextDecoration.none,
                                    fontSize: 15.0,
                                  ),
                                ),
                              ),
                            ),
                          )),
                      SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      //
                      Positioned(
                          left: 60.0,
                          top: 240.0,
                          child: Draggable(
                            data: _valor3,
                            onDragCompleted: () {
                              setState(() {
                                _visible3 = false;
                              });
                            },
                            child: Container(
                              width: _visible3 ? 200.0 : 0.0,
                              height: _visible3 ? 50.0 : 0.0,
                              color: Colors.green,
                              child: Center(
                                child: Text(
                                  _label3,
                                  style: TextStyle(
                                    color: Colors.white,
                                    decoration: TextDecoration.none,
                                    fontSize: 15.0,
                                  ),
                                ),
                              ),
                            ),
                            onDraggableCanceled: (velocity, offset) {
                              setState(() {
                                position = Offset(60.0, 250.0);
                              });
                            },
                            feedback: Container(
                              width: 120.0,
                              height: 120.0,
                              color: Colors.green.withOpacity(0.5),
                              child: Center(
                                child: Text(
                                  _label3,
                                  style: TextStyle(
                                    color: Colors.white,
                                    decoration: TextDecoration.none,
                                    fontSize: 15.0,
                                  ),
                                ),
                              ),
                            ),
                          ))]), //
                      SizedBox(height: 10),
                  Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                      Positioned(
                          left: 60.0,
                          top: 300.0,
                          child: Draggable(
                            data: _valor4,
                            onDragCompleted: () {
                              setState(() {
                                _visible4 = false;
                              });
                            },
                            child: Container(
                              width: _visible4 ? 200.0 : 0.0,
                              height: _visible4 ? 50.0 : 0.0,
                              color: Colors.red,
                              child: Center(
                                child: Text(
                                  _label4,
                                  style: TextStyle(
                                    color: Colors.white,
                                    decoration: TextDecoration.none,
                                    fontSize: 15.0,
                                  ),
                                ),
                              ),
                            ),
                            onDraggableCanceled: (velocity, offset) {
                              setState(() {
                                position = Offset(60.0, 250.0);
                              });
                            },
                            feedback: Container(
                              width: 120.0,
                              height: 120.0,
                              color: Colors.red.withOpacity(0.5),
                              child: Center(
                                child: Text(
                                  _label4,
                                  style: TextStyle(
                                    color: Colors.white,
                                    decoration: TextDecoration.none,
                                    fontSize: 15.0,
                                  ),
                                ),
                              ),
                            ),
                          ))])])
                      //
                    ],
                  ),
                ),

            //
            // Botoes
            //
            SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
            SizedBox(

                height: 70,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      width: 140,
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
                              if (_numeroSorteado == 1) {
                                Navigator.pushReplacementNamed(
                                    context, "/Home");
                              } else {
                                setState(() {
                                  _c1 = _c2 = false;
                                  _areadrop1 = _areadrop2 = false;
                                  _visible1 =
                                      _visible2 = _visible3 = _visible4 = true;
                                  _numeroSorteado--;
                                  _npergunta = _numeroSorteado;
                                });
                              }
                            }),
                      ),
                    ),
                    Container(width: 40, height: 60),
                    (_c1 && _c2)
                        ? Container(
                            width: 130,
                            height: 60,
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
                                      "Próxima",
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
                                  if (_numeroSorteado >= 28) {
                                  _contabilizar();
                                  print("D = "+ _valD.toString());
                                  print("I = "+ _valI.toString());
                                  print("S = "+ _valS.toString());
                                  print("C = "+ _valC.toString());
                                  print("D2 ="+ _valDAntes.toString());
                                  print("I2 = "+ _valIAntes.toString());
                                  print("S2 = "+ _valSAntes.toString());
                                  print("C2 = "+ _valCAntes.toString());
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                        builder: (context) => ResultadoDisc(widget._codAluno,
                                            _valD,
                                            _valI,
                                            _valS,
                                            _valC,
                                            _valDAntes,
                                            _valIAntes,
                                            _valSAntes,
                                            _valCAntes)));
                                  } else {
                                    setState(() {
                                      _numeroSorteado++;
                                      _c1 = _c2 = false;
                                      _npergunta = _numeroSorteado;
                                      _areadrop1 = _areadrop2 = false;
                                      _visible1 = _visible2 = _visible3 = _visible4 = true;
                                    });
                                    _limpaBotao();
                                    _gerarPergunta();

                                  }
                                },
                              ),
                            ),
                          )
                        : Container(width: 140, height: 60),
                  ],
                ))]),
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
                    mainAxisAlignment: MainAxisAlignment.center,
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
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
