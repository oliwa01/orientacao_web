import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:intl/intl.dart';
class CalcDisc extends StatefulWidget {
  @override
  _CalcDiscState createState() => _CalcDiscState();
}

class _CalcDiscState extends State<CalcDisc> {
  //
  //
  var _valorMais  = [0,3,2,1,4,2,4,2,1,4,1,3,4,4,2,2,1,2,1,2,2,4,2,2,4,3,3,2,4]  ;
  var _valorMenos = [0,4,3,2,1,3,2,1,2,1,3,4,1,3,1,1,4,4,3,4,4,1,4,1,1,1,2,4,2]  ;
  //  Tabelas verificação DISC MAIS
  var _tabMaisD  =  [0,2,2,3,4,1,5,3,4,4,1,3,4,1,3,3,2,3,2,1,4,4,3,3,3,1,3,1,2];
  var _tabMaisI  =  [0,1,3,1,1,3,2,1,1,3,2,4,1,3,4,1,4,1,4,2,1,3,1,1,1,4,1,3,3];
  var _tabMaisS  =  [0,4,4,5,3,4,1,5,3,2,3,2,2,2,2,4,3,2,1,3,2,2,4,4,2,3,4,2,4];
  var _tabMaisC  =  [0,3,1,2,2,2,5,2,2,1,5,1,3,4,1,2,1,4,3,5,5,1,2,2,4,2,2,4,1];
  //  Tabelas verificação DISC MENOS
  var _tabMenosD  = [0,2,2,3,4,1,4,3,4,4,1,3,4,1,3,3,2,3,5,1,4,4,3,3,3,1,3,1,2];
  var _tabMenosI  = [0,1,3,5,1,3,5,1,1,3,2,4,1,3,4,1,4,1,4,2,1,3,1,1,1,4,1,3,3];
  var _tabMenosS  = [0,4,5,4,3,4,1,4,3,2,3,2,2,2,2,4,3,2,1,3,2,2,4,4,2,3,4,2,4];
  var _tabMenosC  = [0,3,1,2,2,2,3,2,5,1,4,1,3,4,1,5,1,4,3,4,3,1,2,2,4,2,2,4,1];

  // totais antes de subtrais Mais de Menos
  int _totDMais = 0;
  int _totIMais = 0;
  int _totSMais = 0;
  int _totCMais = 0;
  //
  int _totDMenos = 0;
  int _totIMenos = 0;
  int _totSMenos = 0;
  int _totCMenos = 0;
  //
  // Valores de Disc Para pesquiva na Tabela PontosDisc
  int _valDAntes = 0;
  int _valIAntes = 0;
  int _valSAntes = 0;
  int _valCAntes = 0;
  //
  // Valor final  de Disc
  int _valD = 0;
  int _valI = 0;
  int _valS = 0;
  int _valC = 0;
  //
  //

  int _nroDISC = 0;

  void _contabilizar()  async{
//    print(_valorMenos);
//    print(_valorMais);
//
    for( int i = 1; i < 29; i++) {
        if (_valorMais[i] == _tabMaisD[i]) {
        _totDMais++;
      }
      if (_valorMais[i] == _tabMaisI[i]) {
        _totIMais++;
      }
      if (_valorMais[i] == _tabMaisS[i]) {
        _totSMais++;
      }
      if (_valorMais[i] == _tabMaisC[i]) {
        _totCMais++;
      }
      //
      if (_valorMenos[i] == _tabMenosD[i]) {
        _totDMenos++;
      }
      if (_valorMenos[i] == _tabMenosI[i]) {
        _totIMenos++;
      }
      if (_valorMenos[i] == _tabMenosS[i]) {
        _totSMenos++;
      }
      if (_valorMenos[i] == _tabMenosC[i]) {
        _totCMenos++;
      }
    }
    _valDAntes = _totDMais - _totDMenos;
    _valIAntes = _totIMais - _totIMenos;
    _valSAntes = _totSMais - _totSMenos;
    _valCAntes = _totCMais - _totCMenos;
//  Calcula Valor Final de D
    if(_valDAntes >= 6) { _valD = 7;} else
    if((_valDAntes <= 5) && (_valDAntes >= 0)) { _valD = 6;} else
    if((_valDAntes <= -1) && (_valDAntes >= -4)) { _valD = 5;} else
    if((_valDAntes <= -5) && (_valDAntes >= -7)) { _valD = 4;} else
    if((_valDAntes <= -8) && (_valDAntes >= -11)) { _valD = 3;} else
    if((_valDAntes <= -12) && (_valDAntes >= -14)) { _valD = 2;} else
    if(_valDAntes <= -15) { _valD = 1;}

    print ("Valor de D = " + _valD.toString() );

    //  Calcula Valor Final de i
    if(_valIAntes >= 8) { _valI = 7;} else
    if((_valIAntes <= 7) && (_valIAntes >= 6)) { _valI = 6;} else
    if((_valIAntes <= 5) && (_valIAntes >= 3)) { _valI = 5;} else
    if((_valIAntes <= 2) && (_valIAntes >= 1)) { _valI = 4;} else
    if((_valIAntes <= 0) && (_valIAntes >= -2)) { _valI = 3;} else
    if((_valIAntes <= -3) && (_valIAntes >= -5)) { _valI = 2;} else
    if(_valIAntes <= -6) { _valI = 1;}
    print ("Valor de I = " + _valI.toString() );
    //  Calcula Valor Final de S
    if(_valSAntes >= 12) { _valS = 7;} else
    if((_valSAntes <= 11) && (_valSAntes >= 9)) { _valS = 6;} else
    if((_valSAntes <= 8) && (_valSAntes >= 6)) { _valS = 5;} else
    if((_valSAntes <= 5) && (_valSAntes >= 3)) { _valS = 4;} else
    if((_valSAntes <= 2) && (_valSAntes >= 0)) { _valS = 3;} else
    if((_valSAntes <= -1) && (_valSAntes >= -4)) { _valS = 2;} else
    if(_valSAntes <= -5) { _valS = 1;}
    print ("Valor de S = " + _valS.toString() );
    //  Calcula Valor Final de C
    if(_valCAntes >= 6) { _valC = 7;} else
    if((_valCAntes <= 5) && (_valCAntes >= 3)) { _valC = 6;} else
    if((_valCAntes <= 2) && (_valCAntes >= 0)) { _valC = 5;} else
    if((_valCAntes <= -1) && (_valCAntes >= -2)) { _valC = 4;} else
    if((_valCAntes <= -3) && (_valCAntes >= -5)) { _valC = 3;} else
    if((_valCAntes <= -6) && (_valCAntes >= -8)) { _valC = 2;} else
    if(_valCAntes <= -9) { _valC = 1;}
    print ("Valor de C = " + _valC.toString() );
    _nroDISC = ((_valD * 1000) + (_valI * 100) + (_valS * 10) + (_valC));

    Firestore db = Firestore.instance;
    QuerySnapshot querySnapshot =
        await db.collection("Disc")
    .document("tabelas")
    .collection("Codigos")
    .where("codigo", isEqualTo: _nroDISC)
    .getDocuments();
    for( DocumentSnapshot item in querySnapshot.documents ) {
      var dados = item.data;
      print("Titulo: ${dados["codigo"].toString()} Titulo : ${dados["titulo"]
          .toString()}");
    }
  }
  @override
  void initState() {
    setState(() {
      _contabilizar();
    });
  }
  Widget build(BuildContext context) {
    return Container();
  }
}
