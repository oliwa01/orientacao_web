import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:firebase/firestore.dart' as fs;
import 'package:firebase/firebase.dart' as fb;
import 'HomeAdm.dart';
import 'ResultadosAdm.dart';

//
class LeAluno extends StatefulWidget {
String _codAluno;
  String _email;
  int _idade;
  String _nome;
  String _sexo;
  bool _t1;
  bool _t2;
  bool _t3;
  bool _t4;
  bool _t5;
  bool _t6;
  bool _t7;
  bool _t8;
  LeAluno(this._codAluno,this._email,this._idade,this._nome,this._sexo,this._t1,this._t2,this._t3,this._t4,this._t5,this._t6,this._t7,this._t8);
  @override
  _LeAlunoState createState() => _LeAlunoState();
}

class _LeAlunoState extends State<LeAluno> {
  AnimationController controller;
  BorderRadiusGeometry _bR = BorderRadius.circular(8);
  Firestore db = Firestore.instance;
  //
  bool _t1_value = true;
  bool _t2_value = true;
  bool _t3_value = true;
  bool _t4_value = true;
  bool _t5_value = true;
  bool _t6_value = true;
  bool _t7_value = true;
  bool _t8_value = true;
  bool _t10_value = true;
  bool _t11_value = true;
  //
  _altera_t1() {
  db.collection("aluno")
        .document(widget._codAluno)
        .updateData(
        {
          "t1" : _t1_value
        }
    );

  }
  //
  _altera_t2() {
    db.collection("aluno")
        .document(widget._codAluno)
        .updateData(
        {
          "t2" : _t2_value
        }
    );

  }
  //
  _altera_t3() {
    db.collection("aluno")
        .document(widget._codAluno)
        .updateData(
        {
          "t3" : _t3_value
        }
    );

  }
  //
  _altera_t4() {
    db.collection("aluno")
        .document(widget._codAluno)
        .updateData(
        {
          "t4" : _t4_value
        }
    );

  }
  //
  _altera_t5() {
    db.collection("aluno")
        .document(widget._codAluno)
        .updateData(
        {
          "t5" : _t5_value
        }
    );

  }
  //
  _altera_t6() {
    db.collection("aluno")
        .document(widget._codAluno)
        .updateData(
        {
          "t6" : _t6_value
        }
    );

  }
  //
  _altera_t7() {
    db.collection("aluno")
        .document(widget._codAluno)
        .updateData(
        {
          "t7" : _t7_value
        }
    );

  }
  //
  _altera_t8() {
    db.collection("aluno")
        .document(widget._codAluno)
        .updateData(
        {
          "t8" : _t8_value
        }
    );

  }
  //
  @override
  void initState()  {
    super.initState();
    print("Aluno = "+widget._codAluno.toString());
    _t1_value = widget._t1;
    _t2_value = widget._t2;
    _t3_value = widget._t3;
    _t4_value = widget._t4;
    _t5_value = widget._t5;
    _t6_value = widget._t6;
    _t7_value = widget._t7;
    _t8_value = widget._t8;
  }

  Widget build(BuildContext context) {
    final widthlua = MediaQuery.of(context).size.width;
    final heightlua = MediaQuery.of(context).size.height;
//
    double  w10p = widthlua *  0.10;
    double  w20p = widthlua *  0.20;
    double  w30p = widthlua *  0.30;
    double  w40p = widthlua *  0.40;
    double  w50p = widthlua *  0.50;
    double  w60p = widthlua *  0.60;
    double  w70p = widthlua *  0.70;
    double  w80p = widthlua *  0.80;
    double  w90p = widthlua *  0.90;
    double  w100p = widthlua * 1.00;
    //
    double  h10p = heightlua * 0.05;
    double  hespace = heightlua * 0.02;
//
    double  font_adj1 =  (heightlua > 1600) ? 30 :
    (heightlua > 1500)  ?  30 :
    (heightlua > 1400)  ?  27 :
    (heightlua > 1300)  ?  28 :
    (heightlua > 1200)  ?  28 :
    (heightlua > 1100)  ?  29 :
    (heightlua > 1000)  ?  29 :
    (heightlua > 900)  ?  20 :
    (heightlua > 800)  ?  15 :
    (heightlua > 700)  ?  13 :
    (heightlua > 600)  ?  9 :
    (heightlua > 500)  ?  9 :  8 ;
    //
    double  fbotao =  (widthlua > 1600) ? 30 :
    (widthlua > 1500)  ?  30 :
    (widthlua > 1000)  ?  27 :
    (widthlua > 900)  ?  28 :
    (widthlua > 800)  ?  20 :
    (widthlua > 600)  ?  15 :
    (widthlua > 500)  ?  10 :
    (widthlua > 400)  ?  9 :
    (widthlua > 400)  ?  8 :
    (widthlua > 300)  ?  6 :
    (widthlua > 200)  ?  3 :
    (widthlua > 100)  ?  2 :  1 ;


    String _tit1 = "\nMULTIPLAS INTELIGÊNCIAS ";
    String _tit2 = "\nAUTO-PERCEPÇÃO";  //
    String _tit3 = "\nDEDUÇÃO LÓGICA ";
    String _tit4 = "\nLÓGICA VISUAL ";
    String _tit5 = "\nTESTE - 00005 ";
    String _tit6 = "\nTESTE - 00006 ";
    String _tit7 = "\nTESTE - 00007 ";
    String _tit8 = "\nTESTE - 00008 ";

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("WOP3 - ORIENTAÇÃO VOCACIONAL"),
    leading: GestureDetector(
    onTap: () {
        Navigator.push(context,
            MaterialPageRoute(
                builder: (context) =>
                    HomeAdm()));
      },
        child: Icon(Icons.arrow_back, size: 30,  // add custom icons also
      )),
      ),
        body: Container(
        child: Align(
        alignment: Alignment.topCenter,
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                SizedBox(height: hespace),
                AnimatedContainer(
                  //  padding: EdgeInsets.only(top : padbox),
                    width: w60p,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: _bR,
                    ),
                    alignment: Alignment.center,
                    duration: Duration(seconds: 3),
                    curve: Curves.fastLinearToSlowEaseIn,
                    child:
                    Text(widget._nome,textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: font_adj1,
                          color: Colors.black,
                          fontWeight: FontWeight.bold
                      ),
                    )
                ),
                SizedBox(height: hespace),
                AnimatedContainer(
                  //  padding: EdgeInsets.only(top : padbox),
                    width: w60p,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: _bR,
                    ),
                    alignment: Alignment.center,
                    duration: Duration(seconds: 3),
                    curve: Curves.fastLinearToSlowEaseIn,
                    child:
                    Text(widget._email,textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: font_adj1,
                          color: Colors.black,
                          fontWeight: FontWeight.bold
                      ),
                    )
                ),
                SizedBox(height: hespace),
              Container(
                  width: w80p,
                  height: h10p,
                  alignment: Alignment.bottomCenter,
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.all(
                      Radius.circular(5),
                    ),
                  ),
                  child:
                Row(
                    mainAxisAlignment: MainAxisAlignment.center, //Center Row contents horizontally,
                    crossAxisAlignment: CrossAxisAlignment.center, //Center Row contents vertically,
                  children: [
                    SizedBox( width: w40p, height: (w10p), child: Text(_tit1,textAlign: TextAlign.left,
                      style: TextStyle(
                          fontSize: font_adj1,
                          color: Colors.black,
                          fontWeight: FontWeight.bold
                      ),)),
                    SizedBox(width: w20p,height: (w10p),
                      child: SizedBox.expand(
                      child: FlatButton(
                        color: _t1_value ? Colors.green: Colors.grey,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[

                            Text(
                              _t1_value ? "Liberado": "Bloqueado",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: fbotao,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                        onPressed: () {
                          setState(() {
                            _t1_value = !_t1_value;
                            _altera_t1();
                          });

                        },
                      ),
                    ),
                  )])),
                SizedBox(height: hespace),
              Container(
                  width: w80p,
                  height: h10p,
                  alignment: Alignment.bottomCenter,
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.all(
                      Radius.circular(5),
                    ),
                  ),
                  child:
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox( width: w40p, height: (w10p), child: Text(_tit2,textAlign: TextAlign.left,
                      style: TextStyle(
                          fontSize: font_adj1,
                          color: Colors.black,
                          fontWeight: FontWeight.bold
                      ),)),
                    SizedBox(width: w20p,height: (w10p),
                      child: SizedBox.expand(
                        child: FlatButton(
                          color: _t2_value ? Colors.green: Colors.grey,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[

                              Text(
                                _t2_value ? "Liberado": "Bloqueado",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: fbotao,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                          onPressed: () {
                            setState(() {
                            _t2_value = !_t2_value;
                            _altera_t2();
                            });
                          },
                        ),
                      ),
                    )
                    ]
          )),
                SizedBox(height: hespace),
              Container(
                  width: w80p,
                  height: h10p,
                  alignment: Alignment.bottomCenter,
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.all(
                      Radius.circular(5),
                    ),
                  ),
                  child:
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox( width: w40p, height: (w10p), child: Text(_tit3,textAlign: TextAlign.left,
                        style: TextStyle(
                            fontSize: font_adj1,
                            color: Colors.black,
                            fontWeight: FontWeight.bold
                        ),)),
                      SizedBox(width: w20p,height: (w10p),
                        child: SizedBox.expand(
                          child: FlatButton(
                            color: _t3_value ? Colors.green: Colors.grey,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[

                                Text(
                                  _t3_value ? "Liberado": "Bloqueado",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: fbotao,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                            onPressed: () {
                              setState(() {
                              _t3_value = !_t3_value;
                              _altera_t3();
                              });
                            },
                          ),
                        ),
                      )
                    ]
                )),
                SizedBox(height: hespace),
              Container(
                  width: w80p,
                  height: h10p,
                  alignment: Alignment.bottomCenter,
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.all(
                      Radius.circular(5),
                    ),
                  ),
                  child:
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox( width: w40p, height: (w10p), child: Text(_tit4,textAlign: TextAlign.left,
                        style: TextStyle(
                            fontSize: font_adj1,
                            color: Colors.black,
                            fontWeight: FontWeight.bold
                        ),)),
                      SizedBox(width: w20p,height: (w10p),
                        child: SizedBox.expand(
                          child: FlatButton(
                            color: _t4_value ? Colors.green: Colors.grey,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[

                                Text(
                                  _t4_value ? "Liberado": "Bloqueado",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: fbotao,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                            onPressed: () {
                              setState(() {
                              _t4_value = !_t4_value;
                              _altera_t4();
                              });
                            },
                          ),
                        ),
                      )
                    ]
                )),
                SizedBox(height: hespace),
              Container(
                  width: w80p,
                  height: h10p,
                  alignment: Alignment.bottomCenter,
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.all(
                      Radius.circular(5),
                    ),
                  ),
                  child:
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox( width: w40p, height: (w10p), child: Text(_tit5,textAlign: TextAlign.left,
                        style: TextStyle(
                            fontSize: font_adj1,
                            color: Colors.black,
                            fontWeight: FontWeight.bold
                        ),)),
                      SizedBox(width: w20p,height: (w10p),
                        child: SizedBox.expand(
                          child: FlatButton(
                            color: _t5_value ? Colors.green: Colors.grey,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[

                                Text(
                                  _t5_value ? "Liberado": "Bloqueado",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: fbotao,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                            onPressed: () {
                              setState(() {
                              _t5_value = !_t5_value;
                              _altera_t2();
                              });
                            },
                          ),
                        ),
                      )
                    ]
                )),
                SizedBox(height: hespace),
              Container(
                  width: w80p,
                  height: h10p,
                  alignment: Alignment.bottomCenter,
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.all(
                      Radius.circular(5),
                    ),
                  ),
                  child:
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox( width: w40p, height: (w10p), child: Text(_tit6,textAlign: TextAlign.left,
                        style: TextStyle(
                            fontSize: font_adj1,
                            color: Colors.black,
                            fontWeight: FontWeight.bold
                        ),)),
                      SizedBox(width: w20p,height: (w10p),
                        child: SizedBox.expand(
                          child: FlatButton(
                            color: _t6_value ? Colors.green: Colors.grey,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[

                                Text(
                                  _t6_value ? "Liberado": "Bloqueado",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: fbotao,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                            onPressed: () {
                              setState(() {
                              _t6_value = !_t6_value;
                              _altera_t6();
                              });
                            },
                          ),
                        ),
                      )
                    ]
                )),
                SizedBox(height: hespace),
              Container(
                  width: w80p,
                  height: h10p,
                  alignment: Alignment.bottomCenter,
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.all(
                      Radius.circular(5),
                    ),
                  ),
                  child:
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox( width: w40p, height: (w10p), child: Text(_tit7,textAlign: TextAlign.left,
                        style: TextStyle(
                            fontSize: font_adj1,
                            color: Colors.black,
                            fontWeight: FontWeight.bold
                        ),)),
                      SizedBox(width: w20p,height: (w10p),
                        child: SizedBox.expand(
                          child: FlatButton(
                            color: _t7_value ? Colors.green: Colors.grey,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[

                                Text(
                                  _t7_value ? "Liberado": "Bloqueado",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: fbotao,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                            onPressed: () {
                              setState(() {
                              _t7_value = !_t7_value;
                              _altera_t2();
                              });
                            },
                          ),
                        ),
                      )
                    ]
                )),
                SizedBox(height: hespace),
              Container(
              width: w80p,
              height: h10p,
              alignment: Alignment.bottomCenter,
              decoration: BoxDecoration(
                color: Colors.orange,
                borderRadius: BorderRadius.all(
                  Radius.circular(5),
                ),
              ),
              child:

                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox( width: w40p, height: (w10p), child: Text(_tit8,textAlign: TextAlign.left,
                        style: TextStyle(
                            fontSize: font_adj1,
                            color: Colors.black,
                            fontWeight: FontWeight.bold
                        ),)),
                      SizedBox(width: w20p,height: (w10p),
                        child: SizedBox.expand(
                          child: FlatButton(
                            color: _t8_value ? Colors.green: Colors.grey,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[

                                Text(
                                  _t8_value ? "Liberado" : "Bloqueado",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: fbotao,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                            onPressed: () {
                              setState(() {
                              _t8_value = !_t8_value;
                              _altera_t8();
                              });
                            },
                          ),
                        ),
                      )
                    ]
                )),
                SizedBox(height: hespace),
                //Botao resultados
                Container(
                  height: h10p,
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
                            "Resultados dos Testes",
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
                                    ResultadosAdm(widget._codAluno)));
                      },
                    ),
                  ),
                ),

              ]
    )
          )
    )
        )
        ));
  }
}
