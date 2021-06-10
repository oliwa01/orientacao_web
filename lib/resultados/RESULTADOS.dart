import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../graficos/Graficos.dart';
import '../Home.dart';

class RESULTADOS extends StatefulWidget {
  String _codaluno;
  int _TotalAutoEstimaW;
  int _TotalAnsiedadeW;
  int _TotalStressW;
  int _TotalDispersaoW;
  int _TotalHiperatividadeW;
  int _TotalRelacionamentosW;
  int _TotalDepressaoW;
  int _TotalLesaoW;

  RESULTADOS(this._codaluno,this._TotalAutoEstimaW,
  this._TotalAnsiedadeW,
  this._TotalStressW,
  this._TotalDispersaoW,
  this._TotalHiperatividadeW,
  this._TotalRelacionamentosW,
  this._TotalDepressaoW,
  this._TotalLesaoW);
  @override
  _RESULTADOSState createState() => _RESULTADOSState();
}

class _RESULTADOSState extends State<RESULTADOS> {


  /*
 firebase

*/

  //
  void _iniciaDB () async {
/*
    Firestore db = Firestore.instance;
    QuerySnapshot querySnapshot = await
    db.collection("aluno").document(widget._codaluno).collection("Testes")
        .where('data-teste', isEqualTo: widget._datateste)
        .getDocuments();
    
    for (DocumentSnapshot item in querySnapshot.documents) {
      var alunos = item.data;

        _TotalAutoEstima =
        (alunos['P01'] + alunos['P06'] + alunos['P17'] + alunos['P25'] +
            alunos['P32'] + alunos['P37'] + alunos['P42'] + alunos['P50'] +
            alunos['P58'] + alunos['P64']);
        _TotalAnsiedade =
        (alunos['P05'] + alunos['P10'] + alunos['P19'] + alunos['P22'] +
            alunos['P28'] + alunos['P33'] + alunos['P39'] + alunos['P49'] +
            alunos['P57'] + alunos['P60']);
        _TotalStress =
        (alunos['P07'] + alunos['P16'] + alunos['P23'] + alunos['P24'] +
            alunos['P31'] + alunos['P38'] + alunos['P51'] + alunos['P59'] +
            alunos['P61']);
        _TotalDispersao =
        (alunos['P02'] + alunos['P14'] + alunos['P45'] + alunos['P47'] +
            alunos['P54'] + alunos['P63']);
        _TotalHiperatividade =
        (alunos['P04'] + alunos['P12'] + alunos['P18'] + alunos['P34'] +
            alunos['P35'] + alunos['P48'] + alunos['P52']);
        _TotalRelacionamentos =
        (alunos['P09'] + alunos['P11'] + alunos['P20'] + alunos['P27'] +
            alunos['P40'] + alunos['P43'] + alunos['P56']);
        _TotalDepressao =
        (alunos['P03'] + alunos['P08'] + alunos['P15'] + alunos['P26'] +
            alunos['P29'] + alunos['P36'] + alunos['P41'] + alunos['P46'] +
            alunos['P53'] + alunos['P62']);
        _TotalLesao =
        (alunos['P13'] + alunos['P21'] + alunos['P30'] + alunos['P44'] +
            alunos['P45']);
      }
*/
      setState(() {
        if (widget._TotalAutoEstimaW < 15) {_cv1 = _grey;}
        else if ((widget._TotalAutoEstimaW > 14) && (widget._TotalAutoEstimaW < 26)) {_cv1 = _yellow;}
        else if ((widget._TotalAutoEstimaW > 25) && (widget._TotalAutoEstimaW < 41)) {_cv1 = _green;};

        if (widget._TotalAnsiedadeW < 15) {_cv2 = _green;}
        else if ((widget._TotalAnsiedadeW > 14) && (widget._TotalAnsiedadeW < 26)) {_cv2 = _yellow;}
        else if ((widget._TotalAnsiedadeW > 25) && (widget._TotalAnsiedadeW < 41)) {_cv2 = _grey;};


        if (widget._TotalStressW < 10) {_cv3 = _green;}
        else if ((widget._TotalStressW > 9) && (widget._TotalStressW < 27)) {_cv3 = _yellow;}
        else if ((widget._TotalStressW > 26) && (widget._TotalStressW < 37)) {_cv3 = _grey;};

        if (widget._TotalDispersaoW < 10) {_cv4 = _green;}
        else if ((widget._TotalDispersaoW > 9) && (widget._TotalDispersaoW < 18)) {_cv4 = _yellow;}
        else if ((widget._TotalDispersaoW > 17) && (widget._TotalDispersaoW < 25)) {_cv4 = _grey;};

        if (widget._TotalHiperatividadeW < 9) {_cv5 = _green;}
        else if ((widget._TotalHiperatividadeW > 8) && (widget._TotalHiperatividadeW < 20)) {_cv5 = _yellow;}
        else if ((widget._TotalHiperatividadeW > 19) && (widget._TotalHiperatividadeW < 29)) {_cv5 = _grey;};

        if (widget._TotalRelacionamentosW < 9) {_cv6 = _green;}
        else if ((widget._TotalRelacionamentosW > 8) && (widget._TotalRelacionamentosW < 20)) {_cv6 = _yellow;}
        else if ((widget._TotalRelacionamentosW > 19) && (widget._TotalRelacionamentosW < 29)) {_cv6 = _grey;};

        if (widget._TotalDepressaoW < 15) {_cv7 = _green;}
        else if ((widget._TotalDepressaoW > 14) && (widget._TotalDepressaoW < 26)) {_cv7 = _yellow;}
        else if ((widget._TotalDepressaoW > 25) && (widget._TotalDepressaoW < 41)) {_cv7 = _grey;};

        if (widget._TotalLesaoW < 6) {_cv8 = _green;}
        else if ((widget._TotalLesaoW > 5) && (widget._TotalLesaoW < 11)) {_cv8 = _yellow;}
        else if ((widget._TotalLesaoW > 10) && (widget._TotalLesaoW < 21)) {_cv8 = _grey;};
      });
    }

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
                  Text("O desequilíbrio emocional é caracterizado pelas alterações de humor e facilidade em sair do eixo diante de acontecimentos negativos e imprevistos. As responsabilidades diárias, a sobrecarga profissional, os relacionamentos amorosos, as frustrações e a necessidade de se adequar aos padrões impostos pela sociedade são alguns fatores que podem causar sérios desequilíbrios.\n\n" +

                    "Algumas pessoas são mais sensíveis e estão mais suscetíveis a esses acontecimentos, mas isso não quer dizer que não pode acontecer com qualquer pessoa. As emoções estão presentes em todas as situações da vida e, quando elas estão em desarmonia, podem fazer com que o indivíduo se porte de maneira inadequada e tenha prejuízos em sua saúde e relacionamentos.\n\n"+

                    "O desequilíbrio emocional não é responsável apenas por causar sintomas mentais e sentimentais, ele pode causar diversos problemas físicos, tais como: fortes dores musculares, dores de cabeça, gastrite, estresse e até mesmo depressão.",
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
                    print("codigo - aluno = " +widget._codaluno);
                    print("Total AutoEstima " +widget._TotalAutoEstimaW.toString());
                    print("Total Ansiedade " +widget._TotalAnsiedadeW.toString());
                    print("Total Stress " +widget._TotalStressW.toString());
                    print("Total Dispersao " +widget._TotalDispersaoW.toString());
                    print("Total Hiperatividade " +widget._TotalHiperatividadeW.toString());
                    print("Total Relacionamento " +widget._TotalRelacionamentosW.toString());
                    print("Total Depressão " +widget._TotalDepressaoW.toString());
                    print("Total Lesâo " +widget._TotalLesaoW.toString());
                        Navigator.push(context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  Graficos (
                                      widget._codaluno,
                                      widget._TotalAutoEstimaW,
                                      _cv1,widget._TotalAnsiedadeW,
                                      _cv2,widget._TotalStressW,
                                      _cv3,widget._TotalDispersaoW,
                                      _cv4,widget._TotalHiperatividadeW,
                                      _cv5,widget._TotalRelacionamentosW,
                                      _cv6,widget._TotalDepressaoW,
                                      _cv7,widget._TotalLesaoW,
                                      _cv8)));
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
