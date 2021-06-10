import 'package:date_format/date_format.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:path/path.dart';
import 'dart:math' as math;
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:charts_flutter/flutter.dart' as charts;


import '../Home.dart';
import '../ResultadosAdm.dart';

class ResultaPD1 extends StatefulWidget {
  String _codAluno;
  int percepcao_deducao;
  int p01;
  int p02;
  int p03;
  int p04;
  int p05;
  int p06;
  int p07;
  int p08;
  int p09;
  int p10;
  int p11;
  int p12;
  int p13;
  int p14;
  int p15;
  int p16;
  int p17;
  int p18;
  int p19;
  int p20;
  int p21;
  int p22;
  int p23;
  int p24;
  int p25;
  int p26;


  ResultaPD1(this._codAluno,
      this.percepcao_deducao,
      this.p01,
      this.p02,
      this.p03,
      this.p04,
      this.p05,
      this.p06,
      this.p07,
      this.p08,
      this.p09,
      this.p10,
      this.p11,
      this.p12,
      this.p13,
      this.p14,
      this.p15,
      this.p16,
      this.p17,
      this.p18,
      this.p19,
      this.p20,
      this.p21,
      this.p22,
      this.p23,
      this.p24,
      this.p25,
      this.p26
      );

  _ResultaPD1State createState() => _ResultaPD1State();

}

class _ResultaPD1State extends State<ResultaPD1> {
  List<charts.Series<Resultados, String>> _seriesData;
  List<charts.Series<Task, String>> _seriesPieData;
  List<charts.Series<Sales, int>> _seriesLineData;
  AnimationController controller;
  BorderRadiusGeometry _bR = BorderRadius.circular(8);

  _generateData() async {
    var data1 = [
      new Resultados(1, 'Percpção Dedução', widget.percepcao_deducao, _cv1),
    ];

    var piedata = [

      new Task('Dominância', 30.1, Color(0xff109618)),
      new Task('Influência', 19.9, Color(0xfffdbe19)),
      new Task('Estabilidade', 32.2, Color(0xffff9900)),
      new Task('Conformidade', 17.8, Color(0xffdc3912)),
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


  }
  _iniciaDb() {
    if ((widget.percepcao_deducao > 0 ) && (widget.percepcao_deducao < 3 )) {_cv1 = Colors.red;}
    else if ((widget.percepcao_deducao > 2) && (widget.percepcao_deducao < 6)) {_cv1 = Colors.deepOrange;}
    else if ((widget.percepcao_deducao > 5) && (widget.percepcao_deducao < 8)) {_cv1 = Colors.deepOrangeAccent;}
    else if ((widget.percepcao_deducao > 7 ) && (widget.percepcao_deducao < 11)) {_cv1 = Colors.orange;}
    else if ((widget.percepcao_deducao > 10 ) && (widget.percepcao_deducao < 13)) {_cv1 = Colors.yellowAccent;}
    else if ((widget.percepcao_deducao > 12 ) && (widget.percepcao_deducao < 15)) {_cv1 = Colors.yellowAccent;}
    else if ((widget.percepcao_deducao > 14 ) && (widget.percepcao_deducao < 18)) {_cv1 = Colors.limeAccent;}
    else if ((widget.percepcao_deducao > 17 ) && (widget.percepcao_deducao < 20)) {_cv1 = Colors.lime;}
    else if ((widget.percepcao_deducao > 19 ) && (widget.percepcao_deducao < 23)) {_cv1 = Colors.lightGreenAccent;}
    else if ((widget.percepcao_deducao > 22)) {_cv1 = Colors.green;}

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

  double _valorpercepcaodeducao (double d) => d;

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
      _iniciaDb();
      _valorpercepcaodeducao(widget.percepcao_deducao.toDouble());
    });
    super.initState();
    _seriesData = List<charts.Series<Resultados, String>>();
    _seriesPieData = List<charts.Series<Task, String>>();
    _seriesLineData = List<charts.Series<Sales, int>>();

    _generateData();
  }

  Color _cv1 = Colors.grey;


  @override
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
    double  h10p = heightlua * 0.1;
    double  hespace = heightlua * 0.02;
//
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
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
                          'Dedução de Percepção',
                          style: TextStyle(fontSize: 10.0,
                              fontWeight: FontWeight.bold),),
                        Expanded(
                          child: charts.BarChart(
                            _seriesData,
                            animate: true,
                            vertical: false,
                            barGroupingType: charts.BarGroupingType.stacked,
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
                                        builder: (context) => ResultadosAdm(widget._codAluno)
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
                                    Row(
                                        children: <Widget>[
                                          AnimatedContainer(
                                            //  padding: EdgeInsets.only(top : padbox),
                                              width: w20p,
                                              height: h10p,
                                              decoration: BoxDecoration(
                                                color: widget.p01 == 1 ? Colors.green: Colors.red,
                                                borderRadius: _bR,
                                              ),
                                              alignment: Alignment.center,
                                              duration: Duration(seconds: 3),
                                              curve: Curves.fastLinearToSlowEaseIn,
                                              child:
                                              Text("RESPOSTA 01",textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    color: Colors.black ,
                                                    fontWeight: FontWeight.bold
                                                ),
                                              )
                                          ),
                                          SizedBox(width : 15),
                                          AnimatedContainer(
                                            //  padding: EdgeInsets.only(top : padbox),
                                              width: w20p,
                                              height: h10p,
                                              decoration: BoxDecoration(
                                                color: widget.p02 == 1 ? Colors.green: Colors.red,
                                                borderRadius: _bR,
                                              ),
                                              alignment: Alignment.center,
                                              duration: Duration(seconds: 3),
                                              curve: Curves.fastLinearToSlowEaseIn,
                                              child:
                                              Text("RESPOSTA 01",textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    color: Colors.black ,
                                                    fontWeight: FontWeight.bold
                                                ),
                                              )
                                          ),
                                          SizedBox(width : 15),
                                          AnimatedContainer(
                                            //  padding: EdgeInsets.only(top : padbox),
                                              width: w20p,
                                              height: h10p,
                                              decoration: BoxDecoration(
                                                color: widget.p03 == 3 ? Colors.green: Colors.red,
                                                borderRadius: _bR,
                                              ),
                                              alignment: Alignment.center,
                                              duration: Duration(seconds: 3),
                                              curve: Curves.fastLinearToSlowEaseIn,
                                              child:
                                              Text("RESPOSTA 01",textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    color: Colors.black ,
                                                    fontWeight: FontWeight.bold
                                                ),
                                              )
                                          ),
                                          SizedBox(width : 15),
                                          AnimatedContainer(
                                            //  padding: EdgeInsets.only(top : padbox),
                                              width: w20p,
                                              height: h10p,
                                              decoration: BoxDecoration(
                                                color: widget.p04 == 4 ? Colors.green: Colors.red,
                                                borderRadius: _bR,
                                              ),
                                              alignment: Alignment.center,
                                              duration: Duration(seconds: 3),
                                              curve: Curves.fastLinearToSlowEaseIn,
                                              child:
                                              Text("RESPOSTA 01",textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    color: Colors.black ,
                                                    fontWeight: FontWeight.bold
                                                ),
                                              )
                                          ),
                                          SizedBox(height: 5)]),
                                    //
                                    Row(
                                        children: <Widget>[
                                          AnimatedContainer(
                                            //  padding: EdgeInsets.only(top : padbox),
                                              width: w20p,
                                              height: h10p,
                                              decoration: BoxDecoration(
                                                color: widget.p05 == 1 ? Colors.green: Colors.red,
                                                borderRadius: _bR,
                                              ),
                                              alignment: Alignment.center,
                                              duration: Duration(seconds: 3),
                                              curve: Curves.fastLinearToSlowEaseIn,
                                              child:
                                              Text("RESPOSTA 01",textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    color: Colors.black ,
                                                    fontWeight: FontWeight.bold
                                                ),
                                              )
                                          ),
                                          SizedBox(width : 15),
                                          AnimatedContainer(
                                            //  padding: EdgeInsets.only(top : padbox),
                                              width: w20p,
                                              height: h10p,
                                              decoration: BoxDecoration(
                                                color: widget.p06 == 2 ? Colors.green: Colors.red,
                                                borderRadius: _bR,
                                              ),
                                              alignment: Alignment.center,
                                              duration: Duration(seconds: 3),
                                              curve: Curves.fastLinearToSlowEaseIn,
                                              child:
                                              Text("RESPOSTA 01",textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    color: Colors.black ,
                                                    fontWeight: FontWeight.bold
                                                ),
                                              )
                                          ),
                                          SizedBox(width : 15),
                                          AnimatedContainer(
                                            //  padding: EdgeInsets.only(top : padbox),
                                              width: w20p,
                                              height: h10p,
                                              decoration: BoxDecoration(
                                                color: widget.p07 == 2 ? Colors.green: Colors.red,
                                                borderRadius: _bR,
                                              ),
                                              alignment: Alignment.center,
                                              duration: Duration(seconds: 3),
                                              curve: Curves.fastLinearToSlowEaseIn,
                                              child:
                                              Text("RESPOSTA 01",textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    color: Colors.black ,
                                                    fontWeight: FontWeight.bold
                                                ),
                                              )
                                          ),
                                          SizedBox(width : 15),
                                          AnimatedContainer(
                                            //  padding: EdgeInsets.only(top : padbox),
                                              width: w20p,
                                              height: h10p,
                                              decoration: BoxDecoration(
                                                color: widget.p08 == 2 ? Colors.green: Colors.red,
                                                borderRadius: _bR,
                                              ),
                                              alignment: Alignment.center,
                                              duration: Duration(seconds: 3),
                                              curve: Curves.fastLinearToSlowEaseIn,
                                              child:
                                              Text("RESPOSTA 01",textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    color: Colors.black ,
                                                    fontWeight: FontWeight.bold
                                                ),
                                              )
                                          ),
                                          SizedBox(height: 5)]),
                                    //
                                    Row(
                                        children: <Widget>[
                                          AnimatedContainer(
                                            //  padding: EdgeInsets.only(top : padbox),
                                              width: w20p,
                                              height: h10p,
                                              decoration: BoxDecoration(
                                                color: widget.p09 == 3 ? Colors.green: Colors.red,
                                                borderRadius: _bR,
                                              ),
                                              alignment: Alignment.center,
                                              duration: Duration(seconds: 3),
                                              curve: Curves.fastLinearToSlowEaseIn,
                                              child:
                                              Text("RESPOSTA 01",textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    color: Colors.black ,
                                                    fontWeight: FontWeight.bold
                                                ),
                                              )
                                          ),
                                          SizedBox(width : 15),
                                          AnimatedContainer(
                                            //  padding: EdgeInsets.only(top : padbox),
                                              width: w20p,
                                              height: h10p,
                                              decoration: BoxDecoration(
                                                color: widget.p10 == 4 ? Colors.green: Colors.red,
                                                borderRadius: _bR,
                                              ),
                                              alignment: Alignment.center,
                                              duration: Duration(seconds: 3),
                                              curve: Curves.fastLinearToSlowEaseIn,
                                              child:
                                              Text("RESPOSTA 01",textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    color: Colors.black ,
                                                    fontWeight: FontWeight.bold
                                                ),
                                              )
                                          ),
                                          SizedBox(width : 15),
                                          AnimatedContainer(
                                            //  padding: EdgeInsets.only(top : padbox),
                                              width: w20p,
                                              height: h10p,
                                              decoration: BoxDecoration(
                                                color: widget.p11 == 1 ? Colors.green: Colors.red,
                                                borderRadius: _bR,
                                              ),
                                              alignment: Alignment.center,
                                              duration: Duration(seconds: 3),
                                              curve: Curves.fastLinearToSlowEaseIn,
                                              child:
                                              Text("RESPOSTA 01",textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    color: Colors.black ,
                                                    fontWeight: FontWeight.bold
                                                ),
                                              )
                                          ),
                                          SizedBox(width : 15),
                                          AnimatedContainer(
                                            //  padding: EdgeInsets.only(top : padbox),
                                              width: w20p,
                                              height: h10p,
                                              decoration: BoxDecoration(
                                                color: widget.p12 == 1 ? Colors.green: Colors.red,
                                                borderRadius: _bR,
                                              ),
                                              alignment: Alignment.center,
                                              duration: Duration(seconds: 3),
                                              curve: Curves.fastLinearToSlowEaseIn,
                                              child:
                                              Text("RESPOSTA 01",textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    color: Colors.black ,
                                                    fontWeight: FontWeight.bold
                                                ),
                                              )
                                          ),
                                          SizedBox(height: 5)]),
                                    //
                                    Row(
                                        children: <Widget>[
                                          AnimatedContainer(
                                            //  padding: EdgeInsets.only(top : padbox),
                                              width: w20p,
                                              height: h10p,
                                              decoration: BoxDecoration(
                                                color: widget.p13 == 4 ? Colors.green: Colors.red,
                                                borderRadius: _bR,
                                              ),
                                              alignment: Alignment.center,
                                              duration: Duration(seconds: 3),
                                              curve: Curves.fastLinearToSlowEaseIn,
                                              child:
                                              Text("RESPOSTA 01",textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    color: Colors.black ,
                                                    fontWeight: FontWeight.bold
                                                ),
                                              )
                                          ),
                                          SizedBox(width : 15),
                                          AnimatedContainer(
                                            //  padding: EdgeInsets.only(top : padbox),
                                              width: w20p,
                                              height: h10p,
                                              decoration: BoxDecoration(
                                                color: widget.p14 == 4 ? Colors.green: Colors.red,
                                                borderRadius: _bR,
                                              ),
                                              alignment: Alignment.center,
                                              duration: Duration(seconds: 3),
                                              curve: Curves.fastLinearToSlowEaseIn,
                                              child:
                                              Text("RESPOSTA 01",textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    color: Colors.black ,
                                                    fontWeight: FontWeight.bold
                                                ),
                                              )
                                          ),
                                          SizedBox(width : 15),
                                          AnimatedContainer(
                                            //  padding: EdgeInsets.only(top : padbox),
                                              width: w20p,
                                              height: h10p,
                                              decoration: BoxDecoration(
                                                color: widget.p15 == 4 ? Colors.green: Colors.red,
                                                borderRadius: _bR,
                                              ),
                                              alignment: Alignment.center,
                                              duration: Duration(seconds: 3),
                                              curve: Curves.fastLinearToSlowEaseIn,
                                              child:
                                              Text("RESPOSTA 01",textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    color: Colors.black ,
                                                    fontWeight: FontWeight.bold
                                                ),
                                              )
                                          ),
                                          SizedBox(width : 15),
                                          AnimatedContainer(
                                            //  padding: EdgeInsets.only(top : padbox),
                                              width: w20p,
                                              height: h10p,
                                              decoration: BoxDecoration(
                                                color: widget.p16 == 3 ? Colors.green: Colors.red,
                                                borderRadius: _bR,
                                              ),
                                              alignment: Alignment.center,
                                              duration: Duration(seconds: 3),
                                              curve: Curves.fastLinearToSlowEaseIn,
                                              child:
                                              Text("RESPOSTA 01",textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    color: Colors.black ,
                                                    fontWeight: FontWeight.bold
                                                ),
                                              )
                                          ),
                                          SizedBox(height: 5)]),
                                    //
                                    Row(
                                        children: <Widget>[
                                          AnimatedContainer(
                                            //  padding: EdgeInsets.only(top : padbox),
                                              width: w20p,
                                              height: h10p,
                                              decoration: BoxDecoration(
                                                color: widget.p17 == 2 ? Colors.green: Colors.red,
                                                borderRadius: _bR,
                                              ),
                                              alignment: Alignment.center,
                                              duration: Duration(seconds: 3),
                                              curve: Curves.fastLinearToSlowEaseIn,
                                              child:
                                              Text("RESPOSTA 01",textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    color: Colors.black ,
                                                    fontWeight: FontWeight.bold
                                                ),
                                              )
                                          ),
                                          SizedBox(width : 15),
                                          AnimatedContainer(
                                            //  padding: EdgeInsets.only(top : padbox),
                                              width: w20p,
                                              height: h10p,
                                              decoration: BoxDecoration(
                                                color: widget.p18 == 2 ? Colors.green: Colors.red,
                                                borderRadius: _bR,
                                              ),
                                              alignment: Alignment.center,
                                              duration: Duration(seconds: 3),
                                              curve: Curves.fastLinearToSlowEaseIn,
                                              child:
                                              Text("RESPOSTA 01",textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    color: Colors.black ,
                                                    fontWeight: FontWeight.bold
                                                ),
                                              )
                                          ),
                                          SizedBox(width : 15),
                                          AnimatedContainer(
                                            //  padding: EdgeInsets.only(top : padbox),
                                              width: w20p,
                                              height: h10p,
                                              decoration: BoxDecoration(
                                                color: widget.p19 == 2 ? Colors.green: Colors.red,
                                                borderRadius: _bR,
                                              ),
                                              alignment: Alignment.center,
                                              duration: Duration(seconds: 3),
                                              curve: Curves.fastLinearToSlowEaseIn,
                                              child:
                                              Text("RESPOSTA 01",textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    color: Colors.black ,
                                                    fontWeight: FontWeight.bold
                                                ),
                                              )
                                          ),
                                          SizedBox(width : 15),
                                          AnimatedContainer(
                                            //  padding: EdgeInsets.only(top : padbox),
                                              width: w20p,
                                              height: h10p,
                                              decoration: BoxDecoration(
                                                color: widget.p20 == 1 ? Colors.green: Colors.red,
                                                borderRadius: _bR,
                                              ),
                                              alignment: Alignment.center,
                                              duration: Duration(seconds: 3),
                                              curve: Curves.fastLinearToSlowEaseIn,
                                              child:
                                              Text("RESPOSTA 01",textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    color: Colors.black ,
                                                    fontWeight: FontWeight.bold
                                                ),
                                              )
                                          ),
                                          SizedBox(height: 5)]),
                                    //
                                    Row(
                                        children: <Widget>[
                                          AnimatedContainer(
                                            //  padding: EdgeInsets.only(top : padbox),
                                              width: w20p,
                                              height: h10p,
                                              decoration: BoxDecoration(
                                                color: widget.p21 == 4 ? Colors.green: Colors.red,
                                                borderRadius: _bR,
                                              ),
                                              alignment: Alignment.center,
                                              duration: Duration(seconds: 3),
                                              curve: Curves.fastLinearToSlowEaseIn,
                                              child:
                                              Text("RESPOSTA 01",textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    color: Colors.black ,
                                                    fontWeight: FontWeight.bold
                                                ),
                                              )
                                          ),
                                          SizedBox(width : 15),
                                          AnimatedContainer(
                                            //  padding: EdgeInsets.only(top : padbox),
                                              width: w20p,
                                              height: h10p,
                                              decoration: BoxDecoration(
                                                color: widget.p22 == 3 ? Colors.green: Colors.red,
                                                borderRadius: _bR,
                                              ),
                                              alignment: Alignment.center,
                                              duration: Duration(seconds: 3),
                                              curve: Curves.fastLinearToSlowEaseIn,
                                              child:
                                              Text("RESPOSTA 01",textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    color: Colors.black ,
                                                    fontWeight: FontWeight.bold
                                                ),
                                              )
                                          ),
                                          SizedBox(width : 15),
                                          AnimatedContainer(
                                            //  padding: EdgeInsets.only(top : padbox),
                                              width: w20p,
                                              height: h10p,
                                              decoration: BoxDecoration(
                                                color: widget.p23 == 1 ? Colors.green: Colors.red,
                                                borderRadius: _bR,
                                              ),
                                              alignment: Alignment.center,
                                              duration: Duration(seconds: 3),
                                              curve: Curves.fastLinearToSlowEaseIn,
                                              child:
                                              Text("RESPOSTA 01",textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    color: Colors.black ,
                                                    fontWeight: FontWeight.bold
                                                ),
                                              )
                                          ),
                                          SizedBox(width : 15),
                                          AnimatedContainer(
                                            //  padding: EdgeInsets.only(top : padbox),
                                              width: w20p,
                                              height: h10p,
                                              decoration: BoxDecoration(
                                                color: widget.p24 == 4 ? Colors.green: Colors.red,
                                                borderRadius: _bR,
                                              ),
                                              alignment: Alignment.center,
                                              duration: Duration(seconds: 3),
                                              curve: Curves.fastLinearToSlowEaseIn,
                                              child:
                                              Text("RESPOSTA 01",textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    color: Colors.black ,
                                                    fontWeight: FontWeight.bold
                                                ),
                                              )
                                          ),
                                          SizedBox(height: 5)]),
                                    //
                                    Row(
                                        children: <Widget>[
                                          AnimatedContainer(
                                            //  padding: EdgeInsets.only(top : padbox),
                                              width: w20p,
                                              height: h10p,
                                              decoration: BoxDecoration(
                                                color: widget.p21 == 4 ? Colors.green: Colors.red,
                                                borderRadius: _bR,
                                              ),
                                              alignment: Alignment.center,
                                              duration: Duration(seconds: 3),
                                              curve: Curves.fastLinearToSlowEaseIn,
                                              child:
                                              Text("RESPOSTA 01",textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    color: Colors.black ,
                                                    fontWeight: FontWeight.bold
                                                ),
                                              )
                                          ),
                                          SizedBox(width : 15),
                                          AnimatedContainer(
                                            //  padding: EdgeInsets.only(top : padbox),
                                              width: w20p,
                                              height: h10p,
                                              decoration: BoxDecoration(
                                                color: widget.p25 == 3 ? Colors.green: Colors.red,
                                                borderRadius: _bR,
                                              ),
                                              alignment: Alignment.center,
                                              duration: Duration(seconds: 3),
                                              curve: Curves.fastLinearToSlowEaseIn,
                                              child:
                                              Text("RESPOSTA 01",textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    color: Colors.black ,
                                                    fontWeight: FontWeight.bold
                                                ),
                                              )
                                          ),
                                          SizedBox(width : 15),
                                          AnimatedContainer(
                                            //  padding: EdgeInsets.only(top : padbox),
                                              width: w20p,
                                              height: h10p,
                                              decoration: BoxDecoration(
                                                color: widget.p26 == 2 ? Colors.green: Colors.red,
                                                borderRadius: _bR,
                                              ),
                                              alignment: Alignment.center,
                                              duration: Duration(seconds: 3),
                                              curve: Curves.fastLinearToSlowEaseIn,
                                              child:
                                              Text("RESPOSTA 01",textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    color: Colors.black ,
                                                    fontWeight: FontWeight.bold
                                                ),
                                              )
                                          ),
                                          ]),

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