import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:wop3_ovp/resultados/RedultaPD1.dart';
import 'package:wop3_ovp/resultados/ResultaDce.dart';
import 'package:wop3_ovp/resultados/ResultaDt1.dart';


import 'DISC/ResultadosDisc.dart';
import 'Home.dart';
import 'HomeAdm.dart';
import 'LeAluno.dart';


class ResultadosAdm extends StatefulWidget {
  String _codAluno;
  ResultadosAdm(this._codAluno);
  @override
  _ResultadosAdmState createState() => _ResultadosAdmState();
}

class _ResultadosAdmState extends State<ResultadosAdm>  {
  AnimationController controller;


  BorderRadiusGeometry _bR = BorderRadius.circular(8);
  //
  //
  @override
  bool page1 = true;
  bool page2 = false;
  bool page3 = false;

  Widget build(BuildContext context) {


    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: DefaultTabController(
            length: 2,
            child: Scaffold(
                appBar: AppBar(
                  centerTitle: true,
                  title: Text("WOP3 - Desenvolvimento Humano"),
                  flexibleSpace: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        FlatButton(
                          child: Icon(Icons.arrow_back,size: 40,color: Colors.white),
                          onPressed: () {
                                  Navigator.push(context,
                                  MaterialPageRoute(
                                  builder: (context) =>
                                  HomeAdm()));
                                  },
                        )
                      ],
                    ),
                   ),
                  bottom: TabBar(
                    indicatorColor: Colors.green,
                    indicatorSize: TabBarIndicatorSize.tab,
                    tabs: [
                      Tab(icon: Icon(FontAwesomeIcons.angellist, size: 40.0)),
                      Tab(icon: Icon(
                          FontAwesomeIcons.audioDescription, size: 40.0))
                    ],
                  ),
                ),
                body: TabBarView(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: (ListPage(widget._codAluno)),
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
                    ]),
            )
        )
    );
  }
}
//
class ListPage extends StatefulWidget {
  String _codAluno;
  ListPage(this._codAluno);
  @override
  _ListPageState createState() => _ListPageState();
}
//
class _ListPageState extends State<ListPage> {
  //
  Future getPosts() async {
    int currentTime;
    var db = Firestore.instance;
    QuerySnapshot qn = await
    db.collection("aluno")
        .document(widget._codAluno)
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

  bool corDisc = false;
  bool corDE = false;

  @override
  Widget build(BuildContext context) {
    return
      Container(
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
                          color: (snapshot.data[index].data["Code"] == "DCE" ) ? Colors.green : Colors.blue,

                          child: ListTile(
                              leading: Icon((snapshot.data[index].data["Code"] == "DCE") ? Icons.show_chart : Icons.sort , size: 40.0),
                              trailing: Icon(Icons.keyboard_arrow_right),
                              contentPadding: EdgeInsets.symmetric(horizontal: 10.0),
                              title: Text(snapshot.data[index].data["Code"],
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                              subtitle: Text(snapshot.data[index].data["Data-teste"] ),
                              onTap: () {
                                (snapshot.data[index].data["Code"] == "DCE" ) ?
                                Navigator.push(context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            ResultaDce(
                                              widget._codAluno,
                                              snapshot.data[index].data["ID"],
                                              snapshot.data[index].data["IE"],
                                              snapshot.data[index].data["SD"],
                                              snapshot.data[index].data["SE"],
                                            ))) :
                                              (snapshot.data[index].data["Code"] == "PD1" ) ?
                                              Navigator.push(context,
                                              MaterialPageRoute(
                                              builder: (context) =>
                                              ResultaPD1(
                                              widget._codAluno,
                                              snapshot.data[index].data["percepção_deducao"],
                                                snapshot.data[index].data["P01"],
                                                snapshot.data[index].data["P02"],
                                                snapshot.data[index].data["P03"],
                                                snapshot.data[index].data["P04"],
                                                snapshot.data[index].data["P05"],
                                                snapshot.data[index].data["P06"],
                                                snapshot.data[index].data["P07"],
                                                snapshot.data[index].data["P08"],
                                                snapshot.data[index].data["P09"],
                                                snapshot.data[index].data["P10"],
                                                snapshot.data[index].data["P11"],
                                                snapshot.data[index].data["P12"],
                                                snapshot.data[index].data["P13"],
                                                snapshot.data[index].data["P14"],
                                                snapshot.data[index].data["P15"],
                                                snapshot.data[index].data["P16"],
                                                snapshot.data[index].data["P17"],
                                                snapshot.data[index].data["P18"],
                                                snapshot.data[index].data["P19"],
                                                snapshot.data[index].data["P20"],
                                                snapshot.data[index].data["P21"],
                                                snapshot.data[index].data["P22"],
                                                snapshot.data[index].data["P23"],
                                                snapshot.data[index].data["P24"],
                                                snapshot.data[index].data["P25"],
                                                snapshot.data[index].data["P26"]

                                              ))) :
                                              (snapshot.data[index].data["Code"] == "DT1" ) ?
                                              Navigator.push(context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          ResultaDt1(
                                                            widget._codAluno,
                                                            snapshot.data[index].data["BIOLOGICA"],
                                                            snapshot.data[index].data["CORPORAL"],
                                                            snapshot.data[index].data["ESPACIAL"],
                                                            snapshot.data[index].data["ESPIRITUAL"],
                                                            snapshot.data[index].data["IDEOLOGICA"],
                                                            snapshot.data[index].data["INTERPESSOAL"],
                                                            snapshot.data[index].data["INTRAPESSOAL"],
                                                            snapshot.data[index].data["MUSICAL"],
                                                            snapshot.data[index].data["VERBAL"],
                                                          ))) :
                                    Center();
                              }
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



