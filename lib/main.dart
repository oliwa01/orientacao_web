import 'package:flutter/material.dart';
import 'HomeAdm.dart';
import 'Login.dart';
import 'resultados/ResultadosTM.dart';
import 'DISC/disc.dart';
import 'Home.dart';
import 'testes/P01.dart';
import 'DiagnosticoEmocional.dart';
import 'graficos/Graficos.dart';
import 'resultados/RESULTADOS.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase/firestore.dart' as fs;
import 'package:firebase/firebase.dart' as fb;

void main() => runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        "/Home" : (context) => Home("001"),
        "/Disc" : (context) => Disc("001"),
        "/P01" : (context) => P01("001"),
        "/DiagnosticoEmocional" : (context) => Auto_Estima("001"),
        "/RESULTADOS" : (context) => RESULTADOS("001",1,2,3,4,5,6,7,8),
        "/ResultadosTM" : (context) => ResultadosTM("001",1,2,3,4,5,6,7,8,0,0,0,0),
        "/Graficos" : (context) => Graficos("001",0,Colors.red,1,Colors.red,2,Colors.red,3,Colors.red,4,Colors.red,5,Colors.red,6,Colors.red,7,Colors.red)
      },
      theme: ThemeData(
        primaryColor: Color(0xffff6101),
      ),
       // home:P01("001")
      home: Login()
        /*
      home:  GraficosTM("001",
        10,Colors.red,
        12,Colors.orange,
        14,Colors.deepOrangeAccent,
        16,Colors.yellow,
        18,Colors.lime,
        20,Colors.green,
        18,Colors.lime,
        16,Colors.yellow,
        14,Colors.deepOrange,
        12,Colors.red,
        10,Colors.red,
        8,Colors.red)
        */
    ));


