import 'package:date_format/date_format.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:path/path.dart';
import 'dart:math' as math;
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:charts_flutter/flutter.dart' as charts;

import '../Home.dart';

class Graficos extends StatefulWidget {
  int v1; int v2; int v3; int v4; int v5; int v6; int v7; int v8;
  Color cv1; Color cv2; Color cv3 ;Color cv4; Color cv5; Color cv6; Color cv7; Color cv8;
  String _codAluno;

  Graficos(this._codAluno,this.v1,this.cv1,this.v2,this.cv2,this.v3,this.cv3,this.v4,this.cv4,this.v5,this.cv5,this.v6,this.cv6,this.v7,this.cv7,this.v8,this.cv8,);

  _GraficosState createState() => _GraficosState();

}

class _GraficosState extends State<Graficos> {
  List<charts.Series<Resultados, String>> _seriesData;
  List<charts.Series<Task, String>> _seriesPieData;
  List<charts.Series<Sales, int>> _seriesLineData;

  _generateData() async {
    var data1 = [
      new Resultados(1, 'AutoEstima', widget.v1, widget.cv1),
      new Resultados(2, 'Ansiedade', widget.v2, widget.cv2),
      new Resultados(3, 'Stress', widget.v3, widget.cv3),
      new Resultados(4, 'Dispersâo', widget.v4, widget.cv4),
      new Resultados(5, 'Hiperatividade', widget.v5, widget.cv5),
      new Resultados(6, 'Relacionamentos', widget.v6, widget.cv6),
      new Resultados(7, 'Depressão', widget.v7, widget.cv7),
      new Resultados(8, 'Auto Lesão', widget.v8, widget.cv8)
    ];


    var piedata = [

      new Task('Dominância', 30.1, Color(0xff109618)),
      new Task('Influência', 19.9, Color(0xfffdbe19)),
      new Task('Estabilidade', 32.2, Color(0xffff9900)),
      new Task('Conformidade', 17.8, Color(0xffdc3912)),
    ];

    var linesalesdata = [
      new Sales(0, 45),
      new Sales(1, 56),
      new Sales(2, 55),
      new Sales(3, 60),
      new Sales(4, 61),
      new Sales(5, 70),
    ];
    var linesalesdata1 = [
      new Sales(0, 35),
      new Sales(1, 46),
      new Sales(2, 45),
      new Sales(3, 50),
      new Sales(4, 51),
      new Sales(5, 60),
    ];

    var linesalesdata2 = [
      new Sales(0, 20),
      new Sales(1, 24),
      new Sales(2, 25),
      new Sales(3, 40),
      new Sales(4, 45),
      new Sales(5, 60),
    ];

    _seriesData.add(
      charts.Series(
        domainFn: (Resultados Resultados, _) => Resultados.place,
        measureFn: (Resultados Resultados, _) => Resultados.quantity,
        id: 'diag',
        data: data1,
        fillPatternFn: (_, __) => charts.FillPatternType.solid,
        fillColorFn: (Resultados Resultados, _) =>
            charts.ColorUtil.fromDartColor(Resultados.cor),
      ),

    );


    _seriesPieData.add(
      charts.Series(
        domainFn: (Task task, _) => task.task,
        measureFn: (Task task, _) => task.taskvalue,
        colorFn: (Task task, _) =>
            charts.ColorUtil.fromDartColor(task.colorval),
        id: 'Air Resultados',
        data: piedata,
        labelAccessorFn: (Task row, _) => '${row.taskvalue}',
      ),
    );

    _seriesLineData.add(
      charts.Series(
        colorFn: (__, _) => charts.ColorUtil.fromDartColor(Color(0xff990099)),
        id: 'Air Resultados',
        data: linesalesdata,
        domainFn: (Sales sales, _) => sales.yearval,
        measureFn: (Sales sales, _) => sales.salesval,
      ),
    );
    _seriesLineData.add(
      charts.Series(
        colorFn: (__, _) => charts.ColorUtil.fromDartColor(Color(0xff109618)),
        id: 'Air Resultados',
        data: linesalesdata1,
        domainFn: (Sales sales, _) => sales.yearval,
        measureFn: (Sales sales, _) => sales.salesval,
      ),
    );
    _seriesLineData.add(
      charts.Series(
        colorFn: (__, _) => charts.ColorUtil.fromDartColor(Color(0xffff9900)),
        id: 'Air Resultados',
        data: linesalesdata2,
        domainFn: (Sales sales, _) => sales.yearval,
        measureFn: (Sales sales, _) => sales.salesval,
      ),
    );
  }

  String _textoAutoEstima = "Lorem Ipsum é simplesmente uma simulação de texto da indústria tipográfica e de impressos, e vem sendo utilizado desde o século XVI, quando um impressor desconhecido pegou uma bandeja de tipos e os embaralhou para fazer um livro de modelos de tipos. Lorem Ipsum sobreviveu não só a cinco séculos, como também ao salto para a editoração eletrônica, permanecendo essencialmente inalterado. Se popularizou na década de 60, quando a Letraset lançou decalques contendo passagens de Lorem Ipsum, e mais recentemente quando passou a ser integrado a softwares de editoração eletrônica como Aldus PageMaker.";
  String _textoAnsiedade = "Lorem Ipsum é simplesmente uma simulação de texto da indústria tipográfica e de impressos, e vem sendo utilizado desde o século XVI, quando um impressor desconhecido pegou uma bandeja de tipos e os embaralhou para fazer um livro de modelos de tipos. Lorem Ipsum sobreviveu não só a cinco séculos, como também ao salto para a editoração eletrônica, permanecendo essencialmente inalterado. Se popularizou na década de 60, quando a Letraset lançou decalques contendo passagens de Lorem Ipsum, e mais recentemente quando passou a ser integrado a softwares de editoração eletrônica como Aldus PageMaker.";
  String _textoStress = "Lorem Ipsum é simplesmente uma simulação de texto da indústria tipográfica e de impressos, e vem sendo utilizado desde o século XVI, quando um impressor desconhecido pegou uma bandeja de tipos e os embaralhou para fazer um livro de modelos de tipos. Lorem Ipsum sobreviveu não só a cinco séculos, como também ao salto para a editoração eletrônica, permanecendo essencialmente inalterado. Se popularizou na década de 60, quando a Letraset lançou decalques contendo passagens de Lorem Ipsum, e mais recentemente quando passou a ser integrado a softwares de editoração eletrônica como Aldus PageMaker.";
  String _textoDispersao = "Lorem Ipsum é simplesmente uma simulação de texto da indústria tipográfica e de impressos, e vem sendo utilizado desde o século XVI, quando um impressor desconhecido pegou uma bandeja de tipos e os embaralhou para fazer um livro de modelos de tipos. Lorem Ipsum sobreviveu não só a cinco séculos, como também ao salto para a editoração eletrônica, permanecendo essencialmente inalterado. Se popularizou na década de 60, quando a Letraset lançou decalques contendo passagens de Lorem Ipsum, e mais recentemente quando passou a ser integrado a softwares de editoração eletrônica como Aldus PageMaker.";
  String _textoHiperatividade  = "Lorem Ipsum é simplesmente uma simulação de texto da indústria tipográfica e de impressos, e vem sendo utilizado desde o século XVI, quando um impressor desconhecido pegou uma bandeja de tipos e os embaralhou para fazer um livro de modelos de tipos. Lorem Ipsum sobreviveu não só a cinco séculos, como também ao salto para a editoração eletrônica, permanecendo essencialmente inalterado. Se popularizou na década de 60, quando a Letraset lançou decalques contendo passagens de Lorem Ipsum, e mais recentemente quando passou a ser integrado a softwares de editoração eletrônica como Aldus PageMaker.";
  String _textoRelacionamento = "Lorem Ipsum é simplesmente uma simulação de texto da indústria tipográfica e de impressos, e vem sendo utilizado desde o século XVI, quando um impressor desconhecido pegou uma bandeja de tipos e os embaralhou para fazer um livro de modelos de tipos. Lorem Ipsum sobreviveu não só a cinco séculos, como também ao salto para a editoração eletrônica, permanecendo essencialmente inalterado. Se popularizou na década de 60, quando a Letraset lançou decalques contendo passagens de Lorem Ipsum, e mais recentemente quando passou a ser integrado a softwares de editoração eletrônica como Aldus PageMaker.";
  String _textoDepressao = "Lorem Ipsum é simplesmente uma simulação de texto da indústria tipográfica e de impressos, e vem sendo utilizado desde o século XVI, quando um impressor desconhecido pegou uma bandeja de tipos e os embaralhou para fazer um livro de modelos de tipos. Lorem Ipsum sobreviveu não só a cinco séculos, como também ao salto para a editoração eletrônica, permanecendo essencialmente inalterado. Se popularizou na década de 60, quando a Letraset lançou decalques contendo passagens de Lorem Ipsum, e mais recentemente quando passou a ser integrado a softwares de editoração eletrônica como Aldus PageMaker.";
  String _textoAutoLesao = "Lorem Ipsum é simplesmente uma simulação de texto da indústria tipográfica e de impressos, e vem sendo utilizado desde o século XVI, quando um impressor desconhecido pegou uma bandeja de tipos e os embaralhou para fazer um livro de modelos de tipos. Lorem Ipsum sobreviveu não só a cinco séculos, como também ao salto para a editoração eletrônica, permanecendo essencialmente inalterado. Se popularizou na década de 60, quando a Letraset lançou decalques contendo passagens de Lorem Ipsum, e mais recentemente quando passou a ser integrado a softwares de editoração eletrônica como Aldus PageMaker.";
//

  // Ansiedade

double _valorAnsiedade (double d) => d;
  //
  @override
  void initState() {
setState(() {
 _valorAnsiedade(widget.v1.toDouble());
});
    super.initState();
    _seriesData = List<charts.Series<Resultados, String>>();
    _seriesPieData = List<charts.Series<Task, String>>();
    _seriesLineData = List<charts.Series<Sales, int>>();

    _generateData();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text("Wop3 - Desenvolvimento Humano"),
            flexibleSpace: Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: <Color>[
                        Color(0xFFF58524),
                        Color(0XFFF92B7F),
                      ])
              ),
            ),
            bottom: TabBar(
              indicatorColor: Color(0xff9962D0),
              tabs: [
                Tab(icon: Icon(FontAwesomeIcons.solidChartBar),),
                Tab(icon: Icon(FontAwesomeIcons.chartPie)),
                Tab(icon: Icon(FontAwesomeIcons.chartLine)),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Container(
                  child: Center(
                    child: Column(
                      children: <Widget>[
                        Text(
                          'Diagnostico das Emoções',
                          style: TextStyle(fontSize: 10.0,
                              fontWeight: FontWeight.bold),),
                        Expanded(
                          child: charts.BarChart(
                            _seriesData,
                            animate: true,
                            vertical: false,
                            barGroupingType: charts.BarGroupingType.stacked,
                            /*  behaviors: [new charts.SeriesLegend(
                                position: charts.BehaviorPosition.top,
                              outsideJustification: charts.OutsideJustification.endDrawArea,
                              horizontalFirst: false,
                              desiredMaxRows: 2,
                              cellPadding: new EdgeInsets.only(right: 4.0, bottom: 4.0),
                            entryTextStyle: charts.TextStyleSpec(
                                color: charts.MaterialPalette.purple.shadeDefault,
                                fontFamily: 'Georgia',
                                fontSize: 8)
                          )],*/
                            animationDuration: Duration(seconds: 3),
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
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Container(
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
                          width: 200,
                          child:SingleChildScrollView(
                              scrollDirection: Axis.vertical,
                              child: Column(
                                  children: <Widget>[
                                    Text('Resultado do Teste\n',
                                      style: TextStyle(
                                        fontSize: 30.0,
                                        fontWeight: FontWeight.bold,),textAlign: TextAlign.center,
                                    ),
                                    Text('Auto Estima\n',
                                      style: TextStyle(
                                        fontSize: 25.0,
                                        fontWeight: FontWeight.bold,),textAlign: TextAlign.center,
                                    ),
                                    SizedBox(
                                      child: Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: <Widget>[
                                            Container(
                                              width: 160,
                                              height: 30
                                              ,
                                              child: Text("Pontuação :" + widget.v1.toString() ,style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,)),),                                            Container(
                                                width: 110,
                                                height: 30
                                            )
                                          ]
                                      ),
                                    ),
                                    SizedBox(
                                      child: Container(
                                        width: 380,
                                        height: 140,
                                        child: Column(

                                          children: <Widget>[
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: <Widget>[
                                                Container(
                                                  width: 110,
                                                  height: 30
                                                  ,
                                                child: Text("0",style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold,)),),
                                                Container(
                                                  width: 110,
                                                  height: 30
                                                  ),
                                                Container(
                                                  width: 110,
                                                  height: 30,
                                                  child: Row(
                                                      mainAxisAlignment: MainAxisAlignment.end,
                                                      children: <Widget>[
                                                      Text("40",style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold,))
                                                    ]
                                                  ))
                                            ]
                                            ),
                                            Row(
                                                children: <Widget>[
                                                  Container(
                                                      width: 380,
                                            child:
                                            Slider(
                                                      value: widget.v1.toDouble() ,
                                                      min: 0,
                                                      max: 40,
                                                      label: (widget.v1.toString()),
                                                      divisions: 40,
                                                      activeColor: Colors.black,
                                                      inactiveColor: Colors.black
                                                  ))]

                                        ),
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: <Widget>[

                                                Container(
                                                  decoration: BoxDecoration(
                                                    gradient: LinearGradient(
                                                      begin: Alignment.topLeft,
                                                      end: Alignment.bottomRight,
                                                      stops: [0.3, 1],
                                                      colors: [
                                                        Colors.green,
                                                        Colors.yellow
                                                      ],
                                                    ),
                                                  ),
                                                  width: 110,
                                                  height: 30
                                                  ,),
                                                Container(
                                                  decoration: BoxDecoration(
                                                    gradient: LinearGradient(
                                                      begin: Alignment.topLeft,
                                                      end: Alignment.bottomRight,
                                                      stops: [0.3, 1],
                                                      colors: [
                                                        Colors.yellow,
                                                        Colors.grey
                                                      ],
                                                    ),
                                                  ),
                                                  width: 110,
                                                  height: 30
                                                  ,),
                                                Container(
                                                  decoration: BoxDecoration(
                                                    gradient: LinearGradient(
                                                      begin: Alignment.topLeft,
                                                      end: Alignment.bottomRight,
                                                      stops: [0.3, 1],
                                                      colors: [
                                                        Colors.grey,
                                                        Colors.black12
                                                      ],
                                                    ),
                                                  ),
                                                  width: 110,
                                                  height: 30
                                                  ,),

                                              ],

                                            )


                                          ],
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    Text(_textoAutoEstima+ "\n\n",
                                      style: TextStyle(
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.bold,),textAlign: TextAlign.justify,
                                    )
                                    ,
                                    Text('Ansiedade\n\n',
                                      style: TextStyle(
                                        fontSize: 25.0,
                                        fontWeight: FontWeight.bold,),textAlign: TextAlign.center,
                                    ),
                                    SizedBox(
                                      child: Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: <Widget>[
                                            Container(
                                              width: 160,
                                              height: 30
                                              ,
                                              child: Text("Pontuação :" + widget.v2.toString() ,style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,)),),                                            Container(
                                                width: 110,
                                                height: 30
                                            )
                                          ]
                                      ),
                                    ),
                                    SizedBox(
                                      child: Container(
                                        width: 380,
                                        height: 140,
                                        child: Column(

                                          children: <Widget>[
                                            Row(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: <Widget>[
                                                  Container(
                                                    width: 110,
                                                    height: 30
                                                    ,
                                                    child: Text("0",style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold,)),),
                                                  Container(
                                                      width: 110,
                                                      height: 30
                                                  ),
                                                  Container(
                                                      width: 110,
                                                      height: 30,
                                                      child: Row(
                                                          mainAxisAlignment: MainAxisAlignment.end,
                                                          children: <Widget>[
                                                            Text("40",style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold,))
                                                          ]
                                                      ))
                                                ]
                                            ),
                                            Row(
                                                children: <Widget>[
                                                  Container(
                                                      width: 380,
                                                      child:
                                                      Slider(
                                                          value: widget.v2.toDouble() ,
                                                          min: 0,
                                                          max: 40,
                                                          label: (widget.v2.toString()),
                                                          divisions: 40,
                                                          activeColor: Colors.black,
                                                          inactiveColor: Colors.black
                                                      ))]

                                            ),
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: <Widget>[

                                                Container(
                                                  decoration: BoxDecoration(
                                                    gradient: LinearGradient(
                                                      begin: Alignment.topLeft,
                                                      end: Alignment.bottomRight,
                                                      stops: [0.3, 1],
                                                      colors: [
                                                        Colors.green,
                                                        Colors.yellow
                                                      ],
                                                    ),
                                                  ),
                                                  width: 110,
                                                  height: 30
                                                  ,),
                                                Container(
                                                  decoration: BoxDecoration(
                                                    gradient: LinearGradient(
                                                      begin: Alignment.topLeft,
                                                      end: Alignment.bottomRight,
                                                      stops: [0.3, 1],
                                                      colors: [
                                                        Colors.yellow,
                                                        Colors.grey
                                                      ],
                                                    ),
                                                  ),
                                                  width: 110,
                                                  height: 30
                                                  ,),
                                                Container(
                                                  decoration: BoxDecoration(
                                                    gradient: LinearGradient(
                                                      begin: Alignment.topLeft,
                                                      end: Alignment.bottomRight,
                                                      stops: [0.3, 1],
                                                      colors: [
                                                        Colors.grey,
                                                        Colors.black12
                                                      ],
                                                    ),
                                                  ),
                                                  width: 110,
                                                  height: 30
                                                  ,),

                                              ],

                                            )


                                          ],
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    Text(_textoAnsiedade + "\n\n",
                                      style: TextStyle(
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.bold,),textAlign: TextAlign.justify,
                                    ),
                                    Text('Stress\n\n',
                                      style: TextStyle(
                                        fontSize: 25.0,
                                        fontWeight: FontWeight.bold,),textAlign: TextAlign.center,
                                    ),
                                    SizedBox(
                                      child: Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: <Widget>[
                                            Container(
                                              width: 160,
                                              height: 30
                                              ,
                                              child: Text("Pontuação :" + widget.v3.toString() ,style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,)),),                                            Container(
                                                width: 110,
                                                height: 30
                                            )
                                          ]
                                      ),
                                    ),
                                    SizedBox(
                                      child: Container(
                                        width: 380,
                                        height: 140,
                                        child: Column(

                                          children: <Widget>[
                                            Row(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: <Widget>[
                                                  Container(
                                                    width: 110,
                                                    height: 30
                                                    ,
                                                    child: Text("0",style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold,)),),
                                                  Container(
                                                      width: 110,
                                                      height: 30
                                                  ),
                                                  Container(
                                                      width: 110,
                                                      height: 30,
                                                      child: Row(
                                                          mainAxisAlignment: MainAxisAlignment.end,
                                                          children: <Widget>[
                                                            Text("40",style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold,))
                                                          ]
                                                      ))
                                                ]
                                            ),
                                            Row(
                                                children: <Widget>[
                                                  Container(
                                                      width: 380,
                                                      child:
                                                      Slider(
                                                          value: widget.v3.toDouble() ,
                                                          min: 0,
                                                          max: 40,
                                                          label: (widget.v3.toString()),
                                                          divisions: 40,
                                                          activeColor: Colors.black,
                                                          inactiveColor: Colors.black
                                                      ))]

                                            ),
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: <Widget>[

                                                Container(
                                                  decoration: BoxDecoration(
                                                    gradient: LinearGradient(
                                                      begin: Alignment.topLeft,
                                                      end: Alignment.bottomRight,
                                                      stops: [0.3, 1],
                                                      colors: [
                                                        Colors.green,
                                                        Colors.yellow
                                                      ],
                                                    ),
                                                  ),
                                                  width: 110,
                                                  height: 30
                                                  ,),
                                                Container(
                                                  decoration: BoxDecoration(
                                                    gradient: LinearGradient(
                                                      begin: Alignment.topLeft,
                                                      end: Alignment.bottomRight,
                                                      stops: [0.3, 1],
                                                      colors: [
                                                        Colors.yellow,
                                                        Colors.grey
                                                      ],
                                                    ),
                                                  ),
                                                  width: 110,
                                                  height: 30
                                                  ,),
                                                Container(
                                                  decoration: BoxDecoration(
                                                    gradient: LinearGradient(
                                                      begin: Alignment.topLeft,
                                                      end: Alignment.bottomRight,
                                                      stops: [0.3, 1],
                                                      colors: [
                                                        Colors.grey,
                                                        Colors.black12
                                                      ],
                                                    ),
                                                  ),
                                                  width: 110,
                                                  height: 30
                                                  ,),

                                              ],

                                            )


                                          ],
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    Text(_textoStress+ "\n\n",
                                      style: TextStyle(
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.bold,),textAlign: TextAlign.justify,
                                    ),
                                    Text('Dispersão de Atenção\n\n',
                                      style: TextStyle(
                                        fontSize: 25.0,
                                        fontWeight: FontWeight.bold,),textAlign: TextAlign.center,
                                    ),
                                    SizedBox(
                                      child: Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: <Widget>[
                                            Container(
                                              width: 160,
                                              height: 30
                                              ,
                                              child: Text("Pontuação :" + widget.v4.toString() ,style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,)),),                                            Container(
                                                width: 110,
                                                height: 30
                                            )
                                          ]
                                      ),
                                    ),
                                    SizedBox(
                                      child: Container(
                                        width: 380,
                                        height: 140,
                                        child: Column(

                                          children: <Widget>[
                                            Row(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: <Widget>[
                                                  Container(
                                                    width: 110,
                                                    height: 30
                                                    ,
                                                    child: Text("0",style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold,)),),
                                                  Container(
                                                      width: 110,
                                                      height: 30
                                                  ),
                                                  Container(
                                                      width: 110,
                                                      height: 30,
                                                      child: Row(
                                                          mainAxisAlignment: MainAxisAlignment.end,
                                                          children: <Widget>[
                                                            Text("40",style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold,))
                                                          ]
                                                      ))
                                                ]
                                            ),
                                            Row(
                                                children: <Widget>[
                                                  Container(
                                                      width: 380,
                                                      child:
                                                      Slider(
                                                          value: widget.v4.toDouble() ,
                                                          min: 0,
                                                          max: 40,
                                                          label: (widget.v4.toString()),
                                                          divisions: 40,
                                                          activeColor: Colors.black,
                                                          inactiveColor: Colors.black
                                                      ))]

                                            ),
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: <Widget>[

                                                Container(
                                                  decoration: BoxDecoration(
                                                    gradient: LinearGradient(
                                                      begin: Alignment.topLeft,
                                                      end: Alignment.bottomRight,
                                                      stops: [0.3, 1],
                                                      colors: [
                                                        Colors.green,
                                                        Colors.yellow
                                                      ],
                                                    ),
                                                  ),
                                                  width: 110,
                                                  height: 30
                                                  ,),
                                                Container(
                                                  decoration: BoxDecoration(
                                                    gradient: LinearGradient(
                                                      begin: Alignment.topLeft,
                                                      end: Alignment.bottomRight,
                                                      stops: [0.3, 1],
                                                      colors: [
                                                        Colors.yellow,
                                                        Colors.grey
                                                      ],
                                                    ),
                                                  ),
                                                  width: 110,
                                                  height: 30
                                                  ,),
                                                Container(
                                                  decoration: BoxDecoration(
                                                    gradient: LinearGradient(
                                                      begin: Alignment.topLeft,
                                                      end: Alignment.bottomRight,
                                                      stops: [0.3, 1],
                                                      colors: [
                                                        Colors.grey,
                                                        Colors.black12
                                                      ],
                                                    ),
                                                  ),
                                                  width: 110,
                                                  height: 30
                                                  ,),

                                              ],

                                            )


                                          ],
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    Text(_textoDispersao+ "\n\n",
                                      style: TextStyle(
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.bold,),textAlign: TextAlign.justify,
                                    ),
                                    Text('Hiperatividade\n\n',
                                      style: TextStyle(
                                        fontSize: 25.0,
                                        fontWeight: FontWeight.bold,),textAlign: TextAlign.center,
                                    ),
                                    SizedBox(
                                      child: Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: <Widget>[
                                            Container(
                                              width: 160,
                                              height: 30
                                              ,
                                              child: Text("Pontuação :" + widget.v5.toString() ,style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,)),),                                            Container(
                                                width: 110,
                                                height: 30
                                            )
                                          ]
                                      ),
                                    ),
                                    SizedBox(
                                      child: Container(
                                        width: 380,
                                        height: 140,
                                        child: Column(

                                          children: <Widget>[
                                            Row(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: <Widget>[
                                                  Container(
                                                    width: 110,
                                                    height: 30
                                                    ,
                                                    child: Text("0",style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold,)),),
                                                  Container(
                                                      width: 110,
                                                      height: 30
                                                  ),
                                                  Container(
                                                      width: 110,
                                                      height: 30,
                                                      child: Row(
                                                          mainAxisAlignment: MainAxisAlignment.end,
                                                          children: <Widget>[
                                                            Text("40",style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold,))
                                                          ]
                                                      ))
                                                ]
                                            ),
                                            Row(
                                                children: <Widget>[
                                                  Container(
                                                      width: 380,
                                                      child:
                                                      Slider(
                                                          value: widget.v5.toDouble() ,
                                                          min: 0,
                                                          max: 40,
                                                          label: (widget.v5.toString()),
                                                          divisions: 40,
                                                          activeColor: Colors.black,
                                                          inactiveColor: Colors.black
                                                      ))]

                                            ),
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: <Widget>[

                                                Container(
                                                  decoration: BoxDecoration(
                                                    gradient: LinearGradient(
                                                      begin: Alignment.topLeft,
                                                      end: Alignment.bottomRight,
                                                      stops: [0.3, 1],
                                                      colors: [
                                                        Colors.green,
                                                        Colors.yellow
                                                      ],
                                                    ),
                                                  ),
                                                  width: 110,
                                                  height: 30
                                                  ,),
                                                Container(
                                                  decoration: BoxDecoration(
                                                    gradient: LinearGradient(
                                                      begin: Alignment.topLeft,
                                                      end: Alignment.bottomRight,
                                                      stops: [0.3, 1],
                                                      colors: [
                                                        Colors.yellow,
                                                        Colors.grey
                                                      ],
                                                    ),
                                                  ),
                                                  width: 110,
                                                  height: 30
                                                  ,),
                                                Container(
                                                  decoration: BoxDecoration(
                                                    gradient: LinearGradient(
                                                      begin: Alignment.topLeft,
                                                      end: Alignment.bottomRight,
                                                      stops: [0.3, 1],
                                                      colors: [
                                                        Colors.grey,
                                                        Colors.black12
                                                      ],
                                                    ),
                                                  ),
                                                  width: 110,
                                                  height: 30
                                                  ,),

                                              ],

                                            )


                                          ],
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 15,
                                    ),

                                    Text(_textoHiperatividade+ "\n\n",
                                      style: TextStyle(
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.bold,),textAlign: TextAlign.justify,
                                    ),

                                    Text('Problema de relacionamentos\n\n',
                                      style: TextStyle(
                                        fontSize: 25.0,
                                        fontWeight: FontWeight.bold,),textAlign: TextAlign.center,
                                    ),
                                    SizedBox(
                                      child: Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: <Widget>[
                                            Container(
                                              width: 160,
                                              height: 30
                                              ,
                                              child: Text("Pontuação :" + widget.v6.toString() ,style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,)),),                                            Container(
                                                width: 110,
                                                height: 30
                                            )
                                          ]
                                      ),
                                    ),
                                    SizedBox(
                                      child: Container(
                                        width: 380,
                                        height: 140,
                                        child: Column(

                                          children: <Widget>[
                                            Row(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: <Widget>[
                                                  Container(
                                                    width: 110,
                                                    height: 30
                                                    ,
                                                    child: Text("0",style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold,)),),
                                                  Container(
                                                      width: 110,
                                                      height: 30
                                                  ),
                                                  Container(
                                                      width: 110,
                                                      height: 30,
                                                      child: Row(
                                                          mainAxisAlignment: MainAxisAlignment.end,
                                                          children: <Widget>[
                                                            Text("40",style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold,))
                                                          ]
                                                      ))
                                                ]
                                            ),
                                            Row(
                                                children: <Widget>[
                                                  Container(
                                                      width: 380,
                                                      child:
                                                      Slider(
                                                          value: widget.v6.toDouble() ,
                                                          min: 0,
                                                          max: 40,
                                                          label: (widget.v6.toString()),
                                                          divisions: 40,
                                                          activeColor: Colors.black,
                                                          inactiveColor: Colors.black
                                                      ))]

                                            ),
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: <Widget>[

                                                Container(
                                                  decoration: BoxDecoration(
                                                    gradient: LinearGradient(
                                                      begin: Alignment.topLeft,
                                                      end: Alignment.bottomRight,
                                                      stops: [0.3, 1],
                                                      colors: [
                                                        Colors.green,
                                                        Colors.yellow
                                                      ],
                                                    ),
                                                  ),
                                                  width: 110,
                                                  height: 30
                                                  ,),
                                                Container(
                                                  decoration: BoxDecoration(
                                                    gradient: LinearGradient(
                                                      begin: Alignment.topLeft,
                                                      end: Alignment.bottomRight,
                                                      stops: [0.3, 1],
                                                      colors: [
                                                        Colors.yellow,
                                                        Colors.grey
                                                      ],
                                                    ),
                                                  ),
                                                  width: 110,
                                                  height: 30
                                                  ,),
                                                Container(
                                                  decoration: BoxDecoration(
                                                    gradient: LinearGradient(
                                                      begin: Alignment.topLeft,
                                                      end: Alignment.bottomRight,
                                                      stops: [0.3, 1],
                                                      colors: [
                                                        Colors.grey,
                                                        Colors.black12
                                                      ],
                                                    ),
                                                  ),
                                                  width: 110,
                                                  height: 30
                                                  ,),

                                              ],

                                            )


                                          ],
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 15,
                                    ),

                                    Text(_textoRelacionamento+ "\n\n",
                                      style: TextStyle(
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.bold,),textAlign: TextAlign.justify,
                                    ),
                                    Text('Depressão\n\n'+ "\n\n",
                                      style: TextStyle(
                                        fontSize: 25.0,
                                        fontWeight: FontWeight.bold,),textAlign: TextAlign.center,
                                    ),
                                    SizedBox(
                                      child: Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: <Widget>[
                                            Container(
                                              width: 160,
                                              height: 30
                                              ,
                                              child: Text("Pontuação :" + widget.v7.toString() ,style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,)),),                                            Container(
                                                width: 110,
                                                height: 30
                                            )
                                          ]
                                      ),
                                    ),
                                    SizedBox(
                                      child: Container(
                                        width: 380,
                                        height: 140,
                                        child: Column(

                                          children: <Widget>[
                                            Row(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: <Widget>[
                                                  Container(
                                                    width: 110,
                                                    height: 30
                                                    ,
                                                    child: Text("0",style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold,)),),
                                                  Container(
                                                      width: 110,
                                                      height: 30
                                                  ),
                                                  Container(
                                                      width: 110,
                                                      height: 30,
                                                      child: Row(
                                                          mainAxisAlignment: MainAxisAlignment.end,
                                                          children: <Widget>[
                                                            Text("40",style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold,))
                                                          ]
                                                      ))
                                                ]
                                            ),
                                            Row(
                                                children: <Widget>[
                                                  Container(
                                                      width: 380,
                                                      child:
                                                      Slider(
                                                          value: widget.v7.toDouble() ,
                                                          min: 0,
                                                          max: 40,
                                                          label: (widget.v7.toString()),
                                                          divisions: 40,
                                                          activeColor: Colors.black,
                                                          inactiveColor: Colors.black
                                                      ))]

                                            ),
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: <Widget>[

                                                Container(
                                                  decoration: BoxDecoration(
                                                    gradient: LinearGradient(
                                                      begin: Alignment.topLeft,
                                                      end: Alignment.bottomRight,
                                                      stops: [0.3, 1],
                                                      colors: [
                                                        Colors.green,
                                                        Colors.yellow
                                                      ],
                                                    ),
                                                  ),
                                                  width: 110,
                                                  height: 30
                                                  ,),
                                                Container(
                                                  decoration: BoxDecoration(
                                                    gradient: LinearGradient(
                                                      begin: Alignment.topLeft,
                                                      end: Alignment.bottomRight,
                                                      stops: [0.3, 1],
                                                      colors: [
                                                        Colors.yellow,
                                                        Colors.grey
                                                      ],
                                                    ),
                                                  ),
                                                  width: 110,
                                                  height: 30
                                                  ,),
                                                Container(
                                                  decoration: BoxDecoration(
                                                    gradient: LinearGradient(
                                                      begin: Alignment.topLeft,
                                                      end: Alignment.bottomRight,
                                                      stops: [0.3, 1],
                                                      colors: [
                                                        Colors.grey,
                                                        Colors.black12
                                                      ],
                                                    ),
                                                  ),
                                                  width: 110,
                                                  height: 30
                                                  ,),

                                              ],

                                            )


                                          ],
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 15,
                                    ),

                                    Text(_textoDepressao+ "\n\n",
                                      style: TextStyle(
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.bold,),textAlign: TextAlign.justify,
                                    ),
                                    Text('Auto Lessão\n\n',
                                      style: TextStyle(
                                        fontSize: 25.0,
                                        fontWeight: FontWeight.bold,),textAlign: TextAlign.center,
                                    ),
                                    SizedBox(
                                      child: Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: <Widget>[
                                            Container(
                                              width: 160,
                                              height: 30
                                              ,
                                              child: Text("Pontuação :" + widget.v8.toString() ,style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,)),),                                            Container(
                                                width: 110,
                                                height: 30
                                            )
                                          ]
                                      ),
                                    ),
                                    SizedBox(
                                      child: Container(
                                        width: 380,
                                        height: 140,
                                        child: Column(

                                          children: <Widget>[
                                            Row(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: <Widget>[
                                                  Container(
                                                    width: 110,
                                                    height: 30
                                                    ,
                                                    child: Text("0",style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold,)),),
                                                  Container(
                                                      width: 110,
                                                      height: 30
                                                  ),
                                                  Container(
                                                      width: 110,
                                                      height: 30,
                                                      child: Row(
                                                          mainAxisAlignment: MainAxisAlignment.end,
                                                          children: <Widget>[
                                                            Text("40",style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold,))
                                                          ]
                                                      ))
                                                ]
                                            ),
                                            Row(
                                                children: <Widget>[
                                                  Container(
                                                      width: 380,
                                                      child:
                                                      Slider(
                                                          value: widget.v8.toDouble() ,
                                                          min: 0,
                                                          max: 40,
                                                          label: (widget.v8.toString()),
                                                          divisions: 40,
                                                          activeColor: Colors.black,
                                                          inactiveColor: Colors.black
                                                      ))]

                                            ),
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: <Widget>[

                                                Container(
                                                  decoration: BoxDecoration(
                                                    gradient: LinearGradient(
                                                      begin: Alignment.topLeft,
                                                      end: Alignment.bottomRight,
                                                      stops: [0.3, 1],
                                                      colors: [
                                                        Colors.green,
                                                        Colors.yellow
                                                      ],
                                                    ),
                                                  ),
                                                  width: 110,
                                                  height: 30
                                                  ,),
                                                Container(
                                                  decoration: BoxDecoration(
                                                    gradient: LinearGradient(
                                                      begin: Alignment.topLeft,
                                                      end: Alignment.bottomRight,
                                                      stops: [0.3, 1],
                                                      colors: [
                                                        Colors.yellow,
                                                        Colors.grey
                                                      ],
                                                    ),
                                                  ),
                                                  width: 110,
                                                  height: 30
                                                  ,),
                                                Container(
                                                  decoration: BoxDecoration(
                                                    gradient: LinearGradient(
                                                      begin: Alignment.topLeft,
                                                      end: Alignment.bottomRight,
                                                      stops: [0.3, 1],
                                                      colors: [
                                                        Colors.grey,
                                                        Colors.black12
                                                      ],
                                                    ),
                                                  ),
                                                  width: 110,
                                                  height: 30
                                                  ,),

                                              ],

                                            )


                                          ],
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    Text(_textoAutoLesao+ "\n\n",
                                      style: TextStyle(
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.bold,),textAlign: TextAlign.justify,
                                    )
                                    ,]
                              )
                          ),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 60,
                          alignment: Alignment.center,
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
                                Navigator.pushNamed(
                                    context, "/Home");
                              },
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    )
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Container(
                  child: Center(
                    child: Column(
                      children: <Widget>[
                        Text(
                          'Diagnóstico Emocional', style: TextStyle(
                            fontSize: 24.0, fontWeight: FontWeight.bold),),
                        Expanded(
                          child: charts.LineChart(
                              _seriesLineData,
                              defaultRenderer: new charts.LineRendererConfig(
                                  includeArea: true, stacked: true),
                              animate: true,
                              animationDuration: Duration(seconds: 5),
                              behaviors: [
                                new charts.ChartTitle('Nivel de Talento',
                                    behaviorPosition: charts.BehaviorPosition
                                        .bottom,
                                    titleOutsideJustification: charts
                                        .OutsideJustification.middleDrawArea),
                                new charts.ChartTitle('Reconhecimento',
                                    behaviorPosition: charts.BehaviorPosition
                                        .start,
                                    titleOutsideJustification: charts
                                        .OutsideJustification.middleDrawArea),
                                new charts.ChartTitle('Resultado',
                                  behaviorPosition: charts.BehaviorPosition.end,
                                  titleOutsideJustification: charts
                                      .OutsideJustification.middleDrawArea,
                                )
                              ]
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Resultados {
  String place;
  int year;
  int quantity;
  Color cor;

  Resultados(this.year, this.place, this.quantity, this.cor);
}

class Task {
  String task;
  double taskvalue;
  Color colorval;

  Task(this.task, this.taskvalue, this.colorval);
}

class Sales {
  int yearval;
  int salesval;

  Sales(this.yearval, this.salesval);
}