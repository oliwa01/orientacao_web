import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_radar_chart/flutter_radar_chart.dart';

import '../ResultadosAdm.dart';

class ResultaDce extends StatefulWidget {

  String _codaluno;
  int ID;
  int IE;
  int SD;
  int SE;


  ResultaDce(
      this._codaluno,
      this.ID,
      this.IE,
      this.SD,
      this.SE,
      );

  @override
  _ResultaDceState createState() => _ResultaDceState();
}

class _ResultaDceState extends State<ResultaDce> {
  BorderRadiusGeometry _bR = BorderRadius.circular(8);
  bool darkMode = false;
  double numberOfFeatures = 4;
  //

  @override
  Widget build(BuildContext context) {
    final widthlua = MediaQuery.of(context).size.width;
    final heightlua = MediaQuery.of(context).size.height;
    double  w10p = widthlua * 0.03;
    double  w20p = widthlua * 0.20;
    double  hbotao = heightlua * 0.08;
       //
    double  font_adj1 =  (widthlua > 1600) ? 30 :
    (widthlua > 1500)  ?  30 :
    (widthlua > 1400)  ?  27 :
    (widthlua > 1300)  ?  28 :
    (widthlua > 1200)  ?  28 :
    (widthlua > 1100)  ?  29 :
    (widthlua > 1000)  ?  29 :
    (widthlua > 900)  ?  20 :
    (widthlua > 800)  ?  15 :
    (widthlua > 700)  ?  13 :
    (widthlua > 600)  ?  9 :
    (widthlua > 500)  ?  9 :  8 ;
    //
    const ticks = [4, 8, 12, 16];
    var features = ["ID", "IE", "SD", "SE"];
    var data = [
      [widget.ID,widget.IE , widget.SD,widget.SE],
    ];

    features = features.sublist(0, numberOfFeatures.floor());
    data = data.map((graph) => graph.sublist(0, numberOfFeatures.floor())).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text('Dominância Cerebral - AUTO-PERCEPÇÃO'),
      ),
      body: Container(
        color: darkMode ? Colors.black : Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal : 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  darkMode
                      ? Text(
                    'Fundo Branco',
                    style: TextStyle(color: Colors.white),
                  )
                      : Text(
                    'Fundo Preto',
                    style: TextStyle(color: Colors.black),
                  ),
                  Switch(
                    value: this.darkMode,
                    onChanged: (value) {
                      setState(() {
                        darkMode = value;
                      });
                    },
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal : 8.0),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(width: w10p),
                    AnimatedContainer(
                      //  padding: EdgeInsets.only(top : padbox),
                        width: w20p,
                        height: hbotao,
                        decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: _bR,
                        ),
                        alignment: Alignment.center,
                        duration: Duration(seconds: 3),
                        curve: Curves.fastLinearToSlowEaseIn,
                        child:
                        Text("Racional : "+widget.SE.toString(),textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: font_adj1,
                              color: Colors.black,
                              fontWeight: FontWeight.bold
                          ),
                        )
                    ),
                    SizedBox(width: w10p),
                    AnimatedContainer(
                      //  padding: EdgeInsets.only(top : padbox),
                        width: w20p,
                        height: hbotao,
                        decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: _bR,
                        ),
                        alignment: Alignment.center,
                        duration: Duration(seconds: 3),
                        curve: Curves.fastLinearToSlowEaseIn,
                        child:
                        Text("Esperimental : "+widget.SD.toString(),textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: font_adj1,
                              color: Colors.black,
                              fontWeight: FontWeight.bold
                          ),
                        )
                    ),
                    SizedBox(width: w10p),
                    AnimatedContainer(
                      //  padding: EdgeInsets.only(top : padbox),
                        width: w20p,
                        height: hbotao,
                        decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: _bR,
                        ),
                        alignment: Alignment.center,
                        duration: Duration(seconds: 3),
                        curve: Curves.fastLinearToSlowEaseIn,
                        child:
                        Text("Sensitivo : "+widget.ID.toString(),textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: font_adj1,
                              color: Colors.black,
                              fontWeight: FontWeight.bold
                          ),
                        )
                    ),
                    SizedBox(width: w10p),
                    AnimatedContainer(
                      //  padding: EdgeInsets.only(top : padbox),
                        width: w20p,
                        height: hbotao,
                        decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: _bR,
                        ),
                        alignment: Alignment.center,
                        duration: Duration(seconds: 3),
                        curve: Curves.fastLinearToSlowEaseIn,
                        child:
                        Text("Cuidadoso : "+widget.IE.toString(),textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: font_adj1,
                              color: Colors.black,
                              fontWeight: FontWeight.bold
                          ),
                        )
                    )
                  ]
            )),

            Expanded(
              child: darkMode
                  ? RadarChart.dark(
                ticks: ticks,
                features: features,
                data: data,
                reverseAxis:  false,
              )
                  : RadarChart.light(
                ticks: ticks,
                features: features,
                data: data,
                reverseAxis: false,
              ),
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
                            builder: (context) => ResultadosAdm(widget._codaluno)
                        ));
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


