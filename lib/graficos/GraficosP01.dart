import 'package:date_format/date_format.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:path/path.dart';
import 'dart:math' as math;
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:charts_flutter/flutter.dart' as charts;

import '../Home.dart';

class GraficosP01 extends StatefulWidget {
  String _codAluno;
  int v1;
  Color cv1;

  GraficosP01(this._codAluno,
      this.v1,
      this.cv1,
);

  _GraficosP01State createState() => _GraficosP01State();

}

class _GraficosP01State extends State<GraficosP01> {
  List<charts.Series<Resultados, String>> _seriesData;
  List<charts.Series<Task, String>> _seriesPieData;
  List<charts.Series<Sales, int>> _seriesLineData;

  _generateData() async {
    var data1 = [
      new Resultados(1, 'AUTO ESTIMA', widget.v1, widget.cv1),
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

  String _textoAutoEstima =
      "De fato, a autoestima extremamente alta pode ser um sinal de desajuste. Todos nós conhecemos pessoas que pensam que são mais seres humanos maravilhosos vivos, mesmo que suas falhas e limitações são óbvios para todos que se preocupam em dar um olhar superficial. \n \n" +
      "Às vezes chamado de alta autoestima defensiva, as pessoas com esta qualidade parecem ser capazes de colocar um giro positivo em mesmo os piores fracassos. Parece ser o caso de que as pessoas com moderadamente alta autoestima são os mais bem ajustados. Eles geralmente sentem bom sobre si mesmos, mas eles são capazes de reconhecer suas falhas e fazer algo sobre eles.\n\n "+
      "Agora que eu desabafei minhas frustrações sobre a visão de que todas crianças devem ser elogiados incondicionalmente, deixe-me dizer que eu viram um número de clientes que sofreram terrivelmente de pobres autoestima. Talvez um dos exemplos mais pungentes foi um \n "+
      "Estudante de pós-graduação eu vou chamar Doug. Ele sofria de ansiedade intensa e depressão, mesmo que sua vida estivesse indo muito bem. Doug tinha tido uma carreira acadêmica bem sucedida, foi casado com uma mulher que o amava, e era um pai, doting. No entanto, ele era incapaz de articular qualquer coisa boa sobre si mesmo. Durante um sessão de terapia, eu disse a ele que eu não estava indo mais longe até que ele pudesse dizer uma coisa positiva sobre si mesmo. Ele passou cinco minutos agitados mulling sobre possibilidades antes que ele disse: \n" +
      "Eu costumava tocar bem  piano. Quando eu disse a ele que ele tinha que me dizer algo bom sobre si mesmo no presente, ele estava completamente perplexo. Eu finalmente cedeu e pediu-lhe para me dizer o que sua esposa diria sobre suas boas qualidades. Ele foi capaz de listar várias qualidades que ela apontaria para, mas depois imediatamente descartou-os como não confiáveis. Afinal, a esposa de Doug amava-o e, consequentemente, ela poderia não ser objetivo. Assim como pessoas com alta autoestima defensiva não pode reconhecer qualquer informação negativa sobre si mesmos, pessoas como Doug não pode reconhecer nada positivo sobre si. \n\n"+
  "Se você marcou abaixo do percentil 30 na Autoestima Escala de classificação, você, sem dúvida, merece se sentir melhor consigo mesmo. Eu não acredito que as pessoas devem ter inequivocamente positivo sentimentos sobre si mesmos, mas eu acredito que quase todo mundo merece se sentir geralmente bem sobre o tipo de pessoa eles são. A primeira evidência que você merece sentir melhor sobre si mesmo é que você está lendo essas palavras. Isso significa que você se importa em se tornar uma pessoa melhor, e você se preocupam com a forma como os outros reagem a você. E pessoas com autoesteem modesto muitas vezes fazem amigos carinhosos e leais. Porque eles estão convencidos de suas próprias inadequações, eles estão mais do que felizes em mudar o foco da atenção longe de si mesmos para aqueles em torno deles. A menos que sua pobre autoestima tenha feito você cortar se fora dos outros completamente, você provavelmente tem vários pessoas em sua vida que se preocupam com você e valorizar o tempo que eles gastar com você. Isso só mostra que você tem razão para se sentir bem sobre você mesmo. "+
  "Uma segunda chave para se sentir melhor sobre si mesmo é aceitar que você não precisa ser perfeito para se sentir bem consigo mesmo. "+
  "Pobre autoestima foi uma das minhas lutas quando eu estava mais jovem, e esta foi uma lição que eu aprendi apenas com o tempo. Não, eu tinha. para admitir, eu não era brilhante, mas eu vim a aceitar que eu era inteligente o suficiente para obter um Ph.D. e para fazer o meu trabalho razoavelmente bem. Não, eu estava. não um clone Robert Redford, mas eu estava apresentável o suficiente para seduzir uma mulher atraente e vivaz para se casar comigo. E não, eu estava. não o cara mais extrovertido e divertido ao redor, mas eu era interessante o suficiente para desenvolver um círculo valorizado de amigos. "+
  "Levei muitos anos até me sentir geralmente confortável com mim mesmo, mas você pode acelerar o processo fazendo um concertado" ;
//

  // Ansiedade

  double _valorAnsiedade (double d) => d;
  Color _red = Colors.red;
  Color _orange = Colors.deepOrangeAccent;
  Color _yellow = Colors.yellow;
  Color _lime = Colors.lightGreenAccent;
  Color _green = Colors.green;
  //
  double fontnumber = 16.0;
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
                          'Gerenciamento de Tempo',
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
                          //     child: Image.asset("images/logo.png"),
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
                                    //parte-1
                                    Text('ATITUDES\n',
                                      style: TextStyle(
                                        fontSize: 25.0,
                                        fontWeight: FontWeight.bold,),textAlign: TextAlign.center,
                                    ),

                                    Container(
                                        width: 360,
                                        height: 170,
                                        child: Column(
                                          children: [
                                            SizedBox(
                                                width: 360,
                                                height: 30,
                                                child:
                                                Container(
                                                    padding: EdgeInsets.only(top : 4),
                                                    decoration: BoxDecoration(
                                                      color: Colors.white,
                                                      border: Border.all(),
                                                    ),
                                                    child: Text("Pontuação: "+ widget.v1.toString(),
                                                      style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: fontnumber,
                                                      ),
                                                      textAlign: TextAlign.center,
                                                    )
                                                )
                                            ),
                                            SizedBox(
                                              width: 360,
                                              height: 60,child:
                                            Row(
                                              children: [
                                                Container(
                                                    width: 100,
                                                    height: 60,
                                                    decoration: BoxDecoration(
                                                      color: (widget.v1 < 5) ? _red : (widget.v1 < 10) ? _orange : (widget.v1 < 16) ? _yellow : (widget.v1 < 19) ? _lime : _green,
                                                      border: Border.all(),
                                                    ),
                                                    child: Text(
                                                        (widget.v1 < 195) ? "I – XXXXXXXXXXXXXXXXXXXXXXXX" :
                                                        (widget.v1 < 211) ? "II – xxxxxxxxxxxxxxxxxxxxxxx" :
                                                        (widget.v1 < 228) ? "III – xxxxxxxxxxxxxxxxxxxxxx" :
                                                        (widget.v1 < 245) ? "IV – xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx" : "V  – xxxxxxxxxxxxxxxxxxxxxxxxxxxxxx" ,
                                                        textAlign: TextAlign.center,
                                                        style: TextStyle(
                                                          color: Colors.black,
                                                          fontSize: 12,
                                                        )
                                                    )
                                                ),
                                                Container(
                                                    width: 260,
                                                    height: 60,
                                                    decoration: BoxDecoration(
                                                      color: Colors.white,
                                                      border: Border.all(),
                                                    ),
                                                    child: Text(
                                                        (widget.v1 < 5) ? "Você tem entendimento limitado em gerenciamento de tempo. Você tem muitas oportunidades de desenvolver suas habilidades." :
                                                        (widget.v1 < 10) ? "Você tem entendimento aprimorado, mas ainda assim, limitado sbre gerenciamento de tempo. Desenvolver suas habilidades continua a ser su prioridade." :
                                                        (widget.v1 < 16) ? "Você tem conhecimento básico e habilidades para gerenciamento de tempo. Algumas áreas ainda precisam evoluir." :
                                                        (widget.v1 < 19) ? "Você tem um alto conhecimento e habilidades para gerenciar o tempo. Você está n caminho certo para se tornar um Mestre do Tempo." :
                                                        "Você é um mestre no Domínio do Tempo. Você está pronto pra compartilhar seu conhecimento e habilidades sobre o gerenciamento do tempo.",
                                                        textAlign: TextAlign.center,
                                                        style: TextStyle(
                                                          color: Colors.black,
                                                          fontSize: 12,
                                                        )
                                                    )
                                                ),
                                              ],
                                            ),),
                                            SizedBox(
                                              width: 360,
                                              height: 20,child:
                                            Row(
                                              children: [
                                                Container(padding: EdgeInsets.only(top:2),
                                                    height: 20,
                                                    width:45,
                                                    decoration: BoxDecoration(
                                                      color: Colors.red,
                                                      border: Border.all(),
                                                    ),
                                                    child: Text(" I ",
                                                        textAlign: TextAlign.center,
                                                        style: TextStyle(
                                                          color: Colors.black,
                                                          fontSize: 15,
                                                        )
                                                    )
                                                ),
                                                Container(padding: EdgeInsets.only(top:2),
                                                    width: 67.5,height: 20,
                                                    decoration: BoxDecoration(
                                                      color: Colors.orange,
                                                      border: Border.all(),
                                                    ),
                                                    child: Text(" II ",
                                                        textAlign: TextAlign.center,
                                                        style: TextStyle(
                                                          color: Colors.black,
                                                          fontSize: 15,
                                                        )
                                                    )
                                                ),
                                                Container(padding: EdgeInsets.only(top:2),
                                                    width: 135,height: 20,
                                                    decoration: BoxDecoration(
                                                      color: Colors.yellow,
                                                      border: Border.all(),
                                                    ),
                                                    child: Text(" III ",
                                                        textAlign: TextAlign.center,
                                                        style: TextStyle(
                                                          color: Colors.black,
                                                          fontSize: 15,
                                                        )
                                                    )
                                                ),
                                                Container(padding: EdgeInsets.only(top:2),
                                                    width: 67.5,height: 20,
                                                    decoration: BoxDecoration(
                                                      color: Colors.lightGreenAccent,
                                                      border: Border.all(),
                                                    ),
                                                    child: Text(" IV ",
                                                        textAlign: TextAlign.center,
                                                        style: TextStyle(
                                                          color: Colors.black,
                                                          fontSize: 15,
                                                        )
                                                    )
                                                ),
                                                Container(padding: EdgeInsets.only(top:2),
                                                    width: 45,height: 20,
                                                    decoration: BoxDecoration(
                                                      color: Colors.green,
                                                      border: Border.all(),
                                                    ),
                                                    child: Text(" V ",
                                                        textAlign: TextAlign.center,
                                                        style: TextStyle(
                                                          color: Colors.black,
                                                          fontSize: 15,
                                                        )
                                                    )
                                                ),

                                              ],
                                            ),),
                                            SizedBox(
                                              width: 360,
                                              height: 30,child:
                                            Row(
                                              children: [

                                                Container(padding: EdgeInsets.only(top:5),
                                                    width: 22.5,height: 30,
                                                    decoration: BoxDecoration(
                                                        color: Colors.white,
                                                        border: Border.all()),
                                                    child: Text("5",textAlign: TextAlign.center,
                                                      style: TextStyle(
                                                        color : (widget.v1 == 5) ? Colors.black : Colors.white70,
                                                        fontSize: fontnumber,
                                                      ),)
                                                ),
                                                Container(padding: EdgeInsets.only(top:5),
                                                    width: 22.5,height: 30,
                                                    decoration: BoxDecoration(
                                                        color: Colors.white,
                                                        border: Border.all()),
                                                    child: Text("6",textAlign: TextAlign.center,
                                                      style: TextStyle(

                                                        color : (widget.v1 == 6) ? Colors.black : Colors.white70,
                                                        fontSize: fontnumber,
                                                      ),)
                                                ),
                                                Container(padding: EdgeInsets.only(top:5),
                                                    width: 22.5,height: 30,
                                                    decoration: BoxDecoration(
                                                        color: Colors.white,
                                                        border: Border.all()),
                                                    child: Text("7",textAlign: TextAlign.center,
                                                      style: TextStyle(

                                                        color : (widget.v1 == 7) ? Colors.black : Colors.white70,
                                                        fontSize: fontnumber,
                                                      ),)
                                                ),
                                                Container(padding: EdgeInsets.only(top:5),
                                                    width: 22.5,height: 30,
                                                    decoration: BoxDecoration(
                                                        color: Colors.white,
                                                        border: Border.all()),
                                                    child: Text("8",textAlign: TextAlign.center,
                                                      style: TextStyle(

                                                        color : (widget.v1 == 8) ? Colors.black : Colors.white70,
                                                        fontSize: fontnumber,
                                                      ),)
                                                ),
                                                Container(padding: EdgeInsets.only(top:5),
                                                    width: 22.5,height: 30,
                                                    decoration: BoxDecoration(
                                                        color: Colors.white,
                                                        border: Border.all()),
                                                    child: Text("9",textAlign: TextAlign.center,
                                                      style: TextStyle(

                                                        color : (widget.v1 == 9) ? Colors.black : Colors.white70,
                                                        fontSize: fontnumber,
                                                      ),)
                                                ),
                                                Container(padding: EdgeInsets.only(top:5),
                                                    width: 22.5,height: 30,
                                                    decoration: BoxDecoration(
                                                        color: Colors.white,
                                                        border: Border.all()),
                                                    child: Text("10",textAlign: TextAlign.center,
                                                      style: TextStyle(

                                                        color : (widget.v1 == 10) ? Colors.black : Colors.white70,
                                                        fontSize: fontnumber,
                                                      ),)
                                                ),
                                                Container(padding: EdgeInsets.only(top:5),
                                                    width: 22.5,height: 30,
                                                    decoration: BoxDecoration(
                                                        color: Colors.white,
                                                        border: Border.all()),
                                                    child: Text("11",textAlign: TextAlign.center,
                                                      style: TextStyle(

                                                        color : (widget.v1 == 11) ? Colors.black : Colors.white70,
                                                        fontSize: fontnumber,
                                                      ),)
                                                ),
                                                Container(padding: EdgeInsets.only(top:5),
                                                    width: 22.5,height: 30,
                                                    decoration: BoxDecoration(
                                                        color: Colors.white,
                                                        border: Border.all()),
                                                    child: Text("12",textAlign: TextAlign.center,
                                                      style: TextStyle(

                                                        color : (widget.v1 == 12) ? Colors.black : Colors.white70,
                                                        fontSize: fontnumber,
                                                      ),)
                                                ),
                                                Container(padding: EdgeInsets.only(top:5),
                                                    width: 22.5,height: 30,
                                                    decoration: BoxDecoration(
                                                        color: Colors.white,
                                                        border: Border.all()),
                                                    child: Text("13",textAlign: TextAlign.center,
                                                      style: TextStyle(

                                                        color : (widget.v1 == 13) ? Colors.black : Colors.white70,
                                                        fontSize: fontnumber,
                                                      ),)
                                                ),
                                                Container(padding: EdgeInsets.only(top:5),
                                                    width: 22.5,height: 30,
                                                    decoration: BoxDecoration(
                                                        color: Colors.white,
                                                        border: Border.all()),
                                                    child: Text("14",textAlign: TextAlign.center,
                                                      style: TextStyle(

                                                        color : (widget.v1 == 14) ? Colors.black : Colors.white70,
                                                        fontSize: fontnumber,
                                                      ),)
                                                ),
                                                Container(padding: EdgeInsets.only(top:5),
                                                    width: 22.5,height: 30,
                                                    decoration: BoxDecoration(
                                                        color: Colors.white,
                                                        border: Border.all()),
                                                    child: Text("15",textAlign: TextAlign.center,
                                                      style: TextStyle(

                                                        color : (widget.v1 == 15) ? Colors.black : Colors.white70,
                                                        fontSize: fontnumber,
                                                      ),)
                                                ),
                                                Container(padding: EdgeInsets.only(top:5),
                                                    width: 22.5,height: 30,
                                                    decoration: BoxDecoration(
                                                        color: Colors.white,
                                                        border: Border.all()),
                                                    child: Text("16",textAlign: TextAlign.center,
                                                      style: TextStyle(

                                                        color : (widget.v1 == 16) ? Colors.black : Colors.white70,
                                                        fontSize: fontnumber,
                                                      ),)
                                                ),
                                                Container(padding: EdgeInsets.only(top:5),
                                                    width: 22.5,height: 30,
                                                    decoration: BoxDecoration(
                                                        color: Colors.white,
                                                        border: Border.all()),
                                                    child: Text("17",textAlign: TextAlign.center,
                                                      style: TextStyle(

                                                        color : (widget.v1 == 17) ? Colors.black : Colors.white70,
                                                        fontSize: fontnumber,
                                                      ),)
                                                ),
                                                Container(padding: EdgeInsets.only(top:5),
                                                    width: 22.5,height: 30,
                                                    decoration: BoxDecoration(
                                                        color: Colors.white,
                                                        border: Border.all()),
                                                    child: Text("18",textAlign: TextAlign.center,
                                                      style: TextStyle(

                                                        color : (widget.v1 == 18) ? Colors.black : Colors.white70,
                                                        fontSize: fontnumber,
                                                      ),)
                                                ),
                                                Container(padding: EdgeInsets.only(top:5),
                                                    width: 22.5,height: 30,
                                                    decoration: BoxDecoration(
                                                        color: Colors.white,
                                                        border: Border.all()),
                                                    child: Text("19",textAlign: TextAlign.center,
                                                      style: TextStyle(

                                                        color : (widget.v1 == 19) ? Colors.black : Colors.white70,
                                                        fontSize: fontnumber,
                                                      ),)
                                                ),
                                                Container(padding: EdgeInsets.only(top:5),
                                                    width: 22.5,height: 30,
                                                    decoration: BoxDecoration(
                                                        color: Colors.white,
                                                        border: Border.all()),
                                                    child: Text("20",textAlign: TextAlign.center,
                                                      style: TextStyle(

                                                        color : (widget.v1 == 20) ? Colors.black : Colors.white70,
                                                        fontSize: fontnumber,
                                                      ),)
                                                )

                                              ],
                                            ),),
                                          ],
                                        )
                                    ),
                                    //texto-1
                                    Text(_textoAutoEstima+ "\n\n",
                                      style: TextStyle(
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.bold,),textAlign: TextAlign.justify,
                                    )
                                   //
                                  ]
                              )
                            //
                            //
                            //
                            //
                          ),
                          //
                          //
                          //
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