import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:intl/intl.dart';
import '../DiagnosticoEmocional.dart';
import '../GerenciarTempo.dart';

import '../resultados/ResultadosTM.dart';

class TM extends StatefulWidget {
  String _codAluno;
  TM(this._codAluno);
  @override
  _TMState createState() => _TMState();
}

class _TMState extends State<TM> {
  AnimationController controller;
  BorderRadiusGeometry _bR = BorderRadius.circular(8);
  String _dataTimeDb;

  //
  /*
 firebase

*/
  Firestore db = Firestore.instance;
  //

  void _gravaDb () {
    _carregaTab();
    score_ca = (_V01 + _V02 + _V03 + _V04 + _V05 );
    score_cb = (_V06 + _V07 + _V08 + _V09 + _V10 );
    score_cc = (_V11 + _V12 + _V13 + _V14 + _V15 );
    score_cd = (_V16 + _V17 + _V18 + _V19 + _V10 );
    score_ce = (_V21 + _V22 + _V23 + _V24 + _V25 );
    score_cf = (_V26 + _V27 + _V28 + _V29 + _V20 );
    score_cg = (_V31 + _V32 + _V33 + _V34 + _V35 );
    score_ch = (_V36 + _V37 + _V38 + _V39 + _V30 );
    score_ci = (_V41 + _V42 + _V43 + _V44 + _V45 );
    score_cj = (_V46 + _V47 + _V48 + _V49 + _V40 );
    score_ck = (_V51 + _V52 + _V53 + _V54 + _V55 );
    score_cl = (_V56 + _V57 + _V58 + _V59 + _V60 );

    DateTime now = DateTime.now();
    String _formattedDate = DateFormat('yyyy-MM-dd – kk:mm').format(now);
    _dataTimeDb = _formattedDate;
    db.collection("aluno")
        .document(widget._codAluno)
        .collection("Testes")
        .add(
        {
          "cat_a" : score_ca ,
          "cat_b" : score_cb ,
          "cat_c" : score_cc ,
          "cat_d" : score_cd ,
          "cat_e" : score_ce ,
          "cat_f" : score_cf ,
          "cat_g" : score_cg ,
          "cat_h" : score_ch ,
          "cat_i" : score_ci ,
          "cat_j" : score_cj ,
          "cat_k" : score_ck ,
          "cat_l" : score_cl ,

          "Code":"TM","Data-teste": _formattedDate,

          "P01" : _V01, "P02" : _V02, "P03" : _V03,"P04" : _V04,"P05" : _V05,"P06" : _V06,"P07" : _V07,"P08" : _V08,"P09" : _V09,"P10" : _V10,
          "P11" : _V11, "P12" : _V12, "P13" : _V13,"P14" : _V14,"P15" : _V15,"P16" : _V16,"P17" : _V17,"P18" : _V18,"P19" : _V19,"P20" : _V20,
          "P21" : _V21, "P22" : _V22, "P23" : _V23,"P24" : _V24,"P25" : _V25,"P26" : _V26,"P27" : _V27,"P28" : _V28,"P29" : _V29,"P30" : _V30,
          "P31" : _V31, "P32" : _V32, "P33" : _V33,"P34" : _V34,"P35" : _V35,"P36" : _V36,"P37" : _V37,"P38" : _V38,"P39" : _V39,"P40" : _V40,
          "P41" : _V41, "P42" : _V42, "P43" : _V43,"P44" : _V44,"P45" : _V45,"P46" : _V46,"P47" : _V47,"P48" : _V48,"P49" : _V49,"P50" : _V50,
          "P51" : _V51, "P52" : _V52, "P53" : _V53,"P54" : _V54,"P55" : _V55,"P56" : _V56,"P57" : _V57,"P58" : _V58,"P59" : _V59,"P60" : _V60
        }
    );}

//


//
  void _carregaTab() {
    _V01 = _valorpergunta[1];
    _V02 = _valorpergunta[2];
    _V03 = _valorpergunta[3];
    _V04 = _valorpergunta[4];
    _V05 = _valorpergunta[5];
    _V06 = _valorpergunta[6];
    _V07 = _valorpergunta[7];
    _V08 = _valorpergunta[8];
    _V09 = _valorpergunta[9];
    _V10 = _valorpergunta[10];
    _V11 = _valorpergunta[11];
    _V12 = _valorpergunta[12];
    _V13 = _valorpergunta[13];
    _V14 = _valorpergunta[14];
    _V15 = _valorpergunta[15];
    _V16 = _valorpergunta[16];
    _V17 = _valorpergunta[17];
    _V18 = _valorpergunta[18];
    _V19 = _valorpergunta[19];
    _V20 = _valorpergunta[20];
    _V21 = _valorpergunta[21];
    _V22 = _valorpergunta[22];
    _V23 = _valorpergunta[23];
    _V24 = _valorpergunta[24];
    _V25 = _valorpergunta[25];
    _V26 = _valorpergunta[26];
    _V27 = _valorpergunta[27];
    _V28 = _valorpergunta[28];
    _V29 = _valorpergunta[29];
    _V30 = _valorpergunta[30];
    _V31 = _valorpergunta[31];
    _V32 = _valorpergunta[32];
    _V33 = _valorpergunta[33];
    _V34 = _valorpergunta[34];
    _V35 = _valorpergunta[35];
    _V36 = _valorpergunta[36];
    _V37 = _valorpergunta[37];
    _V38 = _valorpergunta[38];
    _V39 = _valorpergunta[39];
    _V40 = _valorpergunta[40];
    _V41 = _valorpergunta[41];
    _V42 = _valorpergunta[42];
    _V43 = _valorpergunta[43];
    _V44 = _valorpergunta[44];
    _V45 = _valorpergunta[45];
    _V46 = _valorpergunta[46];
    _V47 = _valorpergunta[47];
    _V48 = _valorpergunta[48];
    _V49 = _valorpergunta[49];
    _V50 = _valorpergunta[50];
    _V51 = _valorpergunta[41];
    _V52 = _valorpergunta[42];
    _V53 = _valorpergunta[43];
    _V54 = _valorpergunta[44];
    _V55 = _valorpergunta[45];
    _V56 = _valorpergunta[46];
    _V57 = _valorpergunta[47];
    _V58 = _valorpergunta[48];
    _V59 = _valorpergunta[49];
    _V60 = _valorpergunta[50];


  }


  int _npergunta = 60;
  int _resultado = 0;
  int _tresultado = 0;
  int _numeroSorteado = 1;
  int _numeroAnterior = 0;
//
  int _V01 = 0;
  int _V02 = 0;
  int _V03 = 0;
  int _V04 = 0;
  int _V05 = 0;
  int _V06 = 0;
  int _V07 = 0;
  int _V08 = 0;
  int _V09 = 0;
  int _V10 = 0;
  int _V11 = 0;
  int _V12 = 0;
  int _V13 = 0;
  int _V14 = 0;
  int _V15 = 0;
  int _V16 = 0;
  int _V17 = 0;
  int _V18 = 0;
  int _V19 = 0;
  int _V20 = 0;
  int _V21 = 0;
  int _V22 = 0;
  int _V23 = 0;
  int _V24 = 0;
  int _V25 = 0;
  int _V26 = 0;
  int _V27 = 0;
  int _V28 = 0;
  int _V29 = 0;
  int _V30 = 0;
  int _V31 = 0;
  int _V32 = 0;
  int _V33 = 0;
  int _V34 = 0;
  int _V35 = 0;
  int _V36 = 0;
  int _V37 = 0;
  int _V38 = 0;
  int _V39 = 0;
  int _V40 = 0;
  int _V41 = 0;
  int _V42 = 0;
  int _V43 = 0;
  int _V44 = 0;
  int _V45 = 0;
  int _V46 = 0;
  int _V47 = 0;
  int _V48 = 0;
  int _V49 = 0;
  int _V50 = 0;
  int _V51 = 0;
  int _V52 = 0;
  int _V53 = 0;
  int _V54 = 0;
  int _V55 = 0;
  int _V56 = 0;
  int _V57 = 0;
  int _V58 = 0;
  int _V59 = 0;
  int _V60 = 0;

  int score_ca  = 0;
  int score_cb  = 0;
  int score_cc  = 0;
  int score_cd  = 0;
  int score_ce  = 0;
  int score_cf  = 0;
  int score_cg  = 0;
  int score_ch  = 0;
  int score_ci  = 0;
  int score_cj  = 0;
  int score_ck  = 0;
  int score_cl  = 0;

  String _perguntatela = " ";
  var _valorpergunta = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0];
  var _pergunta = [
    ' ',
    "1. Eu acredito que eu possa controlar ou influenciar a maioria das coisas que acontecem em minha vida",
    "2. Eu faço algumas coisas no meu trabalho que eu gosto, mesmo sabendo que não são essenciais. ",
    "3. Eu tenho muita disciplina e força de vontade. ",
    "4. Eu não tenho tempo suficiente para fazer tudo. ",
    "5. Eu sinto muita satisfação com a minha vida. ",
    "6. Eu escrevo objetivos de performance anuais para meu trabalho. ",
    "7. Eu mantenho uma lista principal, de todos os trabalhos e principais atribuições que precisam ser executados durantes as semanas seguintes, e priorizo cada um deles. ",
    "8. Eu revejo meus objetivos a longo prazo ao menos um vez ao dia. ",
    "9. Constantemente me questiono se a forma que estou fazendo meu trabalho vai me ajudar a atingir meus objetivos. ",
    "10. Eu tenho uma lista escrita de todos os meus objetivos pessoais de longo prazo. ",
    "11. Eu me sinto dirigido pelas urgências do dia. ",
    "12. Eu priorizo toda a variedade de trabalho e atividades do meu dia. ",
    "13. Eu tendo a resolver os trabalhos mais fáceis, rápidos ou prazerosos primeiro. ",
    "14. Mudar as prioridades constantemente é o grande problema em meu trabalho. ",
    "15. Eu consigo facilmente identificar as poucas atividades pontuais que contam para a maioria dos meus resultados no trabalho. ",
    "16. Ao menos uma vez ao ano, eu faço um registro sobre como eu utilizo meu tempo. ",
    "17. Eu constantemente analizo tudo o que estou fazendo e procure uma forma de melhorar a minha performance. ",
    "18. Eu frequentemente penso estar demasiadamente comprometido e tentando fazer muitas coisas de uma só vez. ",
    "19. Constantemente, crises recorrentes acabam tomando muito do meu tempo. ",
    "20. Eu estudo como meus padrões de trabalho mudam dia após dia e durante o dia. "
    "21. Eu escrevo diariamente um lista do que fazer. ",
    "22. Eu escrevo um planejamento seminal, que inclui objetivos específicos, atividades e prioridades. ",
    "23. Ao menos uma vez por semana, me encontro com outras pessoas para coordenar planos, prioridades e atividads. ",
    "24. Eu penso frequentemente que deveria ser mais orgaizado. ",
    "25. Em meu planejamento diário, levo em consideração um tempo para as ocorrências inesperadas que não posso controlar. ",
    "26. Eu mantenho uma tabela de horários para os momentos específicos em que devo realizar as tarefas mais importantes. ",
    "27. Eu frequentemente deixo de seguir a minha tabela e tendo a pular de uma tarefa para outra. ",
    "28. Faço um agrupamento de tarefas similres e organize as atividades em um sequência lógica. ",
    "29. Faço uma estimative do tempo necessário para realização de cada atividade. ",
    "30. Eu consigo encontrar um tempo livre, sem interrupções, sempre que preciso. ",
    "31. Eu analizo minhas interrupções e sistematicamente trablho para reduzi-las ou eliminá-las. ",
    "32. Eu agrupo vários intens e lido várias com várias coisas ao mesmo tempo. Assim não causo interrupções aos outros tantas vezes durante o dia. ",
    "33. Socialização excessiva frequentemente tiram o foco do meu trabalho. ",
    "34. Eu faço um pré-arranjo com outras pessoas ao invés de confiar em interrupções espontâneas. ",
    "35. Interrupções e distrações são um grande problema no meu trabalho. ",
    "36. Nossas reuniões não são muito bem organizadas, e algumas delas não são nem mesmo necessárias. ",
    "37. Nossas reuniões começam na hora marcada. ",
    "38. Nossas reuniões têm pautas bem elaboradas. ",
    "39. Reuniões tomam uma boa parte do meu tempo. ",
    "40. Nós analizamos frequentemente nossas reuniões e tentamos melhorá-las. ",
    "41. Eu frequentemente analizo minha “papelada” e procure formas de eliminá-la, simplificá-la ou deixá-la melhor. ",
    "42. Eu uso um arquivo Mapa Planejador Diario ou sistema similar para ajudar a manter a organização de detalhes e um acompanhamento apropriado. ",
    "43. Eu tenho um bom procedimento sistemático para classificar e manusear minhas documentação. ",
    "44. Eu tenho trabalho em me manter atualizado com minha leitura. ",
    "45. Minha mesa ou estação de trabalho é bastante confusa e poderia ser mais limpa e organizada. ",
    "46. Eu frequentemente faço coisas por minha conta por ser mais rápido e fácil do que delegá-las à outras pessoas. ",
    "47. Eu detalho informações de trabalhos que foram delegados de forma escrita. ",
    "48. Eu tendo a me manter demasiadamente envolvido em detalhes. ",
    "49. Eu frequentemente me esqueço de acompanhar ou checar trabalhos que deleguei à outra pessoa. ",
    "50. Quando um trabalho é delegado a mim, eu prontamente faço perguntas necessárias para tornar as ideia mais claras. ",
    "51. Eu frequentemente me livro de tarefas que são desagradáveis. ",
    "52. É necessária a pressão do término de um prazo para que eu inicie um trabalho; Eu tendo a esperar até o último minuto. ",
    "53. Eu tenho que esperar pelo humor certo, ou o momento certo, para enfrentar um trabalho criativo",
    "54. Eu frequentemente me preocupo em não cometer erros no trabalho ou tomar decisões errados. ",
    "56. Eu constantemente procuro formas de economizar tempo para as pessoas com quem trabalho. ",
    "57. Eu frequentemente pergunto a outras pessoas como eu estou tomando o tempo delas. Assim posso sempre melhorar. ",
    "58. Estou sempre dentro do horário e preparado para as reuniões. ",
    "59. Eu discuto regularmente sobre as preocupações com o tempo da equipe e outros problemas. ",
    "60. Eu nunca perco um prazo ou entrego minha parte do trabalho com atraso. "

  ];
  bool _s1 = false;
  bool _c1 = false;
  bool _c2 = false;
  bool _c3 = false;
  bool _c4 = false;
  bool _c5 = false;
  bool _c6 = false;
  bool _c7 = false;
  bool _sc1 = false;
  bool _sc2 = false;
  bool _sc3 = false;
  bool _sc4 = false;
  bool _sc5 = false;
  bool _sc6 = false;
  bool _sc7 = false;
  //
  int _TotalAutoEstima;
  int _TotalAnsiedade;
  int _TotalStress;
  int _TotalDispersao;
  int _TotalHiperatividade;
  int _TotalRelacionamentos;
  int _TotalDepressao;
  int _TotalLesao;
  //
  _montaResultado() {
    if (
    (_npergunta == 1) |
    (_npergunta == 3) |
    (_npergunta == 5) |
    (_npergunta == 6) |
    (_npergunta == 7) |
    (_npergunta == 8) |
    (_npergunta == 9) |
    (_npergunta == 10) |
    (_npergunta == 12) |
    (_npergunta == 15) |
    (_npergunta == 16) |
    (_npergunta == 17) |
    (_npergunta == 20) |
    (_npergunta == 21) |
    (_npergunta == 22) |
    (_npergunta == 23) |
    (_npergunta == 25) |
    (_npergunta == 26) |
    (_npergunta == 28) |
    (_npergunta == 29) |
    (_npergunta == 30) |
    (_npergunta == 31) |
    (_npergunta == 32) |
    (_npergunta == 34) |
    (_npergunta == 37) |
    (_npergunta == 38) |
    (_npergunta == 40) |
    (_npergunta == 41) |
    (_npergunta == 42) |
    (_npergunta == 43) |
    (_npergunta == 47) |
    (_npergunta == 50) |
    (_npergunta == 56) |
    (_npergunta == 57) |
    (_npergunta == 58) |
    (_npergunta == 59) |
    (_npergunta == 60)) {
      if (_c1) {
        _resultado = 4;
      }
      else if (_c2) {
        _resultado = 3;
      }
      else if (_c3) {
        _resultado = 2;
      }
      else if (_c4) {
        _resultado = 1;
      }
    }
    else {
      if (_c1) {
        _resultado = 1;
      }
      else if (_c2) {
        _resultado = 2;
      }
      else if (_c3) {
        _resultado = 3;
      }
      else if (_c4) {
        _resultado = 4;
      }
    }
    _valorpergunta[_numeroSorteado] = _resultado;
  }
  //
  _alteraResultado() {
    _numeroAnterior = _numeroSorteado - 1;
    if      (_valorpergunta[_numeroAnterior] == 0)  { _c1 = true;}
    else if (_valorpergunta[_numeroAnterior] == 1) { _c2 = true;}
    else if (_valorpergunta[_numeroAnterior] == 2) { _c3 = true;}
    else if (_valorpergunta[_numeroAnterior] == 3) { _c4 = true;}
    else if (_valorpergunta[_numeroAnterior] == 4) { _c5 = true;}
    else if (_valorpergunta[_numeroAnterior] == 5) { _c6 = true;}
    else if (_valorpergunta[_numeroAnterior] == 6) { _c7 = true;}
  }
  //
  void _limpaBotao () {
    print(_valorpergunta.toString());
    _c1 = _c2 = _c3 = _c4 = _c5 = _c6 = _c7 = false;
  }


//
  void _gerarPergunta () {
    //gerar numero randomicos
    setState(() {
      _perguntatela = _pergunta[_numeroSorteado];
      _npergunta = _numeroSorteado;
    });
  }
  //  Procedimento de finaliar o teste
  void _finalizaTeste() {

    _gravaDb();
    _tabulaResultados();
  }
  void _tabulaResultados() {


  }
  //
  @override
  void initState() {
    _gerarPergunta();
  }
  Widget build(BuildContext context) {
    final widthlua = MediaQuery.of(context).size.width;
    final heightlua = MediaQuery.of(context).size.height;

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

    double  fontpergunta =  (widthlua > 1600) ? widthlua / 33:
    (widthlua > 1500)  ? widthlua / 32 :
    (widthlua > 1400)  ? widthlua / 32 :
    (widthlua > 1300)  ? widthlua / 32 :
    (widthlua > 1200)  ? widthlua / 31 :
    (widthlua > 1100)  ? widthlua / 31:
    (widthlua > 1000)  ? widthlua / 31 :
    (widthlua > 900)  ? widthlua / 23:
    (widthlua > 800)  ? widthlua / 21 :
    (widthlua > 700)  ? widthlua / 20 :
    (widthlua > 600)  ? widthlua / 20 :
    (widthlua > 500)  ? widthlua / 20 : widthlua / 21 ;




    double padbox =  (heightlua > 1600) ? 25 :
    (heightlua > 1500)  ? 24 :
    (heightlua > 1400)  ? 23 :
    (heightlua > 1300)  ? 22 :
    (heightlua > 1200)  ? 22 :
    (heightlua > 1100)  ? 21 :
    (heightlua > 1000)  ? 20 :
    (heightlua > 900)  ? 20 :
    (heightlua > 800)  ? 19 :
    (heightlua > 700)  ? 19 :
    (heightlua > 600)  ? 18 :
    (heightlua > 500)  ? 20:  20 ;

    Color colorbar =  (_npergunta > (_pergunta.length * 0.95) ? Colors.green :
    (_npergunta > (_pergunta.length * 0.90) ? Colors.greenAccent :
    (_npergunta > (_pergunta.length * 0.80) ? Colors.lightGreenAccent :
    (_npergunta > (_pergunta.length * 0.70) ? Colors.yellowAccent:
    (_npergunta > (_pergunta.length * 0.60) ? Colors.yellow :
    (_npergunta > (_pergunta.length * 0.50) ? Colors.orangeAccent :
    (_npergunta > (_pergunta.length * 0.40) ? Colors.deepOrangeAccent :
    (_npergunta > (_pergunta.length * 0.30) ? Colors.orange :
    (_npergunta > (_pergunta.length * 0.20) ? Colors.deepOrange :
    (_npergunta > (_pergunta.length * 0.10) ? Colors.redAccent :
    (_npergunta > (_pergunta.length * 0.05) ? Colors.red : Colors.pink)))))))))));



    double  w10p = widthlua * 0.10;
    double  w20p = widthlua * 0.20;
    double  w30p = widthlua * 0.30;
    double  w40p = widthlua * 0.40;
    double  w50p = widthlua * 0.50;
    double  w60p = widthlua * 0.60;
    double  w70p = widthlua * 0.70;
    double  w80p = widthlua * 0.80;
    double  w90p = widthlua * 0.90;
    double  w100p = widthlua * 0.8;


    double barranumerob = ((1 -(_npergunta / _pergunta.length))*100 );
    double  barranumerop = ((((_npergunta / _pergunta.length)-1)*100)+100);

    double  fontpercent  =
    ( barranumerop  < 1) ? font_adj * 0.1 :
    ( barranumerop  < 2) ? font_adj * 0.2 :
    ( barranumerop  < 3) ? font_adj * 0.3 :
    ( barranumerop  < 4) ? font_adj * 0.4 :
    ( barranumerop  < 5) ? font_adj * 0.5 :
    ( barranumerop  < 6) ? font_adj * 0.6 :
    ( barranumerop  < 7) ? font_adj * 0.7 :
    ( barranumerop  < 8) ? font_adj * 0.8 :
    ( barranumerop  < 9) ? font_adj * 0.9 :
    (barranumerop  < 10) ? font_adj * 0.95 : font_adj;

    double  h10p = heightlua * 0.05;
    double  hpergunta = heightlua * 0.23;
    double  hspace = heightlua * 0.033;
    double  hnumero = heightlua * 0.06;
    double  hpb = heightlua * 0.08;
    double  hbotao = heightlua * 0.07;
    double  hvolta = heightlua * 0.07;

    double  h80p = heightlua * 0.80;

    String perpergunta = barranumerop.toString();
    //
    String item_1 = "CONCORDO TOTALMENTE";
    String item_2 = "CONCORDO PARCIALMENTE";
    String item_3 = "DISCORDO PARCIALMENTE";
    String item_4 = "DISCORDO TOTALMENTE";


    return Scaffold(
      body: Container(

        color: Colors.white,
        child: ListView(
          children: <Widget>[
            //
            // box numero
            //
            //
            Container(
                height: hnumero,
                child:Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        //
                        // numero pergunta
                        //
                        AnimatedContainer(
                            padding: EdgeInsets.only (top: 11),
                            width:   (w100p * (barranumerop / 100)),
                            height:  hnumero,
                            decoration: BoxDecoration(
                              color: colorbar,
                              borderRadius: _bR,
                            ),
                            alignment: Alignment.center,
                            duration: Duration(seconds: 1),
                            curve: Curves.elasticInOut,
                            child: Text(
                              barranumerop > 10 ?
                              (perpergunta.substring(0,2))+"%" :
                              (perpergunta.substring(0,1))+"%"
                              , textAlign: TextAlign.center,

                              style: TextStyle(
                                  fontSize: fontpercent,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold
                              ),
                            )
                        ),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        //
                        // numero pergunta
                        //
                        AnimatedContainer(
                            padding: EdgeInsets.only (top: 11),
                            width:   (w100p * (barranumerob / 100)),
                            height:  hnumero,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: _bR,
                            ),
                            alignment: Alignment.center,
                            duration: Duration(seconds: 1),
                            curve: Curves.elasticInOut
                        ),
                      ],
                    )
                  ],
                )),
            //space
            SizedBox(
                height: hspace),

            SizedBox(
                width: w90p,
                height: hpergunta,
                child:Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    //
                    //  pergunta
                    //
                    Column(children: <Widget>[
                      AnimatedContainer(
                        padding: EdgeInsets.all(11),
                        width:  w80p-30,
                        height: hpergunta,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: _bR,
                        ),
                        alignment: Alignment.center,
                        duration: Duration(seconds: 2),
                        curve: Curves.elasticInOut,
                        child: Text(_perguntatela, textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: fontpergunta,
                              color: Colors.black,
                              fontWeight: FontWeight.bold
                          ),),
                      )
                    ],),


                  ],
                )

            ),
            //space
            SizedBox(
                height: hspace),

            //
            // NUNCA
            //
            SizedBox(
                width: h80p,
                height: hpb,
                child:
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Column(children: <Widget>[
                      GestureDetector (

                          onTap:() {
                            if (_c1 == false){
                              setState(() {
                                // _sc2 = _sc3 = _sc4 = _sc5 = true;
                                _c1 = true;
                                _c2 = _c3 = _c4 = _c5 =  _c6 = false;
                                // _sc1 = false;
                              });
                            }else{
                              setState(() {
                                _c1 = _c2 = _c3 = _c4 = _c5 = _c6 = false;
                              });
                            }
                          },
                          child:
                          AnimatedContainer(
                              padding: EdgeInsets.only(top : padbox),
                              width: w60p,
                              height: hpb,
                              decoration: BoxDecoration(
                                color: _c1 ? Colors.green: Colors.red,
                                borderRadius: _bR,
                              ),
                              alignment: _c1 ? Alignment.center : AlignmentDirectional.topCenter,
                              duration: Duration(seconds: 3),
                              curve: Curves.fastLinearToSlowEaseIn,
                              child:
                              Text(item_1,
                                style: TextStyle(
                                    fontSize: font_adj,
                                    color: _c1 ? Colors.black : Colors.black,
                                    fontWeight: FontWeight.bold
                                ),
                              )
                          ))
                    ],)
                  ],
                )
            ),
            //space
            SizedBox(
                height: hspace),
            //
            // 2
            //
            SizedBox(
                width: h80p,
                height: hpb,
                child:
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Column(children: <Widget>[
                      GestureDetector (

                          onTap:() {
                            if (_c2 == false){
                              setState(() {
                                // _sc2 = _sc3 = _sc4 = _sc5 = true;
                                _c2 = true;
                                _c1 = _c3 = _c4 = _c5 = _c6 =  false;
                                // _sc1 = false;
                              });
                            }else{
                              setState(() {
                                _c1 = _c2 =_c3 = _c4 = _c5 = _c6 =  false;
                              });
                            }
                          },
                          child:
                          AnimatedContainer(
                              padding: EdgeInsets.only(top : padbox),
                              width: w60p,
                              height: hpb,
                              decoration: BoxDecoration(
                                color: _c2 ? Colors.green: Colors.red,
                                borderRadius: _bR,
                              ),
                              alignment: _c2 ? Alignment.center : AlignmentDirectional.topCenter,
                              duration: Duration(seconds: 3),
                              curve: Curves.fastLinearToSlowEaseIn,
                              child:
                              Text(item_2,
                                style: TextStyle(
                                    fontSize: font_adj,
                                    color: _c2 ? Colors.black : Colors.black,
                                    fontWeight: FontWeight.bold
                                ),
                              )
                          ))
                    ],)
                  ],
                )
            ),
            //space
            SizedBox(
                height: hspace),
            //
            // 3
            //
            SizedBox(
                width: h80p,
                height: hpb,
                child:
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Column(children: <Widget>[
                      GestureDetector (

                          onTap:() {
                            if (_c3 == false){
                              setState(() {
                                // _sc2 = _sc3 = _sc4 = _sc5 = true;
                                _c3 = true;
                                _c1 = _c2 = _c4 = _c5 = _c6 =  false;
                                // _sc1 = false;
                              });
                            }else{
                              setState(() {
                                _c1 = _c2 =_c3 = _c4 = _c5 = _c6 =  false;
                              });
                            }
                          },
                          child:
                          AnimatedContainer(
                              padding: EdgeInsets.only(top : padbox),
                              width: w60p,
                              height: hpb,
                              decoration: BoxDecoration(
                                color: _c3 ? Colors.green: Colors.red,
                                borderRadius: _bR,
                              ),
                              alignment: _c3 ? Alignment.center : AlignmentDirectional.topCenter,
                              duration: Duration(seconds: 3),
                              curve: Curves.fastLinearToSlowEaseIn,
                              child:
                              Text(item_3,
                                style: TextStyle(
                                    fontSize: font_adj,
                                    color: _c1 ? Colors.black : Colors.black,
                                    fontWeight: FontWeight.bold
                                ),
                              )
                          ))
                    ],)
                  ],
                )
            ),
            //space
            SizedBox(
                height: hspace),
            //
            // 4
            //
            SizedBox(
                width: h80p,
                height: hpb,
                child:
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Column(children: <Widget>[
                      GestureDetector (

                          onTap:() {
                            if (_c4 == false){
                              setState(() {
                                _c1 = _c2 =_c3 = _c5 = _c6 =  false;
                                _c4 = true;
                              });
                            }else{
                              setState(() {
                                _c1 = _c2 =_c3 = _c4 = _c5 = _c6 =  false;
                              });
                            }
                          },
                          child:

                          AnimatedContainer(
                              padding: EdgeInsets.only(top : padbox),
                              width: w60p,
                              height: hpb,
                              alignment: _sc4 ? Alignment.center : AlignmentDirectional.topCenter,
                              duration: Duration(seconds: 4),
                              curve: Curves.fastLinearToSlowEaseIn,
                              decoration: BoxDecoration(
                                color: _c4 ? Colors.green: Colors.red,
                                borderRadius: _bR,
                              ),
                              child:
                              Text(item_4,
                                style: TextStyle(
                                    fontSize: font_adj,
                                    color: _c4 ? Colors.black : Colors.black,
                                    fontWeight: FontWeight.bold
                                ),
                              )
                          ))
                    ],)
                  ],
                )
            ),
            //space
            SizedBox(
                height: hspace),
            //
            // botoes
            //
             SizedBox(

              height: hbotao,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: w30p,
                    height: hbotao,
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
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[

                            Text(
                              "Voltar",
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
                          if(_numeroSorteado == 1 ){
                            Navigator.push(context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        Auto_Estima(widget._codAluno)));
                          }else{
                            _limpaBotao();
                            _alteraResultado();
                            _numeroSorteado --;
                            _gerarPergunta();}
                        },
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Container(
                  ),
                  (_c1 || _c2 || _c3 || _c4  ) ? Container(
                    width: w30p,
                    height: hbotao,
                    alignment: Alignment.centerLeft,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        stops: [0.3, 1],
                        colors: [
                          Color(0XFFF92B7F),
                          Color(0xFFF58524),
                        ],
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(5),
                      ),
                    ),
                    child: SizedBox.expand(
                      child: FlatButton(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              " Próxima",
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
                          _montaResultado();
                          if(_numeroSorteado == _pergunta.length -1) {

                            _finalizaTeste();
                            Navigator.push(context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        ResultadosTM(
                                              widget._codAluno,
                                              score_ca ,
                                              score_cb ,
                                              score_cc ,
                                              score_cd ,
                                              score_ce ,
                                              score_cf ,
                                              score_cg ,
                                              score_ch ,
                                              score_ci ,
                                              score_cj ,
                                              score_ck ,
                                              score_cl
                                            )));
                          }else{
                            _limpaBotao();
                            _numeroSorteado ++;
                            _gerarPergunta();}
                        },
                      ),
                    ),
                  ):
                  Container(
                      width: w30p
                  ),
                ],
              ),
            ),
            SizedBox(
                height: hspace),
            Container(
              height: hvolta,
              alignment: Alignment.bottomCenter,
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
                            builder: (context) =>
                                GerenciarTempo(widget._codAluno)));
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
