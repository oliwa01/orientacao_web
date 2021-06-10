import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
class GeraAdjetivoDisc extends StatefulWidget {
  @override
  _GeraAdjetivoDiscState createState() => _GeraAdjetivoDiscState();
}

class _GeraAdjetivoDiscState extends State<GeraAdjetivoDisc> {

  //
  Firestore db = Firestore.instance;

  //
    void _gravaDb () {

      db.collection("Disc")
          .document("tabelas")
          .collection("Adjetivos")
          .document("P01")
          . setData(
          {"label1" : "Entusiasta" , "label2": "Habil" , "label3" : "Ousado" ,"label4": "Conformado(Satisfeita)"});
      //
//
      db.collection("Disc")
          .document("tabelas")
          .collection("Adjetivos")
          .document("P02")
          . setData(
          {"label1" : "Cauteloso" , "label2": "Determinado" , "label3" : "Convincente" ,"label4": "Bondoso"});
//
      //
      db.collection("Disc")
          .document("tabelas")
          .collection("Adjetivos")
          .document("P03")
          . setData(
          {"label1" : "Amigavel" , "label2": "Cuidadoso" , "label3" : "Sincero" ,"label4": "Tranquilo"});
//
      db.collection("Disc")
          .document("tabelas")
          .collection("Adjetivos")
          .document("P04")
          . setData(
          {"label1" : "Falador" , "label2": "Controlado" , "label3" : "Convencional" ,"label4": "Decisivo"});
//
      db.collection("Disc")
          .document("tabelas")
          .collection("Adjetivos")
          .document("P05")
          . setData(
          {"label1" : "Empreendedor" , "label2": "Perspicaz" , "label3" : "Extrovertido" ,"label4": "Moderado"});
//
      db.collection("Disc")
          .document("tabelas")
          .collection("Adjetivos")
          .document("P06")
          . setData(
          {"label1" : "Gentil" , "label2": "Persuasivo" , "label3" : "Humilde" ,"label4": "Autentico"});
//
      db.collection("Disc")
          .document("tabelas")
          .collection("Adjetivos")
          .document("P07")
          . setData(
          {"label1" : "Expressivo" , "label2": "Consciencioso" , "label3" : "Dominante" ,"label4": "Compreensivo"});
//
      db.collection("Disc")
          .document("tabelas")
          .collection("Adjetivos")
          .document("P08")
          . setData(
          {"label1" : "Equilibrado" , "label2": "Observador" , "label3" : "Modesto" ,"label4": "Impaciente"});
//
      db.collection("Disc")
          .document("tabelas")
          .collection("Adjetivos")
          .document("P09")
          . setData(
          {"label1" : "Diplomata" , "label2": "Agrádavel" , "label3" : "Sedutor" ,"label4": "Perceverante"});
//
      db.collection("Disc")
          .document("tabelas")
          .collection("Adjetivos")
          .document("P10")
          . setData(
          {"label1" : "Corajoso" , "label2": "Inspirador" , "label3" : "Obediente" ,"label4": "Timido"});
//
      db.collection("Disc")
          .document("tabelas")
          .collection("Adjetivos")
          .document("P11")
          . setData(
          {"label1" : "Reservado" , "label2": "Prestativo" , "label3" : "Determinado" ,"label4": "Animado"});
//
      db.collection("Disc")
          .document("tabelas")
          .collection("Adjetivos")
          .document("P12")
          . setData(
          {"label1" : "Estimulante" , "label2": "Amavél" , "label3" : "Perceptivo" ,"label4": "independente"});
//
      db.collection("Disc")
          .document("tabelas")
          .collection("Adjetivos")
          .document("P13")
          . setData(
          {"label1" : "Competitivo" , "label2": "Atencioso" , "label3" : "Alegre" ,"label4": "Privado"});
//
      db.collection("Disc")
          .document("tabelas")
          .collection("Adjetivos")
          .document("P14")
          . setData(
          {"label1" : "Meticuloso" , "label2": "Obediente" , "label3" : "Firme" ,"label4": "Divertido"});
//
      db.collection("Disc")
          .document("tabelas")
          .collection("Adjetivos")
          .document("P15")
          . setData(
          {"label1" : "Sedutor" , "label2": "Introspectivo" , "label3" : "Teimoso" ,"label4": "Previsível"});
//
      db.collection("Disc")
          .document("tabelas")
          .collection("Adjetivos")
          .document("P16")
          . setData(
          {"label1" : "Logico" , "label2": "Audacioso" , "label3" : "Leal" ,"label4": "Agradavel"});
//
      db.collection("Disc")
          .document("tabelas")
          .collection("Adjetivos")
          .document("P17")
          . setData(
          {"label1" : "Sociável" , "label2": "Paciente" , "label3" : "Auto-confiante" ,"label4": "Tranquilo(voz suave)"});
//
      db.collection("Disc")
          .document("tabelas")
          .collection("Adjetivos")
          .document("P18")
          . setData(
          {"label1" : "Disposto" , "label2": "Ancioso" , "label3" : "Meticuloso" ,"label4": "Espirituosos"});
//
      db.collection("Disc")
          .document("tabelas")
          .collection("Adjetivos")
          .document("P19")
          . setData(
          {"label1" : "Agressivo" , "label2": "Extrovertido" , "label3" : "Amável" ,"label4": "Temeroso"});
//
      db.collection("Disc")
          .document("tabelas")
          .collection("Adjetivos")
          .document("P20")
          . setData(
          {"label1" : "Seguro" , "label2": "Solidário" , "label3" : "Imparcial" ,"label4": "Assertivo"});
//
      db.collection("Disc")
          .document("tabelas")
          .collection("Adjetivos")
          .document("P21")
          . setData(
          {"label1" : "Disciplinado" , "label2": "Generoso" , "label3" : "Animado" ,"label4": "Persistente"});
//
      db.collection("Disc")
          .document("tabelas")
          .collection("Adjetivos")
          .document("P22")
          . setData(
          {"label1" : "Impulsive" , "label2": "Introvertido" , "label3" : "Enérgico" ,"label4": "Pacato"});
//
      db.collection("Disc")
          .document("tabelas")
          .collection("Adjetivos")
          .document("P23")
          . setData(
          {"label1" : "Sociavél" , "label2": "Refinado" , "label3" : "Vigoroso" ,"label4": "Tolerante"});
//
      db.collection("Disc")
          .document("tabelas")
          .collection("Adjetivos")
          .document("P24")
          . setData(
          {"label1" : "Cativante" , "label2": "Contente" , "label3" : "Exigente" ,"label4": "Complacente"});
//
      db.collection("Disc")
          .document("tabelas")
          .collection("Adjetivos")
          .document("P25")
          . setData(
          {"label1" : "Argumentativo" , "label2": "Sistematico" , "label3" : "Cooperativo" ,"label4": "Despreocupado"});
//
      db.collection("Disc")
          .document("tabelas")
          .collection("Adjetivos")
          .document("P26")
          . setData(
          {"label1" : "Vibrante" , "label2": "Preciso" , "label3" : "Direto" ,"label4": "Temperamental"});
//
      db.collection("Disc")
          .document("tabelas")
          .collection("Adjetivos")
          .document("P27")
          . setData(
          {"label1" : "Inquieto" , "label2": "Atencioso" , "label3" : "Simpatico" ,"label4": "Cuidadoso"});
//
      db.collection("Disc")
          .document("tabelas")
          .collection("Adjetivos")
          .document("P28")
          . setData(
          {"label1" : "Respeitoso" , "label2": "Pioneiro" , "label3" : "Otimista" ,"label4": "Prestativo"});

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,

        child: RaisedButton(

          child: Text("Gera Tabela", style: TextStyle(fontSize: 60),),
          onPressed: () {
            print("PRESIONOU BOTÃO");
            _gravaDb();
          },
        ),
      ),
      )
    );
  }
}

