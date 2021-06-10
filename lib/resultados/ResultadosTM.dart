import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../graficos/Graficos.dart';
import '../graficos/GraficosTM.dart';
import '../Home.dart';

class ResultadosTM extends StatefulWidget {
  String _codaluno;
  int score_ca;
  int score_cb ;
  int score_cc ;
  int score_cd ;
  int score_ce ;
  int score_cf ;
  int score_cg ;
  int score_ch ;
  int score_ci ;
  int score_cj ;
  int score_ck;
  int score_cl ;

  ResultadosTM(this._codaluno,
      this.score_ca,
      this.score_cb,
      this.score_cc,
      this.score_cd,
      this.score_ce,
      this.score_cf,
      this.score_cg,
      this.score_ch,
      this.score_ci,
      this.score_cj,
      this.score_ck,
      this.score_cl);
  @override
  _ResultadosTMState createState() => _ResultadosTMState();
}

class _ResultadosTMState extends State<ResultadosTM> {


  /*
 firebase

*/

  //
  void _iniciaDB () async {


    setState(() {
      if (widget.score_ca < 7) {_cv1 = _red;}
      else if ((widget.score_ca > 6) && (widget.score_ca < 10)) {_cv1 = _orange;}
      else if ((widget.score_ca > 9) && (widget.score_ca < 16)) {_cv1 = _yellow;}
      else if ((widget.score_ca > 15) && (widget.score_ca < 19)) {_cv1 = _lime;}
      else if ((widget.score_ca > 18)) {_cv1 = _green;};
      //
      if (widget.score_cb < 7) {_cv2 = _red;}
      else if ((widget.score_cb > 6) && (widget.score_cb < 10)) {_cv2 = _orange;}
      else if ((widget.score_cb > 9) && (widget.score_cb < 16)) {_cv2 = _yellow;}
      else if ((widget.score_cb > 15) && (widget.score_cb < 19)) {_cv2 = _lime;}
      else if ((widget.score_cb > 18)) {_cv2 = _green;};
      //
      if (widget.score_cc < 7) {_cv3 = _red;}
      else if ((widget.score_cc > 6) && (widget.score_cc < 10)) {_cv3 = _orange;}
      else if ((widget.score_cc > 9) && (widget.score_cc < 16)) {_cv3 = _yellow;}
      else if ((widget.score_cc > 15) && (widget.score_cc < 19)) {_cv3 = _lime;}
      else if ((widget.score_cc > 18)) {_cv3 = _green;};
      //
      if (widget.score_cd < 7) {_cv4 = _red;}
      else if ((widget.score_cd > 6) && (widget.score_cd < 10)) {_cv4 = _orange;}
      else if ((widget.score_cd > 9) && (widget.score_cd < 16)) {_cv4 = _yellow;}
      else if ((widget.score_cd > 15) && (widget.score_cd < 19)) {_cv4 = _lime;}
      else if ((widget.score_cd > 18)) {_cv4 = _green;};
      //
      if (widget.score_ce < 7) {_cv5 = _red;}
      else if ((widget.score_ce > 6) && (widget.score_ce < 10)) {_cv5 = _orange;}
      else if ((widget.score_ce > 9) && (widget.score_ce < 16)) {_cv5 = _yellow;}
      else if ((widget.score_ce > 15) && (widget.score_ce < 19)) {_cv5 = _lime;}
      else if ((widget.score_ce > 18)) {_cv5 = _green;};
      //

      if (widget.score_cf < 7) {_cv6 = _red;}
      else if ((widget.score_cf > 6) && (widget.score_cf < 10)) {_cv6 = _orange;}
      else if ((widget.score_cf > 9) && (widget.score_cf < 16)) {_cv6 = _yellow;}
      else if ((widget.score_cf > 15) && (widget.score_cf < 19)) {_cv6 = _lime;}
      else if ((widget.score_cf > 18)) {_cv6 = _green;};
      //
      if (widget.score_cg < 7) {_cv7 = _red;}
      else if ((widget.score_cg > 6) && (widget.score_cg < 10)) {_cv7 = _orange;}
      else if ((widget.score_cg > 9) && (widget.score_cg < 16)) {_cv7 = _yellow;}
      else if ((widget.score_cg > 15) && (widget.score_cg < 19)) {_cv7 = _lime;}
      else if ((widget.score_cg > 18)) {_cv7 = _green;};
      //
      if (widget.score_ch < 7) {_cv8 = _red;}
      else if ((widget.score_ch > 6) && (widget.score_ch < 10)) {_cv8 = _orange;}
      else if ((widget.score_ch > 9) && (widget.score_ch < 16)) {_cv8 = _yellow;}
      else if ((widget.score_ch > 15) && (widget.score_ch < 19)) {_cv8 = _lime;}
      else if ((widget.score_ch > 18)) {_cv8 = _green;};
      //
      if (widget.score_ci < 7) {_cv9 = _red;}
      else if ((widget.score_ci > 6) && (widget.score_ci < 10)) {_cv9 = _orange;}
      else if ((widget.score_ci > 9) && (widget.score_ci < 16)) {_cv9 = _yellow;}
      else if ((widget.score_ci > 15) && (widget.score_ci < 19)) {_cv9 = _lime;}
      else if ((widget.score_ci > 18)) {_cv9 = _green;};
      //
      if (widget.score_cj < 7) {_cv10 = _red;}
      else if ((widget.score_cj > 6) && (widget.score_cj < 10)) {_cv10 = _orange;}
      else if ((widget.score_cj > 9) && (widget.score_cj < 16)) {_cv10 = _yellow;}
      else if ((widget.score_cj > 15) && (widget.score_cj < 19)) {_cv10 = _lime;}
      else if ((widget.score_cj > 18)) {_cv10 = _green;};
      //
      if (widget.score_ck < 7) {_cv11 = _red;}
      else if ((widget.score_ck > 6) && (widget.score_ck < 10)) {_cv11 = _orange;}
      else if ((widget.score_ck > 9) && (widget.score_ck < 16)) {_cv11 = _yellow;}
      else if ((widget.score_ck > 15) && (widget.score_ck < 19)) {_cv11 = _lime;}
      else if ((widget.score_ck > 18)) {_cv11 = _green;};
      //
      if (widget.score_cl < 7) {_cv12 = _red;}
      else if ((widget.score_cl > 6) && (widget.score_cl < 10)) {_cv12 = _orange;}
      else if ((widget.score_cl > 9) && (widget.score_cl < 16)) {_cv12 = _yellow;}
      else if ((widget.score_cl > 15) && (widget.score_cl < 19)) {_cv12 = _lime;}
      else if ((widget.score_cl > 18)) {_cv12 = _green;};
      //



      //
    });
  }

  Color _cv1 = Colors.grey;
  Color _cv2 = Colors.grey;
  Color _cv3 = Colors.grey;
  Color _cv4 = Colors.grey;
  Color _cv5 = Colors.grey;
  Color _cv6 = Colors.grey;
  Color _cv7 = Colors.grey;
  Color _cv8 = Colors.grey;
  Color _cv9 = Colors.grey;
  Color _cv10 = Colors.grey;
  Color _cv11 = Colors.grey;
  Color _cv12 = Colors.grey;


  Color _red = Colors.red;
  Color _orange = Colors.deepOrangeAccent;
  Color _yellow = Colors.yellow;
  Color _lime = Colors.lightGreenAccent;
  Color _green = Colors.green;


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
                    print("codigo - a = " + widget.score_ca.toString());
                    print("codigo - b = " + widget.score_cb.toString());
                    print("codigo - c = " + widget.score_cc.toString());
                    print("codigo - d = " + widget.score_cd.toString());
                    print("codigo - e = " + widget.score_ce.toString());
                    print("codigo - f = " + widget.score_cf.toString());
                    print("codigo - g = " + widget.score_cg.toString());
                    print("codigo - h = " + widget.score_ch.toString());
                    print("codigo - i = " + widget.score_ci.toString());
                    print("codigo - j = " + widget.score_cj.toString());
                    print("codigo - k = " + widget.score_ck.toString());
                    print("codigo - l = " + widget.score_cl.toString());



                    Navigator.push(context,
                        MaterialPageRoute(
                            builder: (context) =>
                                GraficosTM(
                                    widget._codaluno,
                                    widget.score_ca,_cv1,
                                  widget.score_cb,_cv2,
                                  widget.score_cc,_cv3,
                                  widget.score_cd,_cv4,
                                  widget.score_ce,_cv5,
                                  widget.score_cf,_cv6,
                                  widget.score_cg,_cv7,
                                  widget.score_ch,_cv8,
                                  widget.score_ci,_cv9,
                                  widget.score_cj,_cv10,
                                  widget.score_ck,_cv11,
                                  widget.score_cl,_cv12

                                    )));
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
