import 'package:firebase/firebase.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'dart:async';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:firebase/firestore.dart' as fs;
import 'package:firebase/firebase.dart' as fb;
import 'package:wop3_ovp/testes/P11.dart';



import 'DISC/ResultadosDisc.dart';
import 'descricao/perc_deducao.dart';
import 'descricao/perc_logica.dart';
import 'descricao/teste001.dart';
import 'graficos/Graficos.dart';


class Home extends StatefulWidget {
  String _codAluno;
  Home(this._codAluno);
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home>  {

  AnimationController controller;


  BorderRadiusGeometry _bR = BorderRadius.circular(8);
  //
  String _nomeAluno = "";
  bool _t1 = true;
  bool _t2 = true;
  bool _t3 = false;
  bool _t4 = false;
  bool _t5 = false;
  bool _t6 = false;
  bool _t7 = false;
  bool _t8 = false;

  //
  String _tit1 = "    MULTIPLAS INTELIGÊNCIAS ";
  String _tit2 = "    AUTO-PERCEPÇÃO";  //
  String _tit3 = "    DEDUÇÃO LÓGICA ";
  String _tit4 = "    LÓGICA VISUAL ";
  String _tit5 = "    TESTE - 00005 ";
  String _tit6 = "    TESTE - 00006 ";
  String _tit7 = "    TESTE - 00007 ";
  String _tit8 = "    TESTE - 00008 ";
  //
  Color _color1 = Colors.green;
 //
String  _teste1 = "Auto_Estima";

_carregaAluno () async {
  Firestore db = Firestore.instance;
  //
  DocumentSnapshot documentSnapshot = await db.collection("aluno")
        .document(widget._codAluno)
        .get();

  var dadosdb = documentSnapshot;
setState(() {
  _nomeAluno = (dadosdb['nome']);
  _t1 = (dadosdb['t1']);
  _t2 = (dadosdb['t2']);
  _t3 = (dadosdb['t3']);
  _t4 = (dadosdb['t4']);
  _t5 = (dadosdb['t5']);
  _t6 = (dadosdb['t6']);
  _t7 = (dadosdb['t7']);
  _t8 = (dadosdb['t8']);
});
  print ("Nome = "+_nomeAluno);
  print ("T1 = "+_t1.toString() );
  print ("T2 = "+_t2.toString() );
  print ("T3 = "+_t3.toString() );
  print ("T4 = "+_t4.toString() );
  print ("T5 = "+_t5.toString() );
  print ("T6 = "+_t6.toString() );
  print ("T7 = "+_t7.toString() );
  print ("T8 = "+_t8.toString() );
}
   @override
   void initState()  {
     super.initState();
     _carregaAluno();
}


  Widget build(BuildContext context) {
    final widthlua = MediaQuery.of(context).size.width;
    final heightlua = MediaQuery.of(context).size.height;

    bool _portrait = widthlua > heightlua ? false: true;
    double  _w100 =  widthlua;
    double  _w900 =  widthlua * 0.9;
    double  _w80 =  widthlua * 0.8;
    double  _w70 =  widthlua * 0.7;
    double  _w60 =  widthlua * 0.6;
    double  _w50 =  widthlua * 0.5;
    double  _w40 =  widthlua * 0.4;
    double  _w30 =  widthlua * 0.3;



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


    double padbox =  (heightlua > 1600) ? 15 :
    (heightlua > 1500)  ? 14 :
    (heightlua > 1400)  ? 13 :
    (heightlua > 1300)  ? 12 :
    (heightlua > 1200)  ? 12 :
    (heightlua > 1100)  ? 11 :
    (heightlua > 1000)  ? 10 :
    (heightlua > 900)  ? 10 :
    (heightlua > 800)  ? 9 :
    (heightlua > 700)  ? 9 :
    (heightlua > 600)  ? 8 :
    (heightlua > 500)  ? 7 :  6 ;



    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: DefaultTabController(
            length: 3,
            child: Scaffold(
              appBar: AppBar(
                centerTitle: true,
                title: Text("WOP3 - Desenvolvimento Humano"),
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
                  indicatorColor: Colors.green,
                  indicatorSize: TabBarIndicatorSize.tab,
                  tabs: [
                    Tab(icon: Icon(
                        FontAwesomeIcons.acquisitionsIncorporated,size: 40.0)),
                    Tab(icon: Icon(FontAwesomeIcons.angellist, size: 40.0)),
                    Tab(icon: Icon(
                        FontAwesomeIcons.audioDescription, size: 40.0))
                  ],
                ),

              ),
              body: TabBarView(
                  children: [
              Padding(
              padding: EdgeInsets.only( top: 38.0),
              child: ListView(
                children: <Widget>[
                SizedBox(
                child:SingleChildScrollView(
                   scrollDirection: Axis.vertical,
                    child: Column(
                        children: <Widget>[

                          Container(
                            width: _portrait ? _w80 :_w50,
                            height: 80,
                            alignment: Alignment.centerLeft,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                stops: [0.3, 1],
                                colors:  [
                                   Colors.white ,
                                   Colors.white ,
                                ],
                              ),
                              borderRadius: BorderRadius.all(
                                Radius.circular(5),
                              ),
                            ),
                            child: SizedBox.expand(
                              child: FlatButton(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: <Widget>[
                                    Text(_nomeAluno.toString(),
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                        fontSize: 16,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                    Container(
                                        child: SizedBox(
                                          child: Icon(Icons.refresh),
                                          height: 50, width: 50,)
                                    ),
                                  ],
                                ),
                                onPressed: () {
                                  _carregaAluno();

                                },
                              ),
                            ),
                          ),
                          SizedBox(
                              height: 10
                          ),


                          Container(
                            width: _portrait ? _w80 :_w50,
                            height: 80,
                            alignment: Alignment.centerLeft,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                stops: [0.3, 1],
                                colors:  [
                                          _t1 ? Colors.blue : Colors.grey,
                                          _t1 ? Colors.indigo : Colors.grey,
                                ]

                                ,
                              ),
                              borderRadius: BorderRadius.all(
                                Radius.circular(5),
                              ),
                            ),
                            child: SizedBox.expand(
                              child: FlatButton(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    Container(
                                      child: SizedBox(
                                        child: _t1 ? Image.asset("images/logo.png"):
                                                     Icon(Icons.lock),
                                        height: 28, width: 28,)
                                    ),
                                    Text(_tit1,
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: _t1 ? Colors.white : Colors.black,
                                        fontSize: 18,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                ),
                                onPressed: () {
                                  if(_t1) {
                                  Navigator.push(context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              teste001(widget._codAluno)));}

                                },
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10
                          ),
                          Container(
                            width: _portrait ? _w80 :_w50,
                            height: 80,
                            alignment: Alignment.centerLeft,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                stops: [0.3, 1],
                                colors:  [
                                  _t2 ? Colors.blue : Colors.grey,
                                  _t2 ? Colors.indigo : Colors.grey,
                                ]

                                ,
                              ),
                              borderRadius: BorderRadius.all(
                                Radius.circular(5),
                              ),
                            ),
                            child: SizedBox.expand(
                              child: FlatButton(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    Container(
                                        child: SizedBox(
                                          child: _t2 ? Image.asset("images/logo.png"):
                                          Icon(Icons.lock),
                                          height: 28, width: 28,)
                                    ),
                                    Text(_tit2,
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: _t2 ? Colors.white : Colors.black,
                                        fontSize: 18,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                ),
                                onPressed: () {
                                  if(_t2) {
                                    Navigator.push(context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                P11(widget._codAluno)));}

                                },
                              ),
                            ),
                          ),
                          SizedBox(
                              height: 10
                          ),
                          Container(
                            width: _portrait ? _w80 :_w50,
                            height: 80,
                            alignment: Alignment.centerLeft,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                stops: [0.3, 1],
                                colors:  [
                                  _t3 ? Colors.blue : Colors.grey,
                                  _t3 ? Colors.indigo : Colors.grey,
                                ]

                                ,
                              ),
                              borderRadius: BorderRadius.all(
                                Radius.circular(5),
                              ),
                            ),
                            child: SizedBox.expand(
                              child: FlatButton(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    Container(
                                        child: SizedBox(
                                          child: _t3 ? Image.asset("images/logo.png"):
                                          Icon(Icons.lock),
                                          height: 28, width: 28,)
                                    ),
                                    Text(_tit3,
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: _t3 ? Colors.white : Colors.black,
                                        fontSize: 18,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                ),
                                onPressed: () {
                                  if(_t3) {
                                    Navigator.push(context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                perc_deducao(widget._codAluno)));}

                                },
                              ),
                            ),
                          ),
                          SizedBox(
                              height: 10
                          ),
                          Container(
                            width: _portrait ? _w80 :_w50,
                            height: 80,
                            alignment: Alignment.centerLeft,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                stops: [0.3, 1],
                                colors:  [
                                  _t4 ? Colors.blue : Colors.grey,
                                  _t4 ? Colors.indigo : Colors.grey,
                                ]

                                ,
                              ),
                              borderRadius: BorderRadius.all(
                                Radius.circular(5),
                              ),
                            ),
                            child: SizedBox.expand(
                              child: FlatButton(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    Container(
                                        child: SizedBox(
                                          child: _t4 ? Image.asset("images/logo.png"):
                                          Icon(Icons.lock),
                                          height: 28, width: 28,)
                                    ),
                                    Text(_tit4,
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: _t4 ? Colors.white : Colors.black,
                                        fontSize: 18,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                ),
                                onPressed: () {
                                  if(_t4) {
                                    Navigator.push(context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                perc_logica(widget._codAluno)));}

                                },
                              ),
                            ),
                          ),
                          SizedBox(
                              height: 10
                          ),
                          Container(
                            width: _portrait ? _w80 :_w50,
                            height: 80,
                            alignment: Alignment.centerLeft,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                stops: [0.3, 1],
                                colors:  [
                                  _t5 ? Colors.blue : Colors.grey,
                                  _t5 ? Colors.indigo : Colors.grey,
                                ]

                                ,
                              ),
                              borderRadius: BorderRadius.all(
                                Radius.circular(5),
                              ),
                            ),
                            child: SizedBox.expand(
                              child: FlatButton(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    Container(
                                        child: SizedBox(
                                          child: _t5 ? Image.asset("images/logo.png"):
                                          Icon(Icons.lock),
                                          height: 28, width: 28,)
                                    ),
                                    Text(_tit5,
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: _t5 ? Colors.white : Colors.black,
                                        fontSize: 18,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                ),
                                onPressed: () {
                                  if(_t5) {
                                    Navigator.push(context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                teste001(widget._codAluno)));}

                                },
                              ),
                            ),
                          ),
                          SizedBox(
                              height: 10
                          ),
                          Container(
                            width: _portrait ? _w80 :_w50,
                            height: 80,
                            alignment: Alignment.centerLeft,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                stops: [0.3, 1],
                                colors:  [
                                  _t6 ? Colors.blue : Colors.grey,
                                  _t6 ? Colors.indigo : Colors.grey,
                                ]

                                ,
                              ),
                              borderRadius: BorderRadius.all(
                                Radius.circular(5),
                              ),
                            ),
                            child: SizedBox.expand(
                              child: FlatButton(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    Container(
                                        child: SizedBox(
                                          child: _t6 ? Image.asset("images/logo.png"):
                                          Icon(Icons.lock),
                                          height: 28, width: 28,)
                                    ),
                                    Text(_tit6,
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: _t6 ? Colors.white : Colors.black,
                                        fontSize: 18,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                ),
                                onPressed: () {
                                  if(_t6) {
                                    Navigator.push(context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                teste001(widget._codAluno)));}

                                },
                              ),
                            ),
                          ),
                          SizedBox(
                              height: 10
                          ),
                          Container(
                            width: _portrait ? _w80 :_w50,
                            height: 80,
                            alignment: Alignment.centerLeft,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                stops: [0.3, 1],
                                colors:  [
                                  _t7 ? Colors.blue : Colors.grey,
                                  _t7 ? Colors.indigo : Colors.grey,
                                ]

                                ,
                              ),
                              borderRadius: BorderRadius.all(
                                Radius.circular(5),
                              ),
                            ),
                            child: SizedBox.expand(
                              child: FlatButton(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    Container(
                                        child: SizedBox(
                                          child: _t7 ? Image.asset("images/logo.png"):
                                          Icon(Icons.lock),
                                          height: 28, width: 28,)
                                    ),
                                    Text(_tit7,
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: _t7 ? Colors.white : Colors.black,
                                        fontSize: 18,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                ),
                                onPressed: () {
                                  if(_t7) {
                                    Navigator.push(context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                teste001(widget._codAluno)));}

                                },
                              ),
                            ),
                          ),
                          SizedBox(
                              height: 10
                          ),
                          Container(
                            width: _portrait ? _w80 :_w50,
                            height: 80,
                            alignment: Alignment.centerLeft,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                stops: [0.3, 1],
                                colors:  [
                                  _t8 ? Colors.blue : Colors.grey,
                                  _t8 ? Colors.indigo : Colors.grey,
                                ]

                                ,
                              ),
                              borderRadius: BorderRadius.all(
                                Radius.circular(5),
                              ),
                            ),
                            child: SizedBox.expand(
                              child: FlatButton(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    Container(
                                        child: SizedBox(
                                          child: _t8 ? Image.asset("images/logo.png"):
                                          Icon(Icons.lock),
                                          height: 28, width: 28,)
                                    ),
                                    Text(_tit8,
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: _t8 ? Colors.white : Colors.black,
                                        fontSize: 18,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                ),
                                onPressed: () {
                                  if(_t8) {
                                    Navigator.push(context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                teste001(widget._codAluno)));}

                                },
                              ),
                            ),
                          ),
                          SizedBox(
                              height: 10
                          ),

                         ]
                    )
                  ),
                )
                ]
              ),
            ),
              Padding(
              padding: EdgeInsets.all(8.0),
              child: ListPage(),
            ),
              Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Container(
                        child: Center(
                          child: Column(
                            children: <Widget>[
                              Text(
                                'Videos Treinamentos', style: TextStyle(
                                  fontSize: 24.0, fontWeight: FontWeight.bold),),
                              SizedBox(height: 10.0,),
                              Expanded(
                                child: Column(
                                  children: <Widget>[
                                    GestureDetector(
                                      onTap: () {},
                                      child:
                                      AnimatedContainer(
                                          padding: EdgeInsets.all(10),
                                          width: 350.0,
                                          height: 100.0,
                                          decoration: BoxDecoration(
                                            color: Colors.green,
                                            borderRadius: _bR,
                                          ),
                                          alignment: Alignment.center,
                                          duration: Duration(seconds: 3),
                                          curve: Curves.fastLinearToSlowEaseIn,
                                          child: Row(
                                            children: <Widget>[

                                              Icon(FontAwesomeIcons.raspberryPi,
                                                  size: 40.0),
                                              Text("      Orientação de Carreira",
                                                  style: TextStyle(
                                                      fontSize: 20,
                                                      color: Colors.black,
                                                      fontWeight: FontWeight.bold
                                                  )
                                              )
                                            ],


                                          )

                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                    //
                    //
            ])
    )
    )
    );
  }
}
class ListPage extends StatefulWidget {
  @override
  _ListPageState createState() => _ListPageState();
}
//
//
//
class _ListPageState extends State<ListPage> {
  //
  Future getPosts() async {
    int currentTime;
    var db = Firestore.instance;
    QuerySnapshot qn = await
    db.collection("aluno")
        .document("001")
        .collection("Testes")
        .getDocuments();
    return qn.documents;
  }

  //

  //
  Color _cv1 = Colors.orange;
  Color _cv2 = Colors.orange;
  Color _cv3 = Colors.orange;
  Color _cv4 = Colors.orange;
  Color _cv5 = Colors.orange;
  Color _cv6 = Colors.orange;
  Color _cv7 = Colors.orange;
  Color _cv8 = Colors.orange;


  Color _grey = Colors.grey;
  Color _green = Colors.green;
  Color _yellow = Colors.yellow;

  int _TotalAutoEstima;
  int _TotalAnsiedade;
  int _TotalStress;
  int _TotalDispersao;
  int _TotalHiperatividade;
  int _TotalRelacionamentos;
  int _TotalDepressao;
  int _TotalLesao;
 bool corDisc = false;
  bool corDE = false;

  @override
  Widget build(BuildContext context) {
    return Container(
        child: FutureBuilder(
            future: getPosts(),
            builder: (_, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return Center(
                  child: Text("Loadding ......"),
                );
              }
              else {
                return ListView.builder(
                    itemCount: snapshot.data.length,
                    itemBuilder: (_, index) {
                      return Container(
                          padding: EdgeInsets.all(20),
                          width: 200,
                          height: 100,
                          color: (snapshot.data[index].data["Teste-Code"] == "DE") ? Colors.green : Colors.blue,

                          child: ListTile(
                              leading: Icon((snapshot.data[index].data["Teste-Code"] == "DE") ? Icons.show_chart : Icons.sort , size: 40.0),
                              trailing: Icon(Icons.keyboard_arrow_right),
                              contentPadding: EdgeInsets.symmetric(horizontal: 10.0),
                              title: Text(snapshot.data[index].data["Teste"],
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                              subtitle: Text(snapshot.data[index].data["data-teste"] ),
                              onTap: () {


                                if (snapshot.data[index].data["Teste-Code"] == "DE") {
                                int P01 = int.parse(snapshot.data[index].data["P01"].toString());
                                int P02 = int.parse(snapshot.data[index].data["P02"].toString());
                                int P03 = int.parse(snapshot.data[index].data["P03"].toString());
                                int P04 = int.parse(snapshot.data[index].data["P04"].toString());
                                int P05 = int.parse(snapshot.data[index].data["P05"].toString());
                                int P06 = int.parse(snapshot.data[index].data["P06"].toString());
                                int P07 = int.parse(snapshot.data[index].data["P07"].toString());
                                int P08 = int.parse(snapshot.data[index].data["P08"].toString());
                                int P09 = int.parse(snapshot.data[index].data["P09"].toString());
                                int P10 = int.parse(snapshot.data[index].data["P10"].toString());
                                int P11 = int.parse(snapshot.data[index].data["P11"].toString());
                                int P12 = int.parse(snapshot.data[index].data["P12"].toString());
                                int P13 = int.parse(snapshot.data[index].data["P13"].toString());
                                int P14 = int.parse(snapshot.data[index].data["P14"].toString());
                                int P15 = int.parse(snapshot.data[index].data["P15"].toString());
                                int P16 = int.parse(snapshot.data[index].data["P16"].toString());
                                int P17 = int.parse(snapshot.data[index].data["P17"].toString());
                                int P18 = int.parse(snapshot.data[index].data["P18"].toString());
                                int P19 = int.parse(snapshot.data[index].data["P19"].toString());
                                int P20 = int.parse(snapshot.data[index].data["P20"].toString());
                                int P21 = int.parse(snapshot.data[index].data["P21"].toString());
                                int P22 = int.parse(snapshot.data[index].data["P22"].toString());
                                int P23 = int.parse(snapshot.data[index].data["P23"].toString());
                                int P24 = int.parse(snapshot.data[index].data["P24"].toString());
                                int P25 = int.parse(snapshot.data[index].data["P25"].toString());
                                int P26 = int.parse(snapshot.data[index].data["P26"].toString());
                                int P27 = int.parse(snapshot.data[index].data["P27"].toString());
                                int P28 = int.parse(snapshot.data[index].data["P28"].toString());
                                int P29 = int.parse(snapshot.data[index].data["P29"].toString());
                                int P30 = int.parse(snapshot.data[index].data["P30"].toString());
                                int P31 = int.parse(snapshot.data[index].data["P31"].toString());
                                int P32 = int.parse(snapshot.data[index].data["P32"].toString());
                                int P33 = int.parse(snapshot.data[index].data["P33"].toString());
                                int P34 = int.parse(snapshot.data[index].data["P34"].toString());
                                int P35 = int.parse(snapshot.data[index].data["P35"].toString());
                                int P36 = int.parse(snapshot.data[index].data["P36"].toString());
                                int P37 = int.parse(snapshot.data[index].data["P37"].toString());
                                int P38 = int.parse(snapshot.data[index].data["P38"].toString());
                                int P39 = int.parse(snapshot.data[index].data["P39"].toString());
                                int P40 = int.parse(snapshot.data[index].data["P40"].toString());
                                int P41 = int.parse(snapshot.data[index].data["P41"].toString());
                                int P42 = int.parse(snapshot.data[index].data["P42"].toString());
                                int P43 = int.parse(snapshot.data[index].data["P43"].toString());
                                int P44 = int.parse(snapshot.data[index].data["P44"].toString());
                                int P45 = int.parse(snapshot.data[index].data["P45"].toString());
                                int P46 = int.parse(snapshot.data[index].data["P46"].toString());
                                int P47 = int.parse(snapshot.data[index].data["P47"].toString());
                                int P48 = int.parse(snapshot.data[index].data["P48"].toString());
                                int P49 = int.parse(snapshot.data[index].data["P49"].toString());
                                int P50 = int.parse(snapshot.data[index].data["P50"].toString());
                                int P51 = int.parse(snapshot.data[index].data["P51"].toString());
                                int P52 = int.parse(snapshot.data[index].data["P52"].toString());
                                int P53 = int.parse(snapshot.data[index].data["P53"].toString());
                                int P54 = int.parse(snapshot.data[index].data["P54"].toString());
                                int P55 = int.parse(snapshot.data[index].data["P55"].toString());
                                int P56 = int.parse(snapshot.data[index].data["P56"].toString());
                                int P57 = int.parse(snapshot.data[index].data["P57"].toString());
                                int P58 = int.parse(snapshot.data[index].data["P58"].toString());
                                int P59 = int.parse(snapshot.data[index].data["P59"].toString());
                                int P60 = int.parse(snapshot.data[index].data["P60"].toString());
                                int P61 = int.parse(snapshot.data[index].data["P61"].toString());
                                int P62 = int.parse(snapshot.data[index].data["P62"].toString());
                                int P63 = int.parse(snapshot.data[index].data["P63"].toString());
                                int P64 = int.parse(snapshot.data[index].data["P64"].toString());


                                _TotalAutoEstima =
                                (P01 + P06 + P17 + P25 +
                                    P32 + P37 + P42 + P50 +
                                    P58 + P64);
                                _TotalAnsiedade =
                                (P05 + P10 + P19 + P22 +
                                    P28 + P33 + P39 + P49 +
                                    P57 + P60);
                                _TotalStress =
                                (P07 + P16 + P23 + P24 +
                                    P31 + P38 + P51 + P59 +
                                    P61);
                                _TotalDispersao =
                                (P02 + P14 + P45 + P47 +
                                    P54 + P63);
                                _TotalHiperatividade =
                                (P04 + P12 + P18 + P34 +
                                    P35 + P48 + P52);
                                _TotalRelacionamentos =
                                (P09 + P11 + P20 + P27 +
                                    P40 + P43 + P56);
                                _TotalDepressao =
                                (P03 + P08 + P15 + P26 +
                                    P29 + P36 + P41 + P46 +
                                    P53 + P62);
                                _TotalLesao =
                                (P13 + P21 + P30 + P44 +
                                    P55);
                                setState(() {
                                if (_TotalAutoEstima < 15) {_cv1 = _grey;}
                                else if ((_TotalAutoEstima > 14) && (_TotalAutoEstima < 26)) {_cv1 = _yellow;}
                                else if ((_TotalAutoEstima > 25) && (_TotalAutoEstima < 41)) {_cv1 = _green;};

                                if (_TotalAnsiedade < 15) {_cv2 = _green;}
                                else if ((_TotalAnsiedade > 14) && (_TotalAnsiedade < 26)) {_cv2 = _yellow;}
                                else if ((_TotalAnsiedade > 25) && (_TotalAnsiedade < 41)) {_cv2 = _grey;};


                                if (_TotalStress < 10) {_cv3 = _green;}
                                else if ((_TotalStress > 9) && (_TotalStress < 27)) {_cv3 = _yellow;}
                                else if ((_TotalStress > 26) && (_TotalStress < 37)) {_cv3 = _grey;};

                                if (_TotalDispersao < 10) {_cv4 = _green;}
                                else if ((_TotalDispersao > 9) && (_TotalDispersao < 18)) {_cv4 = _yellow;}
                                else if ((_TotalDispersao > 17) && (_TotalDispersao < 25)) {_cv4 = _grey;};

                                if (_TotalHiperatividade < 9) {_cv5 = _green;}
                                else if ((_TotalHiperatividade > 8) && (_TotalHiperatividade < 20)) {_cv5 = _yellow;}
                                else if ((_TotalHiperatividade > 19) && (_TotalHiperatividade < 29)) {_cv5 = _grey;};

                                if (_TotalRelacionamentos < 9) {_cv6 = _green;}
                                else if ((_TotalRelacionamentos > 8) && (_TotalRelacionamentos < 20)) {_cv6 = _yellow;}
                                else if ((_TotalRelacionamentos > 19) && (_TotalRelacionamentos < 29)) {_cv6 = _grey;};

                                if (_TotalDepressao < 15) {_cv7 = _green;}
                                else if ((_TotalDepressao > 14) && (_TotalDepressao < 26)) {_cv7 = _yellow;}
                                else if ((_TotalDepressao > 25) && (_TotalDepressao < 41)) {_cv7 = _grey;};

                                if (_TotalLesao < 6) {_cv8 = _green;}
                                else if ((_TotalLesao > 5) && (_TotalLesao < 11)) {_cv8 = _yellow;}
                                else if ((_TotalLesao > 10) && (_TotalLesao < 21)) {_cv8 = _grey;};

                                });
                                Navigator.push(context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            Graficos ("001",
                                                _TotalAutoEstima,_cv1,_TotalAnsiedade,
                                                _cv2,_TotalStress,
                                                _cv3,_TotalDispersao,
                                                _cv4,_TotalHiperatividade,
                                                _cv5,_TotalRelacionamentos,
                                                _cv6,_TotalDepressao,_cv7,
                                                _TotalLesao,_cv8)));
                              }
                                else if (snapshot.data[index].data["Teste-Code"] == "DI") {
                                  int valD = snapshot.data[index].data["valD"];
                                  int valI = snapshot.data[index].data["valI"];
                                  int valS = snapshot.data[index].data["valS"];
                                  int valC = snapshot.data[index].data["valC"];
                                  int valantesD = snapshot.data[index].data["valantesD"];
                                  int valantesI = snapshot.data[index].data["valantesI"];
                                  int valantesS = snapshot.data[index].data["valantesS"];
                                  int valantesC = snapshot.data[index].data["valantesC"];

                                  Navigator.push(context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              ResultadoDisc ("001",
                                              valD,
                                              valI,
                                              valS,
                                              valC,
                                              valantesD,
                                              valantesI,
                                              valantesS,
                                              valantesC)));

                                }
                              },

                            // onTap: () => navigateToDetail(snapshot.data[index])
                          )
                      );

                    }

                );
              }
            }
        )
    );
  }
}
//
class DetailPage extends StatefulWidget {

  final DocumentSnapshot post;
  DetailPage({this.post});
  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        child: ListTile(
          title: Text(widget.post.data["nome"]),
          subtitle: Text(widget.post.data["Teste"]),

        ),
      ),
    );
  }
}
