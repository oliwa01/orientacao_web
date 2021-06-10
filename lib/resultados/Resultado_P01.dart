import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:wop3_ovp/graficos/GraficosP01.dart';

import '../graficos/Graficos.dart';
import '../graficos/GraficosTM.dart';
import '../Home.dart';

class Resultados_P01 extends StatefulWidget {
  String _codaluno;
  int score_autoestima;


  Resultados_P01(this._codaluno,
      this.score_autoestima,
);
  @override
  _Resultados_P01State createState() => _Resultados_P01State();
}

class _Resultados_P01State extends State<Resultados_P01> {


  /*
 firebase

*/

  //
  void _iniciaDB () async {


    setState(() {
      if (widget.score_autoestima > 259) {_cv1 = _green;}
      else if ((widget.score_autoestima > 244) && (widget.score_autoestima < 260)) {_cv1 = _lime;}
      else if ((widget.score_autoestima > 227) && (widget.score_autoestima < 245)) {_cv1 = _yellow;}
      else if ((widget.score_autoestima > 194) && (widget.score_autoestima < 228)) {_cv1 = _orange;}
      else if ((widget.score_autoestima < 194)) {_cv1 = _red;};
      //

      //



      //
    });
  }

  Color _cv1 = Colors.grey;
  Color _cv2 = Colors.grey;
  Color _cv3 = Colors.grey;
  Color _cv4 = Colors.grey;
  Color _cv5 = Colors.grey;
  Color _cv6 = Colors.grey;
  Color _cv7 = Colors.grey;
  Color _cv8 = Colors.grey;
  Color _cv9 = Colors.grey;
  Color _cv10 = Colors.grey;
  Color _cv11 = Colors.grey;
  Color _cv12 = Colors.grey;


  Color _red = Colors.red;
  Color _orange = Colors.deepOrangeAccent;
  Color _yellow = Colors.yellow;
  Color _lime = Colors.lightGreenAccent;
  Color _green = Colors.green;


  @override
  void initState() {

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 60, left: 40, right: 40),
        color: Colors.white,
        child: ListView(
          children: <Widget>[
            SizedBox(
              width: 30,
              height: 30,
              child: Image.asset("images/logo.png"),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 128,
              height: 280,
              child:SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                      children: <Widget>[
                        Text("Autoestima é a qualidade que pertence ao indivíduo satisfeito com a sua identidade, ou seja, uma pessoa dotada de confiança e que valoriza a si mesmo.",

                          style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold,),textAlign: TextAlign.center, )
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
                        "Resultado do Teste",
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
                    _iniciaDB();


                    Navigator.push(context,
                        MaterialPageRoute(
                            builder: (context) =>
                                GraficosP01(
                                    widget._codaluno,
                                    widget.score_autoestima,_cv1
                                )));
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
                            builder: (context) => Home(widget._codaluno)
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
