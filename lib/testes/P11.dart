import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:intl/intl.dart';

import 'package:flutter_emoji/flutter_emoji.dart';
import 'package:wop3_ovp/descricao/teste001.dart';
import 'package:wop3_ovp/descricao/teste001f.dart';


import '../Home.dart';
import '../resultados/RESULTADOS.dart';





class P11 extends StatefulWidget {
  String _codAluno;
  P11(this._codAluno);
  @override
  _P11State createState() => _P11State();
}

class _P11State extends State<P11> {
  AnimationController controller;
  BorderRadiusGeometry _bR = BorderRadius.circular(8);
  String _dataTimeDb;

  //
  /*
 firebase

*/
  Firestore db = Firestore.instance;
  //

  void _finaliza () {
    DateTime now = DateTime.now();
    String _formattedDate = DateFormat('yyyy-MM-dd – kk:mm').format(now);
    _dataTimeDb = _formattedDate;
    db.collection("aluno")
        .document(widget._codAluno)
        .collection("Testes")
        .add(
        {
          "Code":"DCE","Data-teste": _formattedDate,
          "SE" : _SE,
          "IE" : _IE,
          "SD" : _SD,
          "ID" : _ID
        }
    );
    Navigator.push(context,
        MaterialPageRoute(
            builder: (context) =>
                teste001f(widget._codAluno)));
  }

//


//


  int _npergunta = 60;
  int _resultado = 0;
  int _tresultado = 0;
  int _numeroSorteado = 1;
  int _numeroAnterior = 0;
//

  int score_teste001  = 0;


  //


  bool _s1 = false;
  bool _c1 = false;
  bool _c2 = false;
  bool _c3 = false;
  bool _c4 = false;
  bool _c5 = false;
  bool _c6 = false;
  bool _c7 = false;
  bool _c8 = false;
  bool _c9 = false;
  bool _c10 = false;

  bool _c11 = false;
  bool _c12 = false;
  bool _c13 = false;
  bool _c14 = false;
  bool _c15 = false;
  bool _c16 = false;
  bool _c17 = false;
  bool _c18 = false;
  bool _c19 = false;
  bool _c20 = false;

  bool _c21 = false;
  bool _c22 = false;
  bool _c23 = false;
  bool _c24 = false;
  bool _c25 = false;
  bool _c26 = false;
  bool _c27 = false;
  bool _c28 = false;
  bool _c29 = false;
  bool _c30 = false;

  bool _c31 = false;
  bool _c32 = false;
  bool _c33 = false;
  bool _c34 = false;
  bool _c35 = false;
  bool _c36 = false;
  bool _c37 = false;
  bool _c38 = false;
  bool _c39 = false;
  bool _c40 = false;

  bool _c41 = false;
  bool _c42 = false;
  bool _c43 = false;
  bool _c44 = false;
  bool _c45 = false;
  bool _c46 = false;
  bool _c47 = false;
  bool _c48 = false;
  bool _c49 = false;
  bool _c50 = false;

  bool _c51 = false;
  bool _c52 = false;
  bool _c53 = false;
  bool _c54 = false;
  bool _c55 = false;
  bool _c56 = false;
  bool _c57 = false;
  bool _c58 = false;
  bool _c59 = false;
  bool _c60 = false;

  bool _c61 = false;
  bool _c62 = false;
  bool _c63 = false;
  bool _c64 = false;
  bool _c65 = false;
  bool _c66 = false;
  bool _c67 = false;
  bool _c68 = false;
  bool _c69 = false;
  bool _c70 = false;

  bool _c71 = false;
  bool _c72 = false;
  bool _c73 = false;
  bool _c74 = false;
  bool _c75 = false;
  bool _c76 = false;
  bool _c77 = false;
  bool _c78 = false;
  bool _c79 = false;
  bool _c80 = false;

  bool _c81 = false;
  bool _c82 = false;
  bool _c83 = false;
  bool _c84 = false;
  bool _c85 = false;
  bool _c86 = false;
  bool _c87 = false;
  bool _c88 = false;
  bool _c89 = false;
  bool _c90 = false;

  bool _c91 = false;
  bool _c92 = false;
  bool _c93 = false;
  bool _c94 = false;
  bool _c95 = false;
  bool _c96 = false;
  bool _c97 = false;
  bool _c98 = false;
  bool _c99 = false;
  bool _c100 = false;

  bool _c101 = false;
  bool _c102 = false;
  bool _c103 = false;
  bool _c104 = false;
  bool _c105 = false;
  bool _c106 = false;
  bool _c107 = false;
  bool _c108 = false;
  bool _c109 = false;
  bool _c110 = false;

  bool _c111 = false;
  bool _c112 = false;
  bool _c113 = false;
  bool _c114 = false;
  bool _c115 = false;
  bool _c116 = false;
  bool _c117 = false;
  bool _c118 = false;
  bool _c119 = false;
  bool _c120 = false;

  bool _c121 = false;
  bool _c122 = false;
  bool _c123 = false;
  bool _c124 = false;
  bool _c125 = false;
  bool _c126 = false;
  bool _c127 = false;
  bool _c128 = false;
 //


  //
  int _esc1 = 0;
  int _esc2 = 0;
  int _esc3 = 0;
  int _esc4 = 0;
  int _esc5 = 0;
  int _esc6 = 0;
  //
  int _SE = 0;
  int _IE = 0;
  int _SD = 0;
  int _ID = 0;

  _montaResultado() {
    // VERBAL
    if (_c1) (_SE ++);
    if (_c2) (_IE ++);
    if (_c3) (_SE ++);
    if (_c4) (_ID ++);
    if (_c5) (_IE ++);
    if (_c6) (_ID ++);
    if (_c7) (_SD ++);
    if (_c8) (_SD ++);
    if (_c9) (_SE ++);
    if (_c10) (_SD ++);
//
    if (_c11) (_IE ++);
    if (_c12) (_IE ++);
    if (_c13) (_ID ++);
    if (_c14) (_ID ++);
    if (_c15) (_SD ++);
    if (_c16) (_SE ++);
    if (_c17) (_SE ++);
    if (_c18) (_SE ++);
    if (_c19) (_ID ++);
    if (_c20) (_SD ++);
//
    if (_c21) (_SE ++);
    if (_c22) (_SE ++);
    if (_c23) (_IE ++);
    if (_c24) (_IE ++);
    if (_c25) (_SE ++);
    if (_c26) (_IE ++);
    if (_c27) (_ID ++);
    if (_c28) (_SD ++);
    if (_c29) (_ID ++);
    if (_c30) (_IE ++);
    //
    if (_c31) (_SD ++);
    if (_c32) (_SD ++);
    if (_c33) (_IE ++);
    if (_c34) (_SE ++);
    if (_c35) (_IE ++);
    if (_c36) (_SE ++);
    if (_c37) (_IE ++);
    if (_c38) (_ID ++);
    if (_c39) (_SE ++);
    if (_c40) (_SD ++);
    //
    if (_c41) (_ID ++);
    if (_c42) (_SE ++);
    if (_c43) (_IE ++);
    if (_c44) (_SD ++);
    if (_c45) (_SD ++);
    if (_c46) (_ID ++);
    if (_c47) (_SD ++);
    if (_c48) (_ID ++);
    if (_c49) (_SD ++);
    if (_c50) (_IE ++);
    //
    if (_c51) (_ID ++);
    if (_c52) (_SD ++);
    if (_c53) (_IE ++);
    if (_c54) (_SD ++);
    if (_c55) (_SE ++);
    if (_c56) (_ID ++);
    if (_c57) (_SD ++);
    if (_c58) (_IE ++);
    if (_c59) (_IE ++);
    if (_c60) (_SE ++);
    //
    if (_c61) (_SE ++);
    if (_c62) (_ID ++);
    if (_c63) (_ID ++);
    if (_c64) (_SE ++);
    if (_c65) (_ID ++);
    if (_c66) (_SE ++);
    if (_c67) (_SD ++);
    if (_c68) (_IE ++);
    if (_c69) (_IE ++);
    if (_c70) (_ID ++);
    //
    if (_c71) (_IE ++);
    if (_c72) (_ID ++);
    if (_c73) (_ID ++);
    if (_c74) (_SD ++);
    if (_c75) (_SE ++);
    if (_c76) (_SD ++);
    if (_c77) (_IE ++);
    if (_c78) (_SE ++);
    if (_c79) (_SD ++);
    if (_c80) (_SE ++);
    //
    if (_c81) (_IE ++);
    if (_c82) (_SE ++);
    if (_c83) (_SD ++);
    if (_c84) (_ID ++);
    if (_c85) (_SD ++);
    if (_c86) (_ID ++);
    if (_c87) (_ID ++);
    if (_c88) (_IE ++);
    if (_c89) (_SE ++);
    if (_c90) (_IE ++);
    //
    if (_c91) (_ID ++);
    if (_c92) (_SD ++);
    if (_c93) (_IE ++);
    if (_c94) (_SE ++);
    if (_c95) (_ID ++);
    if (_c96) (_SD ++);
    if (_c97) (_SE ++);
    if (_c98) (_ID ++);
    if (_c99) (_IE ++);
    if (_c100) (_SD ++);
//
    if (_c101) (_IE ++);
    if (_c102) (_SE ++);
    if (_c103) (_ID ++);
    if (_c104) (_SD ++);
    if (_c105) (_IE ++);
    if (_c106) (_SE ++);
    if (_c107) (_ID ++);
    if (_c108) (_SD ++);
    if (_c109) (_ID ++);
    if (_c110) (_ID ++);
//
    if (_c111) (_IE ++);
    if (_c112) (_SE ++);
    if (_c113) (_SE ++);
    if (_c114) (_SD ++);
    if (_c115) (_ID ++);
    if (_c116) (_IE ++);
    if (_c117) (_IE ++);
    if (_c118) (_SD ++);
    if (_c119) (_SE ++);
    if (_c120) (_ID ++);
//
    if (_c121) (_SE ++);
    if (_c122) (_SD ++);
    if (_c123) (_ID ++);
    if (_c124) (_IE ++);
    if (_c125) (_ID ++);
    if (_c126) (_SE ++);
    if (_c127) (_SD ++);
    if (_c128) (_IE ++);
//
  }
  //
  //
  void _limpaBotao () {

  }


//
  void _gerarPergunta () {
    //gerar numero randomicos
    setState(() {
      _perguntatela = _pergunta[_numeroSorteado];
      _npergunta = _numeroSorteado;
    });
  }
  String _perguntatela = " ";
  var _pergunta = [
    ' ',
    "Atividade de minha preferência na infância.",
    "Atividade de minha preferência na Escola.",
    "Atividade de minha preferência no Trabalho.",
    "Atividade de minha preferência na lazer.",
    "Meus Descritivos.",
    "Minhas Motivações - Eu trabalho melhor quando:",
    "Minhas Motivações - Falta-me ânimo para empreender uma atividade quando:",
    "Minhas Motivações - Eu me entusisasmo com uma atividade quando:",
    "Minhas Motivações - Eu me aborreço quando:",
    "Minhas Reações - Quando pedem minha aprocação para uma idéia:",
    "Minhas Reações - Quando resistem às minhas idéias:",
    "Minhas Reações - Quando não entendo uma instrução:",
    "Minhas Reações - Quando não entendem minhas instruções:",
    "Minhas convicções (assinale 4 frases que você 'assinaria' em baixo)"
  ];
  //
  @override
  void initState() {
    _gerarPergunta();
  }
  Widget build(BuildContext context) {
    final widthlua = MediaQuery.of(context).size.width;
    final heightlua = MediaQuery.of(context).size.height;


    bool _msg1 = ((_esc1 == 4)) ? true : false;
    bool _msg2 = ((_esc2 == 4)) ? true : false;
    bool _msg3 = ((_esc3 == 4)) ? true : false;
    bool _msg4 = ((_esc4 == 4)) ? true : false;
    bool _msg5 = ((_esc5 == 4)) ? true : false;
    bool _msg14 = ((_esc6 == 4)) ? true : false;

    double  font_adj1 =  (heightlua > 1600) ? 30 :
    (heightlua > 1500)  ?  30 :
    (heightlua > 1400)  ?  27 :
    (heightlua > 1300)  ?  28 :
    (heightlua > 1200)  ?  28 :
    (heightlua > 1100)  ?  29 :
    (heightlua > 1000)  ?  29 :
    (heightlua > 900)  ?  20 :
    (heightlua > 800)  ?  15 :
    (heightlua > 700)  ?  13 :
    (heightlua > 600)  ?  9 :
    (heightlua > 500)  ?  9 :  8 ;

    double  font_adj4 =  (heightlua > 1600) ? 35 :
    (heightlua > 1500)  ?  31 :
    (heightlua > 1400)  ?  30 :
    (heightlua > 1300)  ?  30 :
    (heightlua > 1200)  ?  25 :
    (heightlua > 1100)  ?  24 :
    (heightlua > 1000)  ?  23 :
    (heightlua > 900)  ?  22 :
    (heightlua > 800)  ?  21 :
    (heightlua > 700)  ?  20 :
    (heightlua > 600)  ?  19 :
    (heightlua > 500)  ?  18 :  17 ;

    double  fontpergunta =  (widthlua > 1600) ? 35:
    (widthlua > 1500)  ? 32 :
    (widthlua > 1400)  ? 30 :
    (widthlua > 1300)  ? 29 :
    (widthlua > 1200)  ? 28 :
    (widthlua > 1100)  ? 27:
    (widthlua > 1000)  ? 26 :
    (widthlua > 900)  ?  24:
    (widthlua > 800)  ?  22 :
    (widthlua > 700)  ?  20 :
    (widthlua > 600)  ?  18 :
    (widthlua > 500)  ?  16 : 14 ;




    double padbox =  (heightlua > 1600) ? 5 :
    (heightlua > 1500)  ? 4 :
    (heightlua > 1400)  ? 3 :
    (heightlua > 1300)  ? 2 :
    (heightlua > 1200)  ? 2 :
    (heightlua > 1100)  ? 1 :
    (heightlua > 1000)  ? 1 :
    (heightlua > 900)  ? 0.5 :
    (heightlua > 800)  ? 0.5 :
    (heightlua > 700)  ? 0.5 :
    (heightlua > 600)  ? 0.5 :
    (heightlua > 500)  ? 0.5:  0.5 ;

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
    ( barranumerop  < 1) ? font_adj1 * 0.1 :
    ( barranumerop  < 2) ? font_adj1 * 0.2 :
    ( barranumerop  < 3) ? font_adj1 * 0.3 :
    ( barranumerop  < 4) ? font_adj1 * 0.4 :
    ( barranumerop  < 5) ? font_adj1 * 0.5 :
    ( barranumerop  < 6) ? font_adj1 * 0.6 :
    ( barranumerop  < 7) ? font_adj1 * 0.7 :
    ( barranumerop  < 8) ? font_adj1 * 0.8 :
    ( barranumerop  < 9) ? font_adj1 * 0.9 :
    (barranumerop  < 10) ? font_adj1 * 0.95 : font_adj1;

    double  h10p = heightlua * 0.05;
    double  hpergunta = heightlua * 0.10;
    double  hspace = heightlua * 0.01;
    double  hnumero = heightlua * 0.06;
    double  hpb1 = heightlua * 0.03;
    double  hpb2 = heightlua * 0.1;
    double  hpb4 = heightlua * 0.11;
    double  hbotao = heightlua * 0.07;
    double  hvolta = heightlua * 0.07;

    double  h80p = heightlua * 0.80;

    String perpergunta = barranumerop.toString();
    //
    String item_1 ="Aeromodelismo";
    String item_2 ="Amarelinha";
    String item_3 ="Banco Imobiliário";
    String item_4 ="Boneca / Bonecos";
    String item_5 ="Bolinhas de Gude";
    String item_6 ="Ciranda";
    String item_7 ="Decifrar charadas";
    String item_8 ="Desenhar";
    String item_9 ="Desmontar aparelhos / ver como funcionam";
    String item_10 ="Ernpinar pipas";
    String item_11 ="Futebol de botão";
    String item_12 ="Jogo da Velha";
    String item_13 ="Jogos de Bola";
    String item_14 ="Mocinho / Bandido";
    String item_15 ="Quebra-cabeças";
    String item_16 ="Jogo de Xadrez";
//
    String item_17 ="Aritmética / Matemática";
    String item_18 ="Ciências Físicas / Fisica";
    String item_19 ="Ciências Humanas / Psicoiogia <";
    String item_20 ="Desenho Artística";
    String item_21 ="Engenharia";
    String item_22 ="Economia";
    String item_23 ="Geografia";
    String item_24 ="Geometria";
    String item_25 ="História";
    String item_26 ="Leitura";
    String item_27 ="Línguas";
    String item_28 ="Música";
    String item_29 ="Poesia / Declamação";
    String item_30 ="Português / Gramática";
    String item_31 ="Redação / Composição";
    String item_32 ="Trabalhos Manuais";
//
    String item_33 ="Administração de Processos / Procedimentos";
    String item_34 ="Análise de Problemas";
    String item_35 ="Assuntos Administrativos";
    String item_36 ="Assuntos Técnicos";
    String item_37 ="Assuntos Organizacionais / Estaiturais";
    String item_38 ="Assuntos Humanos / Sociais";
    String item_39 ="Assuntos Financeiros";
    String item_40 ="Criação / Desenvolvimento de Idéias";
    String item_41 ="Ensinar / Treinar";
    String item_42 ="Orçamentos / Controles Financeiros";
    String item_43 ="Planejamento de Atividades";
    String item_44 ="Planejamento Estratégico";
    String item_45 ="Propaganda";
    String item_46 ="Relações Públicas";
    String item_47 ="Testes de Mercado";
    String item_48 ="Trabalho em Equipe";
//
    String item_49 ="Artesanato";
    String item_50 ="Arrumar coisas";
    String item_51 ="Assistir corridas";
    String item_52 ="Campismo";
    String item_53 ="Coleções";
    String item_54 ="Conhecer lugares novos";
    String item_55 ="Consertar Aparelhos";
    String item_56 ="Dançar";
    String item_57 ="Desenho / Pintura";
    String item_58 ="Esportes Coletivos";
    String item_59 ="Fotografia";
    String item_60 ="Jogar Xadrez";
    String item_61 ="Leituras Técnicas";
    String item_62 ="Pescar";
    String item_63 ="Reuniões Sociais";
    String item_64 ="Trabalhar com Micro / video game";
 //
    String item_65 ="Afetuoso (a)";
    String item_66 ="Crítico (a)";
    String item_67 ="Brincalhão / Brincalhona";
    String item_68 ="Cauteloso (a)";
    String item_69 ="Detalhista";
    String item_70 ="Emotivo (a)";
    String item_71 ="Esmerado (a)";
    String item_72 ="Extrovertido (a)";
    String item_73 ="Falarilte .";
    String item_74 ="Fantasioso (a)";
    String item_75 ="Introvertido (a)";
    String item_76 ="Intuitivo (a)";
    String item_77 ="Organizado (a)";
    String item_78 ="Racional";
    String item_79 ="Subjetivo (a)";
    String item_80 ="Técnico (a)";
    //
    String item_81 ="Tudo está muito bem organizado.";
    String item_82 ="Disponho de informações concretas.";
    String item_83 ="Tenho oportunidade de usar a imaginação.";
    String item_84 ="Posso compartilhar minhas idéias com outros.";

    String item_85 ="Não consigo vislumbrar sua utilidade prática,";
    String item_86 ="Ela não apresenta desafio para minha inteligência.";
    String item_87 ="Tenho que trabalhar sozinho.";
    String item_88 ="Tenho que trabalhar com pessoas indisciplinadas.";

    String item_89 ="Conheço tudo a respeito.";
    String item_90 ="Ela apresenta regras bem definidas.";
    String item_91 ="As pessoas envolvidas trabalham em harmonia.";
    String item_92 ="Posso testar minha capacidade.";


    String item_93 ="Vejo as coisas bagunçadas.";
    String item_94 ="Não posso trabalhar com coisas concretas.";
    String item_95 ="As pessoas discutem e brigam.";
    String item_96 ="Cerceiam minha criatividade.";

    String item_97 ="Quero examinar sua lógica e rácionalidade";
    String item_98 ="Preciso ter confiança nas pessoas envolvidas";
    String item_99 ="Quer saber como ela será executada na prática.";
    String item_100 ="Quero descobrir se ela é inovadora.";

    String item_101 ="Explico, passo a passo, sua aplicação.";
    String item_102 ="Demonstro seu valor com todos os dados e fatos.";
    String item_103 ="Trato de conseguir a simpatia dos envoividos.";
    String item_104 ="Procuro estimuiar a imaginação dos envoividos";

    String item_105 ="Peço que me mostrem e expliquem seqüencialrnente.";
    String item_106 ="Preciso examinar seus objetivos e detaihes.";
    String item_107 ="É porque não gosto da instrução ou tenho probiemas de relacionamento com as pessoas envoividas.";
    String item_108 ="É porque ela é muito conservadora";

    String item_109 ="Ilustro minhas explicações com alegorias e metáforas";
    String item_110 ="Trato de chegar ao 'coração' dos envolvidos";
    String item_111 ="Faço uma demonstração organizada de suas etapas";
    String item_112 ="Apelo para a razão dos envolvidos apresentando todos os fatos e dados";

    String item_113 ="Só a informação traz o poder (S. Freud).";
    String item_114 ="Nunca caminho pelo caminho traçado pois ele conduz somente até onde os outros foram (Á. Graham Bell).";
    String item_115 ="Se você quer civilizar um homem, comece pela avó dele (Victor Hugo).";
    String item_116 ="O que mais precisamos é de alguém que nos obrigue a fazer o que sabemos (Ralph Waldo Emerson),";
    String item_117 ="Mais vale um pássaro na mão do que dois voando (popular).";
    String item_118 ="O futuro pertence àqueles que acreditam na beleza de seus sonhos (Eíeanor Rooseveit),";
    String item_119 ="Quem sabe mais chora menos (popular).";
    String item_120 ="Um irmão pode não ser um amigo, mas um amigo será sempre um irmão (Benjamin Frankiin).";
    String item_121 ="passo mais importante para chegar a concentrar-se é aprender a estar sozinho consigo mesmo (Erich Frómm).";
    String item_122 ="A imaginação é mais importante que o conhecimento (Albert Einsteim).";
    String item_123 ="Uma andorinha só não faz verão (popular).";
    String item_124 ="Mais difícil do que levar uma vida organizada é impô-la aos outros (Marcel Proust).";
    String item_125 ="Uma alegria compartilhada se transforma em dupla alegria; uma dor compartilhada em meia dor (popular).";
    String item_126 ="O humor é a quebra da lógica (Henri Bergson).";
    String item_127 ="Quem não arrisca não petisca (popular).";
    String item_128 ="O discernimento consiste em saber até onde se pode ir (Jean Coctcau).";
    //

    //
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
                      Column(
                        children: <Widget>[
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
              //
              // PERGUNTA 001
              //
              _npergunta == 1 ?
              //
              // PERGUNTA NUMERO 001
              //
              //
              Column(
                  children: <Widget>[


                    SizedBox(
                        height: hspace),

                    //
                    // 1
                    //
                    SizedBox(
                        width: w80p,
                        height: hpb1,
                        child:
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Column(children: <Widget>[
                              GestureDetector (

                                  onTap:() {
                                    if (_c1 == true ) {setState(() { _c1 = false; _esc1 --;}); }
                                    else
                                    if (_c1 == false ) {setState(() { _c1 = true; _esc1 ++;});}
                                  },
                                  child:
                                  AnimatedContainer(
                                    //  padding: EdgeInsets.only(top : padbox),
                                      width: w60p,
                                      height: hpb1,
                                      decoration: BoxDecoration(
                                        color: _c1 ? Colors.green: Colors.red,
                                        borderRadius: _bR,
                                      ),
                                      alignment: Alignment.center,
                                      duration: Duration(seconds: 3),
                                      curve: Curves.fastLinearToSlowEaseIn,
                                      child:
                                      Text(item_1,textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: font_adj1,
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
                    // 31
                    //
                    SizedBox(
                        width: w80p,
                        height: hpb1,
                        child:
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Column(children: <Widget>[
                              GestureDetector (

                                  onTap:() {
                                    if (_c2 == true ) {setState(() { _c2 = false; _esc1 --;});}
                                    else
                                    if (_c2 == false ) {setState(() { _c2 = true; _esc1 ++;});}
                                  },
                                  child:
                                  AnimatedContainer(
                                    //  padding: EdgeInsets.only(top : padbox),
                                      width: w60p,
                                      height: hpb1,
                                      decoration: BoxDecoration(
                                        color: _c2 ? Colors.green: Colors.red,
                                        borderRadius: _bR,
                                      ),
                                      alignment: Alignment.center,
                                      duration: Duration(seconds: 3),
                                      curve: Curves.fastLinearToSlowEaseIn,
                                      child:
                                      Text(item_2,textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: font_adj1,
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
                    //
                    // 32
                    //
                    SizedBox(
                        width: w80p,
                        height: hpb1,
                        child:
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Column(children: <Widget>[
                              GestureDetector (

                                  onTap:() {
                                    if (_c3 == true ) {setState(() { _c3 = false; _esc1 --;});}
                                    else
                                    if (_c3 == false ) {setState(() { _c3 = true; _esc1 ++;});}
                                  },

                                  child:
                                  AnimatedContainer(
                                    //  padding: EdgeInsets.only(top : padbox),
                                      width: w60p,
                                      height: hpb1,
                                      decoration: BoxDecoration(
                                        color: _c3 ? Colors.green: Colors.red,
                                        borderRadius: _bR,
                                      ),
                                      alignment: Alignment.center,
                                      duration: Duration(seconds: 3),
                                      curve: Curves.fastLinearToSlowEaseIn,
                                      child:
                                      Text(item_3,textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: font_adj1,
                                            color: _c3 ? Colors.black : Colors.black,
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
                    //space
                    //
                    //
                    // 33
                    //
                    SizedBox(
                        width: w80p,
                        height: hpb1,
                        child:
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Column(children: <Widget>[
                              GestureDetector (

                                  onTap:() {
                                    if (_c4 == true ) {setState(() { _c4 = false; _esc1 --;});}
                                    else
                                    if (_c4 == false ) {setState(() { _c4 = true; _esc1 ++;});}
                                  },

                                  child:
                                  AnimatedContainer(
                                    //  padding: EdgeInsets.only(top : padbox),
                                      width: w60p,
                                      height: hpb1,
                                      decoration: BoxDecoration(
                                        color: _c4 ? Colors.green: Colors.red,
                                        borderRadius: _bR,
                                      ),
                                      alignment: Alignment.center,
                                      duration: Duration(seconds: 3),
                                      curve: Curves.fastLinearToSlowEaseIn,
                                      child:
                                      Text(item_4,textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: font_adj1,
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
                    //space
                    //
                    //
                    // 34
                    //
                    SizedBox(
                        width: w80p,
                        height: hpb1,
                        child:
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Column(children: <Widget>[
                              GestureDetector (

                                  onTap:() {
                                    if (_c5 == true ) {setState(() { _c5 = false; _esc1 --;});}
                                    else
                                    if (_c5 == false ) {setState(() { _c5 = true; _esc1 ++;});}
                                  },

                                  child:
                                  AnimatedContainer(
                                    //  padding: EdgeInsets.only(top : padbox),
                                      width: w60p,
                                      height: hpb1,
                                      decoration: BoxDecoration(
                                        color: _c5 ? Colors.green: Colors.red,
                                        borderRadius: _bR,
                                      ),
                                      alignment: Alignment.center,
                                      duration: Duration(seconds: 3),
                                      curve: Curves.fastLinearToSlowEaseIn,
                                      child:
                                      Text(item_5,textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: font_adj1,
                                            color: _c5 ? Colors.black : Colors.black,
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
                    //space
                    //
                    //
                    // 35
                    //
                    SizedBox(
                        width: w80p,
                        height: hpb1,
                        child:
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Column(children: <Widget>[
                              GestureDetector (

                                  onTap:() {
                                    if (_c6 == true ) {setState(() { _c6 = false; _esc1 --;});}
                                    else
                                    if (_c6 == false ) {setState(() { _c6 = true; _esc1 ++;});}
                                  },

                                  child:
                                  AnimatedContainer(
                                    //  padding: EdgeInsets.only(top : padbox),
                                      width: w60p,
                                      height: hpb1,
                                      decoration: BoxDecoration(
                                        color: _c6 ? Colors.green: Colors.red,
                                        borderRadius: _bR,
                                      ),
                                      alignment: Alignment.center,
                                      duration: Duration(seconds: 3),
                                      curve: Curves.fastLinearToSlowEaseIn,
                                      child:
                                      Text(item_6,textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: font_adj1,
                                            color: _c6 ? Colors.black : Colors.black,
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
                    //space
                    //
                    //
                    // 36
                    //
                    SizedBox(
                        width: w80p,
                        height: hpb1,
                        child:
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Column(children: <Widget>[
                              GestureDetector (

                                  onTap:() {
                                    if (_c7 == true ) {setState(() { _c7 = false; _esc1 --;});}
                                    else
                                    if (_c7 == false ) {setState(() { _c7 = true; _esc1 ++;});}
                                  },

                                  child:
                                  AnimatedContainer(
                                    //  padding: EdgeInsets.only(top : padbox),
                                      width: w60p,
                                      height: hpb1,
                                      decoration: BoxDecoration(
                                        color: _c7 ? Colors.green: Colors.red,
                                        borderRadius: _bR,
                                      ),
                                      alignment: Alignment.center,
                                      duration: Duration(seconds: 3),
                                      curve: Curves.fastLinearToSlowEaseIn,
                                      child:
                                      Text(item_7,textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: font_adj1,
                                            color: _c7 ? Colors.black : Colors.black,
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
                    //space
                    //
                    //
                    // 37
                    //
                    SizedBox(
                        width: w80p,
                        height: hpb1,
                        child:
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Column(children: <Widget>[
                              GestureDetector (

                                  onTap:() {
                                    if (_c8 == true ) {setState(() { _c8 = false; _esc1 --;});}
                                    else
                                    if (_c8 == false ) {setState(() { _c8 = true; _esc1 ++;});}
                                  },

                                  child:
                                  AnimatedContainer(
                                    //  padding: EdgeInsets.only(top : padbox),
                                      width: w60p,
                                      height: hpb1,
                                      decoration: BoxDecoration(
                                        color: _c8 ? Colors.green: Colors.red,
                                        borderRadius: _bR,
                                      ),
                                      alignment: Alignment.center,
                                      duration: Duration(seconds: 3),
                                      curve: Curves.fastLinearToSlowEaseIn,
                                      child:
                                      Text(item_8,textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: font_adj1,
                                            color: _c8 ? Colors.black : Colors.black,
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
                    //space
                    //
                    //
                    // 38
                    //
                    SizedBox(
                        width: w80p,
                        height: hpb1,
                        child:
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Column(children: <Widget>[
                              GestureDetector (

                                  onTap:() {
                                    if (_c9 == true ) {setState(() { _c9 = false; _esc1 --;});}
                                    else
                                    if (_c9 == false ) {setState(() { _c9 = true; _esc1 ++;});}
                                  },

                                  child:
                                  AnimatedContainer(
                                    //  padding: EdgeInsets.only(top : padbox),
                                      width: w60p,
                                      height: hpb1,
                                      decoration: BoxDecoration(
                                        color: _c9 ? Colors.green: Colors.red,
                                        borderRadius: _bR,
                                      ),
                                      alignment: Alignment.center,
                                      duration: Duration(seconds: 3),
                                      curve: Curves.fastLinearToSlowEaseIn,
                                      child:
                                      Text(item_9,textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: font_adj1,
                                            color: _c9 ? Colors.black : Colors.black,
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
                    SizedBox(
                        width: w80p,
                        height: hpb1,
                        child:
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Column(children: <Widget>[
                              GestureDetector (

                                  onTap:() {
                                    if (_c10 == true ) {setState(() { _c10 = false; _esc1 --;});}
                                    else
                                    if (_c10 == false ) {setState(() { _c10 = true; _esc1 ++;});}
                                  },

                                  child:
                                  AnimatedContainer(
                                    //  padding: EdgeInsets.only(top : padbox),
                                      width: w60p,
                                      height: hpb1,
                                      decoration: BoxDecoration(
                                        color: _c10 ? Colors.green: Colors.red,
                                        borderRadius: _bR,
                                      ),
                                      alignment: Alignment.center,
                                      duration: Duration(seconds: 3),
                                      curve: Curves.fastLinearToSlowEaseIn,
                                      child:
                                      Text(item_10,textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: font_adj1,
                                            color: _c10 ? Colors.black : Colors.black,
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
                    //space
                    SizedBox(
                        width: w80p,
                        height: hpb1,
                        child:
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Column(children: <Widget>[
                              GestureDetector (

                                  onTap:() {
                                    if (_c11 == true ) {setState(() { _c11 = false; _esc1 --;});}
                                    else
                                    if (_c11 == false ) {setState(() { _c11 = true; _esc1 ++;});}
                                  },

                                  child:
                                  AnimatedContainer(
                                    //  padding: EdgeInsets.only(top : padbox),
                                      width: w60p,
                                      height: hpb1,
                                      decoration: BoxDecoration(
                                        color: _c11 ? Colors.green: Colors.red,
                                        borderRadius: _bR,
                                      ),
                                      alignment: Alignment.center,
                                      duration: Duration(seconds: 3),
                                      curve: Curves.fastLinearToSlowEaseIn,
                                      child:
                                      Text(item_11,textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: font_adj1,
                                            color: _c11 ? Colors.black : Colors.black,
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
                    SizedBox(
                        width: w80p,
                        height: hpb1,
                        child:
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Column(children: <Widget>[
                              GestureDetector (

                                  onTap:() {
                                    if (_c12 == true ) {setState(() { _c12 = false; _esc1 --;});}
                                    else
                                    if (_c12 == false ) {setState(() { _c12 = true; _esc1 ++;});}
                                  },

                                  child:
                                  AnimatedContainer(
                                    //  padding: EdgeInsets.only(top : padbox),
                                      width: w60p,
                                      height: hpb1,
                                      decoration: BoxDecoration(
                                        color: _c12 ? Colors.green: Colors.red,
                                        borderRadius: _bR,
                                      ),
                                      alignment: Alignment.center,
                                      duration: Duration(seconds: 3),
                                      curve: Curves.fastLinearToSlowEaseIn,
                                      child:
                                      Text(item_12,textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: font_adj1,
                                            color: _c12 ? Colors.black : Colors.black,
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
                    SizedBox(
                        width: w80p,
                        height: hpb1,
                        child:
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Column(children: <Widget>[
                              GestureDetector (

                                  onTap:() {
                                    if (_c13 == true ) {setState(() { _c13 = false; _esc1 --;});}
                                    else
                                    if (_c13 == false ) {setState(() { _c13 = true; _esc1 ++;});}
                                  },

                                  child:
                                  AnimatedContainer(
                                    //  padding: EdgeInsets.only(top : padbox),
                                      width: w60p,
                                      height: hpb1,
                                      decoration: BoxDecoration(
                                        color: _c13 ? Colors.green: Colors.red,
                                        borderRadius: _bR,
                                      ),
                                      alignment: Alignment.center,
                                      duration: Duration(seconds: 3),
                                      curve: Curves.fastLinearToSlowEaseIn,
                                      child:
                                      Text(item_13,textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: font_adj1,
                                            color: _c13 ? Colors.black : Colors.black,
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
                    SizedBox(
                        width: w80p,
                        height: hpb1,
                        child:
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Column(children: <Widget>[
                              GestureDetector (

                                  onTap:() {
                                    if (_c14 == true ) {setState(() { _c14 = false; _esc1 --;});}
                                    else
                                    if (_c14 == false ) {setState(() { _c14 = true; _esc1 ++;});}
                                  },

                                  child:
                                  AnimatedContainer(
                                    //  padding: EdgeInsets.only(top : padbox),
                                      width: w60p,
                                      height: hpb1,
                                      decoration: BoxDecoration(
                                        color: _c14 ? Colors.green: Colors.red,
                                        borderRadius: _bR,
                                      ),
                                      alignment: Alignment.center,
                                      duration: Duration(seconds: 3),
                                      curve: Curves.fastLinearToSlowEaseIn,
                                      child:
                                      Text(item_14,textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: font_adj1,
                                            color: _c14 ? Colors.black : Colors.black,
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
                    SizedBox(
                        width: w80p,
                        height: hpb1,
                        child:
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Column(children: <Widget>[
                              GestureDetector (

                                  onTap:() {
                                    if (_c15 == true ) {setState(() { _c15 = false; _esc1 --;});}
                                    else
                                    if (_c15 == false ) {setState(() { _c15 = true; _esc1 ++;});}
                                  },

                                  child:
                                  AnimatedContainer(
                                    //  padding: EdgeInsets.only(top : padbox),
                                      width: w60p,
                                      height: hpb1,
                                      decoration: BoxDecoration(
                                        color: _c15 ? Colors.green: Colors.red,
                                        borderRadius: _bR,
                                      ),
                                      alignment: Alignment.center,
                                      duration: Duration(seconds: 3),
                                      curve: Curves.fastLinearToSlowEaseIn,
                                      child:
                                      Text(item_15,textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: font_adj1,
                                            color: _c15 ? Colors.black : Colors.black,
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
                    SizedBox(
                        width: w80p,
                        height: hpb1,
                        child:
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Column(children: <Widget>[
                              GestureDetector (

                                  onTap:() {
                                    if (_c16 == true ) {setState(() { _c16 = false; _esc1 --;});}
                                    else
                                    if (_c16 == false ) {setState(() { _c16 = true; _esc1 ++;});}
                                  },

                                  child:
                                  AnimatedContainer(
                                    //  padding: EdgeInsets.only(top : padbox),
                                      width: w60p,
                                      height: hpb1,
                                      decoration: BoxDecoration(
                                        color: _c16 ? Colors.green: Colors.red,
                                        borderRadius: _bR,
                                      ),
                                      alignment: Alignment.center,
                                      duration: Duration(seconds: 3),
                                      curve: Curves.fastLinearToSlowEaseIn,
                                      child:
                                      Text(item_16,textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: font_adj1,
                                            color: _c16 ? Colors.black : Colors.black,
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
                    // BOTOES
                    //
                    //
                    SizedBox(
                        height: hspace),
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
                                                teste001(widget._codAluno)));
                                  }else{
                                    _limpaBotao();

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
                          (_esc1 == 4 ) ? Container(
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
                                  _numeroSorteado ++;
                                  _gerarPergunta();
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
                      height: _msg1 ? 0 :hvolta-20,
                      alignment: Alignment.bottomCenter,
                      decoration: BoxDecoration(
                        color: Color(0xFF3C6600),
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
                                "ESCOLHER 4 OPÇÕES",
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
                                        Home(widget._codAluno)));
                          },
                        ),
                      ),
                    )

                  ]) :
              _npergunta == 2 ?
              //
              // PERGUNTA NUMERO 002
              //
              //
              Column(
                  children: <Widget>[


                    SizedBox(
                        height: hspace),

                    //
                    // 1
                    //
                    SizedBox(
                        width: w80p,
                        height: hpb1,
                        child:
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Column(children: <Widget>[
                              GestureDetector (

                                  onTap:() {
                                    if (_c17 == true ) {setState(() { _c17 = false; _esc2 --;}); }
                                    else
                                    if (_c17 == false ) {setState(() { _c17 = true; _esc2 ++;});}
                                  },
                                  child:
                                  AnimatedContainer(
                                    //  padding: EdgeInsets.only(top : padbox),
                                      width: w60p,
                                      height: hpb1,
                                      decoration: BoxDecoration(
                                        color: _c17 ? Colors.green: Colors.red,
                                        borderRadius: _bR,
                                      ),
                                      alignment: Alignment.center,
                                      duration: Duration(seconds: 3),
                                      curve: Curves.fastLinearToSlowEaseIn,
                                      child:
                                      Text(item_17,textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: font_adj1,
                                            color: _c17 ? Colors.black : Colors.black,
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
                    // 31
                    //
                    SizedBox(
                        width: w80p,
                        height: hpb1,
                        child:
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Column(children: <Widget>[
                              GestureDetector (

                                  onTap:() {
                                    if (_c18 == true ) {setState(() { _c18 = false; _esc2 --;});}
                                    else
                                    if (_c18 == false ) {setState(() { _c18 = true; _esc2 ++;});}
                                  },
                                  child:
                                  AnimatedContainer(
                                    //  padding: EdgeInsets.only(top : padbox),
                                      width: w60p,
                                      height: hpb1,
                                      decoration: BoxDecoration(
                                        color: _c18 ? Colors.green: Colors.red,
                                        borderRadius: _bR,
                                      ),
                                      alignment: Alignment.center,
                                      duration: Duration(seconds: 3),
                                      curve: Curves.fastLinearToSlowEaseIn,
                                      child:
                                      Text(item_18,textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: font_adj1,
                                            color: _c18 ? Colors.black : Colors.black,
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
                    //
                    // 32
                    //
                    SizedBox(
                        width: w80p,
                        height: hpb1,
                        child:
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Column(children: <Widget>[
                              GestureDetector (

                                  onTap:() {
                                    if (_c19  == true ) {setState(() { _c19  = false; _esc2 --;});}
                                    else
                                    if (_c19  == false ) {setState(() { _c19  = true; _esc2 ++;});}
                                  },

                                  child:
                                  AnimatedContainer(
                                    //  padding: EdgeInsets.only(top : padbox),
                                      width: w60p,
                                      height: hpb1,
                                      decoration: BoxDecoration(
                                        color: _c19  ? Colors.green: Colors.red,
                                        borderRadius: _bR,
                                      ),
                                      alignment: Alignment.center,
                                      duration: Duration(seconds: 3),
                                      curve: Curves.fastLinearToSlowEaseIn,
                                      child:
                                      Text(item_19,textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: font_adj1,
                                            color: _c19  ? Colors.black : Colors.black,
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
                    //space
                    //
                    //
                    // 33
                    //
                    SizedBox(
                        width: w80p,
                        height: hpb1,
                        child:
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Column(children: <Widget>[
                              GestureDetector (

                                  onTap:() {
                                    if (_c20 == true ) {setState(() { _c20 = false; _esc2 --;});}
                                    else
                                    if (_c20 == false ) {setState(() { _c20 = true; _esc2 ++;});}
                                  },

                                  child:
                                  AnimatedContainer(
                                    //  padding: EdgeInsets.only(top : padbox),
                                      width: w60p,
                                      height: hpb1,
                                      decoration: BoxDecoration(
                                        color: _c20 ? Colors.green: Colors.red,
                                        borderRadius: _bR,
                                      ),
                                      alignment: Alignment.center,
                                      duration: Duration(seconds: 3),
                                      curve: Curves.fastLinearToSlowEaseIn,
                                      child:
                                      Text(item_20,textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: font_adj1,
                                            color: _c20 ? Colors.black : Colors.black,
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
                    //space
                    //
                    //
                    // 34
                    //
                    SizedBox(
                        width: w80p,
                        height: hpb1,
                        child:
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Column(children: <Widget>[
                              GestureDetector (

                                  onTap:() {
                                    if (_c21 == true ) {setState(() { _c21 = false; _esc2 --;});}
                                    else
                                    if (_c21 == false ) {setState(() { _c21 = true; _esc2 ++;});}
                                  },

                                  child:
                                  AnimatedContainer(
                                    //  padding: EdgeInsets.only(top : padbox),
                                      width: w60p,
                                      height: hpb1,
                                      decoration: BoxDecoration(
                                        color: _c21 ? Colors.green: Colors.red,
                                        borderRadius: _bR,
                                      ),
                                      alignment: Alignment.center,
                                      duration: Duration(seconds: 3),
                                      curve: Curves.fastLinearToSlowEaseIn,
                                      child:
                                      Text(item_21,textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: font_adj1,
                                            color: _c21 ? Colors.black : Colors.black,
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
                    //space
                    //
                    //
                    // 35
                    //
                    SizedBox(
                        width: w80p,
                        height: hpb1,
                        child:
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Column(children: <Widget>[
                              GestureDetector (

                                  onTap:() {
                                    if (_c22 == true ) {setState(() { _c22 = false; _esc2 --;});}
                                    else
                                    if (_c22 == false ) {setState(() { _c22 = true; _esc2 ++;});}
                                  },

                                  child:
                                  AnimatedContainer(
                                    //  padding: EdgeInsets.only(top : padbox),
                                      width: w60p,
                                      height: hpb1,
                                      decoration: BoxDecoration(
                                        color: _c22 ? Colors.green: Colors.red,
                                        borderRadius: _bR,
                                      ),
                                      alignment: Alignment.center,
                                      duration: Duration(seconds: 3),
                                      curve: Curves.fastLinearToSlowEaseIn,
                                      child:
                                      Text(item_22,textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: font_adj1,
                                            color: _c22 ? Colors.black : Colors.black,
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
                    //space
                    //
                    //
                    // 36
                    //
                    SizedBox(
                        width: w80p,
                        height: hpb1,
                        child:
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Column(children: <Widget>[
                              GestureDetector (

                                  onTap:() {
                                    if (_c23 == true ) {setState(() { _c23 = false; _esc2 --;});}
                                    else
                                    if (_c23 == false ) {setState(() { _c23 = true; _esc2 ++;});}
                                  },

                                  child:
                                  AnimatedContainer(
                                    //  padding: EdgeInsets.only(top : padbox),
                                      width: w60p,
                                      height: hpb1,
                                      decoration: BoxDecoration(
                                        color: _c23 ? Colors.green: Colors.red,
                                        borderRadius: _bR,
                                      ),
                                      alignment: Alignment.center,
                                      duration: Duration(seconds: 3),
                                      curve: Curves.fastLinearToSlowEaseIn,
                                      child:
                                      Text(item_23,textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: font_adj1,
                                            color: _c23 ? Colors.black : Colors.black,
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
                    //space
                    //
                    //
                    // 37
                    //
                    SizedBox(
                        width: w80p,
                        height: hpb1,
                        child:
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Column(children: <Widget>[
                              GestureDetector (

                                  onTap:() {
                                    if (_c24 == true ) {setState(() { _c24 = false; _esc2 --;});}
                                    else
                                    if (_c24 == false ) {setState(() { _c24 = true; _esc2 ++;});}
                                  },

                                  child:
                                  AnimatedContainer(
                                    //  padding: EdgeInsets.only(top : padbox),
                                      width: w60p,
                                      height: hpb1,
                                      decoration: BoxDecoration(
                                        color: _c24 ? Colors.green: Colors.red,
                                        borderRadius: _bR,
                                      ),
                                      alignment: Alignment.center,
                                      duration: Duration(seconds: 3),
                                      curve: Curves.fastLinearToSlowEaseIn,
                                      child:
                                      Text(item_24,textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: font_adj1,
                                            color: _c24 ? Colors.black : Colors.black,
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
                    //space
                    //
                    //
                    // 38
                    //
                    SizedBox(
                        width: w80p,
                        height: hpb1,
                        child:
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Column(children: <Widget>[
                              GestureDetector (

                                  onTap:() {
                                    if (_c25 == true ) {setState(() { _c25 = false; _esc2 --;});}
                                    else
                                    if (_c25 == false ) {setState(() { _c25 = true; _esc2 ++;});}
                                  },

                                  child:
                                  AnimatedContainer(
                                    //  padding: EdgeInsets.only(top : padbox),
                                      width: w60p,
                                      height: hpb1,
                                      decoration: BoxDecoration(
                                        color: _c25 ? Colors.green: Colors.red,
                                        borderRadius: _bR,
                                      ),
                                      alignment: Alignment.center,
                                      duration: Duration(seconds: 3),
                                      curve: Curves.fastLinearToSlowEaseIn,
                                      child:
                                      Text(item_25,textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: font_adj1,
                                            color: _c25 ? Colors.black : Colors.black,
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
                    SizedBox(
                        width: w80p,
                        height: hpb1,
                        child:
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Column(children: <Widget>[
                              GestureDetector (

                                  onTap:() {
                                    if (_c26 == true ) {setState(() { _c26 = false; _esc2 --;});}
                                    else
                                    if (_c26 == false ) {setState(() { _c26 = true; _esc2 ++;});}
                                  },

                                  child:
                                  AnimatedContainer(
                                    //  padding: EdgeInsets.only(top : padbox),
                                      width: w60p,
                                      height: hpb1,
                                      decoration: BoxDecoration(
                                        color: _c26 ? Colors.green: Colors.red,
                                        borderRadius: _bR,
                                      ),
                                      alignment: Alignment.center,
                                      duration: Duration(seconds: 3),
                                      curve: Curves.fastLinearToSlowEaseIn,
                                      child:
                                      Text(item_26,textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: font_adj1,
                                            color: _c26 ? Colors.black : Colors.black,
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
                    //space
                    SizedBox(
                        width: w80p,
                        height: hpb1,
                        child:
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Column(children: <Widget>[
                              GestureDetector (

                                  onTap:() {
                                    if (_c27 == true ) {setState(() { _c27 = false; _esc2 --;});}
                                    else
                                    if (_c27 == false ) {setState(() { _c27 = true; _esc2 ++;});}
                                  },

                                  child:
                                  AnimatedContainer(
                                    //  padding: EdgeInsets.only(top : padbox),
                                      width: w60p,
                                      height: hpb1,
                                      decoration: BoxDecoration(
                                        color: _c27 ? Colors.green: Colors.red,
                                        borderRadius: _bR,
                                      ),
                                      alignment: Alignment.center,
                                      duration: Duration(seconds: 3),
                                      curve: Curves.fastLinearToSlowEaseIn,
                                      child:
                                      Text(item_27,textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: font_adj1,
                                            color: _c27 ? Colors.black : Colors.black,
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
                    SizedBox(
                        width: w80p,
                        height: hpb1,
                        child:
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Column(children: <Widget>[
                              GestureDetector (

                                  onTap:() {
                                    if (_c28 == true ) {setState(() { _c28 = false; _esc2 --;});}
                                    else
                                    if (_c28 == false ) {setState(() { _c28 = true; _esc2 ++;});}
                                  },

                                  child:
                                  AnimatedContainer(
                                    //  padding: EdgeInsets.only(top : padbox),
                                      width: w60p,
                                      height: hpb1,
                                      decoration: BoxDecoration(
                                        color: _c28 ? Colors.green: Colors.red,
                                        borderRadius: _bR,
                                      ),
                                      alignment: Alignment.center,
                                      duration: Duration(seconds: 3),
                                      curve: Curves.fastLinearToSlowEaseIn,
                                      child:
                                      Text(item_28,textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: font_adj1,
                                            color: _c28 ? Colors.black : Colors.black,
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
                    SizedBox(
                        width: w80p,
                        height: hpb1,
                        child:
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Column(children: <Widget>[
                              GestureDetector (

                                  onTap:() {
                                    if (_c29 == true ) {setState(() { _c29 = false; _esc2 --;});}
                                    else
                                    if (_c29 == false ) {setState(() { _c29 = true; _esc2 ++;});}
                                  },

                                  child:
                                  AnimatedContainer(
                                    //  padding: EdgeInsets.only(top : padbox),
                                      width: w60p,
                                      height: hpb1,
                                      decoration: BoxDecoration(
                                        color: _c29 ? Colors.green: Colors.red,
                                        borderRadius: _bR,
                                      ),
                                      alignment: Alignment.center,
                                      duration: Duration(seconds: 3),
                                      curve: Curves.fastLinearToSlowEaseIn,
                                      child:
                                      Text(item_29,textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: font_adj1,
                                            color: _c29 ? Colors.black : Colors.black,
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
                    SizedBox(
                        width: w80p,
                        height: hpb1,
                        child:
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Column(children: <Widget>[
                              GestureDetector (

                                  onTap:() {
                                    if (_c30 == true ) {setState(() { _c30 = false; _esc2 --;});}
                                    else
                                    if (_c30 == false ) {setState(() { _c30 = true; _esc2 ++;});}
                                  },

                                  child:
                                  AnimatedContainer(
                                    //  padding: EdgeInsets.only(top : padbox),
                                      width: w60p,
                                      height: hpb1,
                                      decoration: BoxDecoration(
                                        color: _c30 ? Colors.green: Colors.red,
                                        borderRadius: _bR,
                                      ),
                                      alignment: Alignment.center,
                                      duration: Duration(seconds: 3),
                                      curve: Curves.fastLinearToSlowEaseIn,
                                      child:
                                      Text(item_30,textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: font_adj1,
                                            color: _c30 ? Colors.black : Colors.black,
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
                    SizedBox(
                        width: w80p,
                        height: hpb1,
                        child:
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Column(children: <Widget>[
                              GestureDetector (

                                  onTap:() {
                                    if (_c31 == true ) {setState(() { _c31 = false; _esc2 --;});}
                                    else
                                    if (_c31 == false ) {setState(() { _c31 = true; _esc2 ++;});}
                                  },

                                  child:
                                  AnimatedContainer(
                                    //  padding: EdgeInsets.only(top : padbox),
                                      width: w60p,
                                      height: hpb1,
                                      decoration: BoxDecoration(
                                        color: _c31 ? Colors.green: Colors.red,
                                        borderRadius: _bR,
                                      ),
                                      alignment: Alignment.center,
                                      duration: Duration(seconds: 3),
                                      curve: Curves.fastLinearToSlowEaseIn,
                                      child:
                                      Text(item_31,textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: font_adj1,
                                            color: _c31 ? Colors.black : Colors.black,
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
                    SizedBox(
                        width: w80p,
                        height: hpb1,
                        child:
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Column(children: <Widget>[
                              GestureDetector (

                                  onTap:() {
                                    if (_c32 == true ) {setState(() { _c32 = false; _esc2 --;});}
                                    else
                                    if (_c32 == false ) {setState(() { _c32 = true; _esc2 ++;});}
                                  },

                                  child:
                                  AnimatedContainer(
                                    //  padding: EdgeInsets.only(top : padbox),
                                      width: w60p,
                                      height: hpb1,
                                      decoration: BoxDecoration(
                                        color: _c32 ? Colors.green: Colors.red,
                                        borderRadius: _bR,
                                      ),
                                      alignment: Alignment.center,
                                      duration: Duration(seconds: 3),
                                      curve: Curves.fastLinearToSlowEaseIn,
                                      child:
                                      Text(item_32,textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: font_adj1,
                                            color: _c32 ? Colors.black : Colors.black,
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
                    // BOTOES
                    //
                    //
                    SizedBox(
                        height: hspace),
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
                                                teste001(widget._codAluno)));
                                  }else{
                                    _limpaBotao();

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
                          (_esc2 == 4 ) ? Container(
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
                                  _numeroSorteado ++;
                                  _gerarPergunta();
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
                      height: _msg2 ? 0 :hvolta-20,
                      alignment: Alignment.bottomCenter,
                      decoration: BoxDecoration(
                        color: Color(0xFF3C6600),
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
                                "ESCOLHER 4 OPÇÕES",
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
                                        Home(widget._codAluno)));
                          },
                        ),
                      ),
                    )

                  ]) :
              _npergunta == 3 ?
              //
              // PERGUNTA NUMERO 003
              //
              //
              Column(
                  children: <Widget>[


                    SizedBox(
                        height: hspace),

                    //
                    // 33
                    //
                    SizedBox(
                        width: w80p,
                        height: hpb1,
                        child:
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Column(children: <Widget>[
                              GestureDetector (

                                  onTap:() {
                                    if (_c33== true ) {setState(() { _c33= false; _esc3 --;}); }
                                    else
                                    if (_c33== false ) {setState(() { _c33= true; _esc3 ++;});}
                                  },
                                  child:
                                  AnimatedContainer(
                                    //  padding: EdgeInsets.only(top : padbox),
                                      width: w60p,
                                      height: hpb1,
                                      decoration: BoxDecoration(
                                        color: _c33? Colors.green: Colors.red,
                                        borderRadius: _bR,
                                      ),
                                      alignment: Alignment.center,
                                      duration: Duration(seconds: 3),
                                      curve: Curves.fastLinearToSlowEaseIn,
                                      child:
                                      Text(item_33,textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: font_adj1,
                                            color: _c33? Colors.black : Colors.black,
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
                    // 31
                    //
                    SizedBox(
                        width: w80p,
                        height: hpb1,
                        child:
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Column(children: <Widget>[
                              GestureDetector (

                                  onTap:() {
                                    if (_c34 == true ) {setState(() { _c34 = false; _esc3 --;});}
                                    else
                                    if (_c34 == false ) {setState(() { _c34 = true; _esc3 ++;});}
                                  },
                                  child:
                                  AnimatedContainer(
                                    //  padding: EdgeInsets.only(top : padbox),
                                      width: w60p,
                                      height: hpb1,
                                      decoration: BoxDecoration(
                                        color: _c34 ? Colors.green: Colors.red,
                                        borderRadius: _bR,
                                      ),
                                      alignment: Alignment.center,
                                      duration: Duration(seconds: 3),
                                      curve: Curves.fastLinearToSlowEaseIn,
                                      child:
                                      Text(item_34,textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: font_adj1,
                                            color: _c34 ? Colors.black : Colors.black,
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
                    //
                    // 32
                    //
                    SizedBox(
                        width: w80p,
                        height: hpb1,
                        child:
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Column(children: <Widget>[
                              GestureDetector (

                                  onTap:() {
                                    if (_c35   == true ) {setState(() { _c35  = false; _esc3 --;});}
                                    else
                                    if (_c35  == false ) {setState(() { _c35  = true; _esc3 ++;});}
                                  },

                                  child:
                                  AnimatedContainer(
                                    //  padding: EdgeInsets.only(top : padbox),
                                      width: w60p,
                                      height: hpb1,
                                      decoration: BoxDecoration(
                                        color: _c35  ? Colors.green: Colors.red,
                                        borderRadius: _bR,
                                      ),
                                      alignment: Alignment.center,
                                      duration: Duration(seconds: 3),
                                      curve: Curves.fastLinearToSlowEaseIn,
                                      child:
                                      Text(item_35,textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: font_adj1,
                                            color: _c35  ? Colors.black : Colors.black,
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
                    //space
                    //
                    //
                    // 33
                    //
                    SizedBox(
                        width: w80p,
                        height: hpb1,
                        child:
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Column(children: <Widget>[
                              GestureDetector (

                                  onTap:() {
                                    if (_c36   == true ) {setState(() { _c36   = false; _esc3 --;});}
                                    else
                                    if (_c36   == false ) {setState(() { _c36   = true; _esc3 ++;});}
                                  },

                                  child:
                                  AnimatedContainer(
                                    //  padding: EdgeInsets.only(top : padbox),
                                      width: w60p,
                                      height: hpb1,
                                      decoration: BoxDecoration(
                                        color: _c36   ? Colors.green: Colors.red,
                                        borderRadius: _bR,
                                      ),
                                      alignment: Alignment.center,
                                      duration: Duration(seconds: 3),
                                      curve: Curves.fastLinearToSlowEaseIn,
                                      child:
                                      Text(item_36,textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: font_adj1,
                                            color: _c36   ? Colors.black : Colors.black,
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
                    //space
                    //
                    //
                    // 34
                    //
                    SizedBox(
                        width: w80p,
                        height: hpb1,
                        child:
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Column(children: <Widget>[
                              GestureDetector (

                                  onTap:() {
                                    if (_c37    == true ) {setState(() { _c37    = false; _esc3 --;});}
                                    else
                                    if (_c37    == false ) {setState(() { _c37    = true; _esc3 ++;});}
                                  },

                                  child:
                                  AnimatedContainer(
                                    //  padding: EdgeInsets.only(top : padbox),
                                      width: w60p,
                                      height: hpb1,
                                      decoration: BoxDecoration(
                                        color: _c37    ? Colors.green: Colors.red,
                                        borderRadius: _bR,
                                      ),
                                      alignment: Alignment.center,
                                      duration: Duration(seconds: 3),
                                      curve: Curves.fastLinearToSlowEaseIn,
                                      child:
                                      Text(item_37,textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: font_adj1,
                                            color: _c37    ? Colors.black : Colors.black,
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
                    //space
                    //
                    //
                    // 35
                    //
                    SizedBox(
                        width: w80p,
                        height: hpb1,
                        child:
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Column(children: <Widget>[
                              GestureDetector (

                                  onTap:() {
                                    if (_c38     == true ) {setState(() { _c38     = false; _esc3 --;});}
                                    else
                                    if (_c38     == false ) {setState(() { _c38     = true; _esc3 ++;});}
                                  },

                                  child:
                                  AnimatedContainer(
                                    //  padding: EdgeInsets.only(top : padbox),
                                      width: w60p,
                                      height: hpb1,
                                      decoration: BoxDecoration(
                                        color: _c38     ? Colors.green: Colors.red,
                                        borderRadius: _bR,
                                      ),
                                      alignment: Alignment.center,
                                      duration: Duration(seconds: 3),
                                      curve: Curves.fastLinearToSlowEaseIn,
                                      child:
                                      Text(item_38,textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: font_adj1,
                                            color: _c38     ? Colors.black : Colors.black,
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
                    //space
                    //
                    //
                    // 36
                    //
                    SizedBox(
                        width: w80p,
                        height: hpb1,
                        child:
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Column(children: <Widget>[
                              GestureDetector (

                                  onTap:() {
                                    if (_c39     == true ) {setState(() { _c39     = false; _esc3 --;});}
                                    else
                                    if (_c39     == false ) {setState(() { _c39     = true; _esc3 ++;});}
                                  },

                                  child:
                                  AnimatedContainer(
                                    //  padding: EdgeInsets.only(top : padbox),
                                      width: w60p,
                                      height: hpb1,
                                      decoration: BoxDecoration(
                                        color: _c39     ? Colors.green: Colors.red,
                                        borderRadius: _bR,
                                      ),
                                      alignment: Alignment.center,
                                      duration: Duration(seconds: 3),
                                      curve: Curves.fastLinearToSlowEaseIn,
                                      child:
                                      Text(item_39,textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: font_adj1,
                                            color: _c39     ? Colors.black : Colors.black,
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
                    //space
                    //
                    //
                    // 37
                    //
                    SizedBox(
                        width: w80p,
                        height: hpb1,
                        child:
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Column(children: <Widget>[
                              GestureDetector (

                                  onTap:() {
                                    if (_c40     == true ) {setState(() { _c40     = false; _esc3 --;});}
                                    else
                                    if (_c40     == false ) {setState(() { _c40     = true; _esc3 ++;});}
                                  },

                                  child:
                                  AnimatedContainer(
                                    //  padding: EdgeInsets.only(top : padbox),
                                      width: w60p,
                                      height: hpb1,
                                      decoration: BoxDecoration(
                                        color: _c40     ? Colors.green: Colors.red,
                                        borderRadius: _bR,
                                      ),
                                      alignment: Alignment.center,
                                      duration: Duration(seconds: 3),
                                      curve: Curves.fastLinearToSlowEaseIn,
                                      child:
                                      Text(item_40,textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: font_adj1,
                                            color: _c40     ? Colors.black : Colors.black,
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
                    //space
                    //
                    //
                    // 38
                    //
                    SizedBox(
                        width: w80p,
                        height: hpb1,
                        child:
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Column(children: <Widget>[
                              GestureDetector (

                                  onTap:() {
                                    if (_c41     == true ) {setState(() { _c41     = false; _esc3 --;});}
                                    else
                                    if (_c41     == false ) {setState(() { _c41     = true; _esc3 ++;});}
                                  },

                                  child:
                                  AnimatedContainer(
                                    //  padding: EdgeInsets.only(top : padbox),
                                      width: w60p,
                                      height: hpb1,
                                      decoration: BoxDecoration(
                                        color: _c41     ? Colors.green: Colors.red,
                                        borderRadius: _bR,
                                      ),
                                      alignment: Alignment.center,
                                      duration: Duration(seconds: 3),
                                      curve: Curves.fastLinearToSlowEaseIn,
                                      child:
                                      Text(item_41,textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: font_adj1,
                                            color: _c41     ? Colors.black : Colors.black,
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
                    SizedBox(
                        width: w80p,
                        height: hpb1,
                        child:
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Column(children: <Widget>[
                              GestureDetector (

                                  onTap:() {
                                    if (_c42     == true ) {setState(() { _c42     = false; _esc3 --;});}
                                    else
                                    if (_c42     == false ) {setState(() { _c42     = true; _esc3 ++;});}
                                  },

                                  child:
                                  AnimatedContainer(
                                    //  padding: EdgeInsets.only(top : padbox),
                                      width: w60p,
                                      height: hpb1,
                                      decoration: BoxDecoration(
                                        color: _c42     ? Colors.green: Colors.red,
                                        borderRadius: _bR,
                                      ),
                                      alignment: Alignment.center,
                                      duration: Duration(seconds: 3),
                                      curve: Curves.fastLinearToSlowEaseIn,
                                      child:
                                      Text(item_42,textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: font_adj1,
                                            color: _c42     ? Colors.black : Colors.black,
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
                    //space
                    SizedBox(
                        width: w80p,
                        height: hpb1,
                        child:
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Column(children: <Widget>[
                              GestureDetector (

                                  onTap:() {
                                    if (_c43 == true ) {setState(() { _c43 = false; _esc3 --;});}
                                    else
                                    if (_c43 == false ) {setState(() { _c43 = true; _esc3 ++;});}
                                  },

                                  child:
                                  AnimatedContainer(
                                    //  padding: EdgeInsets.only(top : padbox),
                                      width: w60p,
                                      height: hpb1,
                                      decoration: BoxDecoration(
                                        color: _c43 ? Colors.green: Colors.red,
                                        borderRadius: _bR,
                                      ),
                                      alignment: Alignment.center,
                                      duration: Duration(seconds: 3),
                                      curve: Curves.fastLinearToSlowEaseIn,
                                      child:
                                      Text(item_43,textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: font_adj1,
                                            color: _c43 ? Colors.black : Colors.black,
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
                    SizedBox(
                        width: w80p,
                        height: hpb1,
                        child:
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Column(children: <Widget>[
                              GestureDetector (

                                  onTap:() {
                                    if (_c44 == true ) {setState(() { _c44 = false; _esc3 --;});}
                                    else
                                    if (_c44 == false ) {setState(() { _c44 = true; _esc3 ++;});}
                                  },

                                  child:
                                  AnimatedContainer(
                                    //  padding: EdgeInsets.only(top : padbox),
                                      width: w60p,
                                      height: hpb1,
                                      decoration: BoxDecoration(
                                        color: _c44 ? Colors.green: Colors.red,
                                        borderRadius: _bR,
                                      ),
                                      alignment: Alignment.center,
                                      duration: Duration(seconds: 3),
                                      curve: Curves.fastLinearToSlowEaseIn,
                                      child:
                                      Text(item_44,textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: font_adj1,
                                            color: _c44 ? Colors.black : Colors.black,
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
                    SizedBox(
                        width: w80p,
                        height: hpb1,
                        child:
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Column(children: <Widget>[
                              GestureDetector (

                                  onTap:() {
                                    if (_c45 == true ) {setState(() { _c45 = false; _esc3 --;});}
                                    else
                                    if (_c45 == false ) {setState(() { _c45 = true; _esc3 ++;});}
                                  },

                                  child:
                                  AnimatedContainer(
                                    //  padding: EdgeInsets.only(top : padbox),
                                      width: w60p,
                                      height: hpb1,
                                      decoration: BoxDecoration(
                                        color: _c45 ? Colors.green: Colors.red,
                                        borderRadius: _bR,
                                      ),
                                      alignment: Alignment.center,
                                      duration: Duration(seconds: 3),
                                      curve: Curves.fastLinearToSlowEaseIn,
                                      child:
                                      Text(item_45,textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: font_adj1,
                                            color: _c45 ? Colors.black : Colors.black,
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
                    SizedBox(
                        width: w80p,
                        height: hpb1,
                        child:
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Column(children: <Widget>[
                              GestureDetector (

                                  onTap:() {
                                    if (_c46 == true ) {setState(() { _c46 = false; _esc3 --;});}
                                    else
                                    if (_c46 == false ) {setState(() { _c46 = true; _esc3 ++;});}
                                  },

                                  child:
                                  AnimatedContainer(
                                    //  padding: EdgeInsets.only(top : padbox),
                                      width: w60p,
                                      height: hpb1,
                                      decoration: BoxDecoration(
                                        color: _c46 ? Colors.green: Colors.red,
                                        borderRadius: _bR,
                                      ),
                                      alignment: Alignment.center,
                                      duration: Duration(seconds: 3),
                                      curve: Curves.fastLinearToSlowEaseIn,
                                      child:
                                      Text(item_46,textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: font_adj1,
                                            color: _c46 ? Colors.black : Colors.black,
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
                    SizedBox(
                        width: w80p,
                        height: hpb1,
                        child:
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Column(children: <Widget>[
                              GestureDetector (

                                  onTap:() {
                                    if (_c47 == true ) {setState(() { _c47 = false; _esc3 --;});}
                                    else
                                    if (_c47 == false ) {setState(() { _c47 = true; _esc3 ++;});}
                                  },

                                  child:
                                  AnimatedContainer(
                                    //  padding: EdgeInsets.only(top : padbox),
                                      width: w60p,
                                      height: hpb1,
                                      decoration: BoxDecoration(
                                        color: _c47 ? Colors.green: Colors.red,
                                        borderRadius: _bR,
                                      ),
                                      alignment: Alignment.center,
                                      duration: Duration(seconds: 3),
                                      curve: Curves.fastLinearToSlowEaseIn,
                                      child:
                                      Text(item_47,textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: font_adj1,
                                            color: _c47 ? Colors.black : Colors.black,
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
                    SizedBox(
                        width: w80p,
                        height: hpb1,
                        child:
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Column(children: <Widget>[
                              GestureDetector (

                                  onTap:() {
                                    if (_c48 == true ) {setState(() { _c48 = false; _esc3 --;});}
                                    else
                                    if (_c48 == false ) {setState(() { _c48 = true; _esc3 ++;});}
                                  },

                                  child:
                                  AnimatedContainer(
                                    //  padding: EdgeInsets.only(top : padbox),
                                      width: w60p,
                                      height: hpb1,
                                      decoration: BoxDecoration(
                                        color: _c48 ? Colors.green: Colors.red,
                                        borderRadius: _bR,
                                      ),
                                      alignment: Alignment.center,
                                      duration: Duration(seconds: 3),
                                      curve: Curves.fastLinearToSlowEaseIn,
                                      child:
                                      Text(item_48,textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: font_adj1,
                                            color: _c48 ? Colors.black : Colors.black,
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
                    // BOTOES
                    //
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
                                                teste001(widget._codAluno)));
                                  }else{
                                    _limpaBotao();

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
                          (_esc3 == 4 ) ? Container(
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
                                  _numeroSorteado ++;
                                  _gerarPergunta();
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
                      height: _msg3 ? 0 :hvolta-20,
                      alignment: Alignment.bottomCenter,
                      decoration: BoxDecoration(
                        color: Color(0xFF3C6600),
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
                                "ESCOLHER 4 OPÇÕES",
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
                                        Home(widget._codAluno)));
                          },
                        ),
                      ),
                    )

                  ]) :
              _npergunta == 4 ?
              //
              // PERGUNTA NUMERO 004
              //
              //
              Column(
                  children: <Widget>[


                    SizedBox(
                        height: hspace),

                    //
                    // 33
                    //
                    SizedBox(
                        width: w80p,
                        height: hpb1,
                        child:
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Column(children: <Widget>[
                              GestureDetector (

                                  onTap:() {
                                    if (_c49== true ) {setState(() { _c49= false; _esc4 --;}); }
                                    else
                                    if (_c49== false ) {setState(() { _c49= true; _esc4 ++;});}
                                  },
                                  child:
                                  AnimatedContainer(
                                    //  padding: EdgeInsets.only(top : padbox),
                                      width: w60p,
                                      height: hpb1,
                                      decoration: BoxDecoration(
                                        color: _c49? Colors.green: Colors.red,
                                        borderRadius: _bR,
                                      ),
                                      alignment: Alignment.center,
                                      duration: Duration(seconds: 3),
                                      curve: Curves.fastLinearToSlowEaseIn,
                                      child:
                                      Text(item_49,textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: font_adj1,
                                            color: _c49? Colors.black : Colors.black,
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
                    // 31
                    //
                    SizedBox(
                        width: w80p,
                        height: hpb1,
                        child:
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Column(children: <Widget>[
                              GestureDetector (

                                  onTap:() {
                                    if (_c50 == true ) {setState(() { _c50 = false; _esc4 --;});}
                                    else
                                    if (_c50 == false ) {setState(() { _c50 = true; _esc4 ++;});}
                                  },
                                  child:
                                  AnimatedContainer(
                                    //  padding: EdgeInsets.only(top : padbox),
                                      width: w60p,
                                      height: hpb1,
                                      decoration: BoxDecoration(
                                        color: _c50 ? Colors.green: Colors.red,
                                        borderRadius: _bR,
                                      ),
                                      alignment: Alignment.center,
                                      duration: Duration(seconds: 3),
                                      curve: Curves.fastLinearToSlowEaseIn,
                                      child:
                                      Text(item_50,textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: font_adj1,
                                            color: _c50 ? Colors.black : Colors.black,
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
                    //
                    // 32
                    //
                    SizedBox(
                        width: w80p,
                        height: hpb1,
                        child:
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Column(children: <Widget>[
                              GestureDetector (

                                  onTap:() {
                                    if (_c51   == true ) {setState(() { _c51  = false; _esc4 --;});}
                                    else
                                    if (_c51  == false ) {setState(() { _c51  = true; _esc4 ++;});}
                                  },

                                  child:
                                  AnimatedContainer(
                                    //  padding: EdgeInsets.only(top : padbox),
                                      width: w60p,
                                      height: hpb1,
                                      decoration: BoxDecoration(
                                        color: _c51  ? Colors.green: Colors.red,
                                        borderRadius: _bR,
                                      ),
                                      alignment: Alignment.center,
                                      duration: Duration(seconds: 3),
                                      curve: Curves.fastLinearToSlowEaseIn,
                                      child:
                                      Text(item_51,textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: font_adj1,
                                            color: _c51  ? Colors.black : Colors.black,
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
                    //space
                    //
                    //
                    // 33
                    //
                    SizedBox(
                        width: w80p,
                        height: hpb1,
                        child:
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Column(children: <Widget>[
                              GestureDetector (

                                  onTap:() {
                                    if (_c52   == true ) {setState(() { _c52   = false; _esc4 --;});}
                                    else
                                    if (_c52   == false ) {setState(() { _c52   = true; _esc4 ++;});}
                                  },

                                  child:
                                  AnimatedContainer(
                                    //  padding: EdgeInsets.only(top : padbox),
                                      width: w60p,
                                      height: hpb1,
                                      decoration: BoxDecoration(
                                        color: _c52   ? Colors.green: Colors.red,
                                        borderRadius: _bR,
                                      ),
                                      alignment: Alignment.center,
                                      duration: Duration(seconds: 3),
                                      curve: Curves.fastLinearToSlowEaseIn,
                                      child:
                                      Text(item_52,textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: font_adj1,
                                            color: _c52   ? Colors.black : Colors.black,
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
                    //space
                    //
                    //
                    // 34
                    //
                    SizedBox(
                        width: w80p,
                        height: hpb1,
                        child:
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Column(children: <Widget>[
                              GestureDetector (

                                  onTap:() {
                                    if (_c53    == true ) {setState(() { _c53    = false; _esc4 --;});}
                                    else
                                    if (_c53    == false ) {setState(() { _c53    = true; _esc4 ++;});}
                                  },

                                  child:
                                  AnimatedContainer(
                                    //  padding: EdgeInsets.only(top : padbox),
                                      width: w60p,
                                      height: hpb1,
                                      decoration: BoxDecoration(
                                        color: _c53    ? Colors.green: Colors.red,
                                        borderRadius: _bR,
                                      ),
                                      alignment: Alignment.center,
                                      duration: Duration(seconds: 3),
                                      curve: Curves.fastLinearToSlowEaseIn,
                                      child:
                                      Text(item_53,textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: font_adj1,
                                            color: _c53    ? Colors.black : Colors.black,
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
                    //space
                    //
                    //
                    // 35
                    //
                    SizedBox(
                        width: w80p,
                        height: hpb1,
                        child:
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Column(children: <Widget>[
                              GestureDetector (

                                  onTap:() {
                                    if (_c54     == true ) {setState(() { _c54     = false; _esc4 --;});}
                                    else
                                    if (_c54     == false ) {setState(() { _c54     = true; _esc4 ++;});}
                                  },

                                  child:
                                  AnimatedContainer(
                                    //  padding: EdgeInsets.only(top : padbox),
                                      width: w60p,
                                      height: hpb1,
                                      decoration: BoxDecoration(
                                        color: _c54     ? Colors.green: Colors.red,
                                        borderRadius: _bR,
                                      ),
                                      alignment: Alignment.center,
                                      duration: Duration(seconds: 3),
                                      curve: Curves.fastLinearToSlowEaseIn,
                                      child:
                                      Text(item_54,textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: font_adj1,
                                            color: _c54     ? Colors.black : Colors.black,
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
                    //space
                    //
                    //
                    // 36
                    //
                    SizedBox(
                        width: w80p,
                        height: hpb1,
                        child:
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Column(children: <Widget>[
                              GestureDetector (

                                  onTap:() {
                                    if (_c55     == true ) {setState(() { _c55     = false; _esc4 --;});}
                                    else
                                    if (_c55     == false ) {setState(() { _c55     = true; _esc4 ++;});}
                                  },

                                  child:
                                  AnimatedContainer(
                                    //  padding: EdgeInsets.only(top : padbox),
                                      width: w60p,
                                      height: hpb1,
                                      decoration: BoxDecoration(
                                        color: _c55     ? Colors.green: Colors.red,
                                        borderRadius: _bR,
                                      ),
                                      alignment: Alignment.center,
                                      duration: Duration(seconds: 3),
                                      curve: Curves.fastLinearToSlowEaseIn,
                                      child:
                                      Text(item_55,textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: font_adj1,
                                            color: _c55     ? Colors.black : Colors.black,
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
                    //space
                    //
                    //
                    // 37
                    //
                    SizedBox(
                        width: w80p,
                        height: hpb1,
                        child:
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Column(children: <Widget>[
                              GestureDetector (

                                  onTap:() {
                                    if (_c56     == true ) {setState(() { _c56     = false; _esc4 --;});}
                                    else
                                    if (_c56     == false ) {setState(() { _c56     = true; _esc4 ++;});}
                                  },

                                  child:
                                  AnimatedContainer(
                                    //  padding: EdgeInsets.only(top : padbox),
                                      width: w60p,
                                      height: hpb1,
                                      decoration: BoxDecoration(
                                        color: _c56     ? Colors.green: Colors.red,
                                        borderRadius: _bR,
                                      ),
                                      alignment: Alignment.center,
                                      duration: Duration(seconds: 3),
                                      curve: Curves.fastLinearToSlowEaseIn,
                                      child:
                                      Text(item_56,textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: font_adj1,
                                            color: _c56     ? Colors.black : Colors.black,
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
                    //space
                    //
                    //
                    // 38
                    //
                    SizedBox(
                        width: w80p,
                        height: hpb1,
                        child:
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Column(children: <Widget>[
                              GestureDetector (

                                  onTap:() {
                                    if (_c57     == true ) {setState(() { _c57     = false; _esc4 --;});}
                                    else
                                    if (_c57     == false ) {setState(() { _c57     = true; _esc4 ++;});}
                                  },

                                  child:
                                  AnimatedContainer(
                                    //  padding: EdgeInsets.only(top : padbox),
                                      width: w60p,
                                      height: hpb1,
                                      decoration: BoxDecoration(
                                        color: _c57     ? Colors.green: Colors.red,
                                        borderRadius: _bR,
                                      ),
                                      alignment: Alignment.center,
                                      duration: Duration(seconds: 3),
                                      curve: Curves.fastLinearToSlowEaseIn,
                                      child:
                                      Text(item_57,textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: font_adj1,
                                            color: _c57     ? Colors.black : Colors.black,
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
                    SizedBox(
                        width: w80p,
                        height: hpb1,
                        child:
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Column(children: <Widget>[
                              GestureDetector (

                                  onTap:() {
                                    if (_c58     == true ) {setState(() { _c58     = false; _esc4 --;});}
                                    else
                                    if (_c58     == false ) {setState(() { _c58     = true; _esc4 ++;});}
                                  },

                                  child:
                                  AnimatedContainer(
                                    //  padding: EdgeInsets.only(top : padbox),
                                      width: w60p,
                                      height: hpb1,
                                      decoration: BoxDecoration(
                                        color: _c58     ? Colors.green: Colors.red,
                                        borderRadius: _bR,
                                      ),
                                      alignment: Alignment.center,
                                      duration: Duration(seconds: 3),
                                      curve: Curves.fastLinearToSlowEaseIn,
                                      child:
                                      Text(item_58,textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: font_adj1,
                                            color: _c58     ? Colors.black : Colors.black,
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
                    //space
                    SizedBox(
                        width: w80p,
                        height: hpb1,
                        child:
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Column(children: <Widget>[
                              GestureDetector (

                                  onTap:() {
                                    if (_c59 == true ) {setState(() { _c59 = false; _esc4 --;});}
                                    else
                                    if (_c59 == false ) {setState(() { _c59 = true; _esc4 ++;});}
                                  },

                                  child:
                                  AnimatedContainer(
                                    //  padding: EdgeInsets.only(top : padbox),
                                      width: w60p,
                                      height: hpb1,
                                      decoration: BoxDecoration(
                                        color: _c59 ? Colors.green: Colors.red,
                                        borderRadius: _bR,
                                      ),
                                      alignment: Alignment.center,
                                      duration: Duration(seconds: 3),
                                      curve: Curves.fastLinearToSlowEaseIn,
                                      child:
                                      Text(item_59,textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: font_adj1,
                                            color: _c59 ? Colors.black : Colors.black,
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
                    SizedBox(
                        width: w80p,
                        height: hpb1,
                        child:
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Column(children: <Widget>[
                              GestureDetector (

                                  onTap:() {
                                    if (_c60 == true ) {setState(() { _c60 = false; _esc4 --;});}
                                    else
                                    if (_c60 == false ) {setState(() { _c60 = true; _esc4 ++;});}
                                  },

                                  child:
                                  AnimatedContainer(
                                    //  padding: EdgeInsets.only(top : padbox),
                                      width: w60p,
                                      height: hpb1,
                                      decoration: BoxDecoration(
                                        color: _c60 ? Colors.green: Colors.red,
                                        borderRadius: _bR,
                                      ),
                                      alignment: Alignment.center,
                                      duration: Duration(seconds: 3),
                                      curve: Curves.fastLinearToSlowEaseIn,
                                      child:
                                      Text(item_60,textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: font_adj1,
                                            color: _c60 ? Colors.black : Colors.black,
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
                    SizedBox(
                        width: w80p,
                        height: hpb1,
                        child:
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Column(children: <Widget>[
                              GestureDetector (

                                  onTap:() {
                                    if (_c61 == true ) {setState(() { _c61 = false; _esc4 --;});}
                                    else
                                    if (_c61 == false ) {setState(() { _c61 = true; _esc4 ++;});}
                                  },

                                  child:
                                  AnimatedContainer(
                                    //  padding: EdgeInsets.only(top : padbox),
                                      width: w60p,
                                      height: hpb1,
                                      decoration: BoxDecoration(
                                        color: _c61 ? Colors.green: Colors.red,
                                        borderRadius: _bR,
                                      ),
                                      alignment: Alignment.center,
                                      duration: Duration(seconds: 3),
                                      curve: Curves.fastLinearToSlowEaseIn,
                                      child:
                                      Text(item_61,textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: font_adj1,
                                            color: _c61 ? Colors.black : Colors.black,
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
                    SizedBox(
                        width: w80p,
                        height: hpb1,
                        child:
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Column(children: <Widget>[
                              GestureDetector (

                                  onTap:() {
                                    if (_c62 == true ) {setState(() { _c62 = false; _esc4 --;});}
                                    else
                                    if (_c62 == false ) {setState(() { _c62 = true; _esc4 ++;});}
                                  },

                                  child:
                                  AnimatedContainer(
                                    //  padding: EdgeInsets.only(top : padbox),
                                      width: w60p,
                                      height: hpb1,
                                      decoration: BoxDecoration(
                                        color: _c62 ? Colors.green: Colors.red,
                                        borderRadius: _bR,
                                      ),
                                      alignment: Alignment.center,
                                      duration: Duration(seconds: 3),
                                      curve: Curves.fastLinearToSlowEaseIn,
                                      child:
                                      Text(item_62,textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: font_adj1,
                                            color: _c62 ? Colors.black : Colors.black,
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
                    SizedBox(
                        width: w80p,
                        height: hpb1,
                        child:
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Column(children: <Widget>[
                              GestureDetector (

                                  onTap:() {
                                    if (_c63 == true ) {setState(() { _c63 = false; _esc4 --;});}
                                    else
                                    if (_c63 == false ) {setState(() { _c63 = true; _esc4 ++;});}
                                  },

                                  child:
                                  AnimatedContainer(
                                    //  padding: EdgeInsets.only(top : padbox),
                                      width: w60p,
                                      height: hpb1,
                                      decoration: BoxDecoration(
                                        color: _c63 ? Colors.green: Colors.red,
                                        borderRadius: _bR,
                                      ),
                                      alignment: Alignment.center,
                                      duration: Duration(seconds: 3),
                                      curve: Curves.fastLinearToSlowEaseIn,
                                      child:
                                      Text(item_63,textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: font_adj1,
                                            color: _c63 ? Colors.black : Colors.black,
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
                    SizedBox(
                        width: w80p,
                        height: hpb1,
                        child:
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Column(children: <Widget>[
                              GestureDetector (

                                  onTap:() {
                                    if (_c64 == true ) {setState(() { _c64 = false; _esc4 --;});}
                                    else
                                    if (_c64 == false ) {setState(() { _c64 = true; _esc4 ++;});}
                                  },

                                  child:
                                  AnimatedContainer(
                                    //  padding: EdgeInsets.only(top : padbox),
                                      width: w60p,
                                      height: hpb1,
                                      decoration: BoxDecoration(
                                        color: _c64 ? Colors.green: Colors.red,
                                        borderRadius: _bR,
                                      ),
                                      alignment: Alignment.center,
                                      duration: Duration(seconds: 3),
                                      curve: Curves.fastLinearToSlowEaseIn,
                                      child:
                                      Text(item_64,textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: font_adj1,
                                            color: _c64 ? Colors.black : Colors.black,
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
                    // BOTOES
                    //
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
                                                teste001(widget._codAluno)));
                                  }else{
                                    _limpaBotao();

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
                          (_esc4 == 4 ) ? Container(
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
                                  _numeroSorteado ++;
                                  _gerarPergunta();
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
                      height: _msg4 ? 0 :hvolta-20,
                      alignment: Alignment.bottomCenter,
                      decoration: BoxDecoration(
                        color: Color(0xFF3C6600),
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
                                "ESCOLHER 4 OPÇÕES",
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
                                        Home(widget._codAluno)));
                          },
                        ),
                      ),
                    )

                  ]) :
              _npergunta == 5 ?
              //
              // PERGUNTA NUMERO 005
              //
              //
              Column(
                  children: <Widget>[


                    SizedBox(
                        height: hspace),

                    //
                    // 33
                    //
                    SizedBox(
                        width: w80p,
                        height: hpb1,
                        child:
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Column(children: <Widget>[
                              GestureDetector (

                                  onTap:() {
                                    if (_c65== true ) {setState(() { _c65= false; _esc5 --;}); }
                                    else
                                    if (_c65== false ) {setState(() { _c65= true; _esc5 ++;});}
                                  },
                                  child:
                                  AnimatedContainer(
                                    //  padding: EdgeInsets.only(top : padbox),
                                      width: w60p,
                                      height: hpb1,
                                      decoration: BoxDecoration(
                                        color: _c65? Colors.green: Colors.red,
                                        borderRadius: _bR,
                                      ),
                                      alignment: Alignment.center,
                                      duration: Duration(seconds: 3),
                                      curve: Curves.fastLinearToSlowEaseIn,
                                      child:
                                      Text(item_65,textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: font_adj1,
                                            color: _c65? Colors.black : Colors.black,
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
                    // 31
                    //
                    SizedBox(
                        width: w80p,
                        height: hpb1,
                        child:
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Column(children: <Widget>[
                              GestureDetector (

                                  onTap:() {
                                    if (_c66 == true ) {setState(() { _c66 = false; _esc5 --;});}
                                    else
                                    if (_c66 == false ) {setState(() { _c66 = true; _esc5 ++;});}
                                  },
                                  child:
                                  AnimatedContainer(
                                    //  padding: EdgeInsets.only(top : padbox),
                                      width: w60p,
                                      height: hpb1,
                                      decoration: BoxDecoration(
                                        color: _c66 ? Colors.green: Colors.red,
                                        borderRadius: _bR,
                                      ),
                                      alignment: Alignment.center,
                                      duration: Duration(seconds: 3),
                                      curve: Curves.fastLinearToSlowEaseIn,
                                      child:
                                      Text(item_66,textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: font_adj1,
                                            color: _c66 ? Colors.black : Colors.black,
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
                    //
                    // 32
                    //
                    SizedBox(
                        width: w80p,
                        height: hpb1,
                        child:
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Column(children: <Widget>[
                              GestureDetector (

                                  onTap:() {
                                    if (_c67   == true ) {setState(() { _c67  = false; _esc5 --;});}
                                    else
                                    if (_c67  == false ) {setState(() { _c67  = true; _esc5 ++;});}
                                  },

                                  child:
                                  AnimatedContainer(
                                    //  padding: EdgeInsets.only(top : padbox),
                                      width: w60p,
                                      height: hpb1,
                                      decoration: BoxDecoration(
                                        color: _c67  ? Colors.green: Colors.red,
                                        borderRadius: _bR,
                                      ),
                                      alignment: Alignment.center,
                                      duration: Duration(seconds: 3),
                                      curve: Curves.fastLinearToSlowEaseIn,
                                      child:
                                      Text(item_67,textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: font_adj1,
                                            color: _c67  ? Colors.black : Colors.black,
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
                    //space
                    //
                    //
                    // 33
                    //
                    SizedBox(
                        width: w80p,
                        height: hpb1,
                        child:
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Column(children: <Widget>[
                              GestureDetector (

                                  onTap:() {
                                    if (_c68   == true ) {setState(() { _c68   = false; _esc5 --;});}
                                    else
                                    if (_c68   == false ) {setState(() { _c68   = true; _esc5 ++;});}
                                  },

                                  child:
                                  AnimatedContainer(
                                    //  padding: EdgeInsets.only(top : padbox),
                                      width: w60p,
                                      height: hpb1,
                                      decoration: BoxDecoration(
                                        color: _c68   ? Colors.green: Colors.red,
                                        borderRadius: _bR,
                                      ),
                                      alignment: Alignment.center,
                                      duration: Duration(seconds: 3),
                                      curve: Curves.fastLinearToSlowEaseIn,
                                      child:
                                      Text(item_68,textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: font_adj1,
                                            color: _c68   ? Colors.black : Colors.black,
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
                    //space
                    //
                    //
                    // 34
                    //
                    SizedBox(
                        width: w80p,
                        height: hpb1,
                        child:
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Column(children: <Widget>[
                              GestureDetector (

                                  onTap:() {
                                    if (_c69    == true ) {setState(() { _c69    = false; _esc5 --;});}
                                    else
                                    if (_c69    == false ) {setState(() { _c69    = true; _esc5 ++;});}
                                  },

                                  child:
                                  AnimatedContainer(
                                    //  padding: EdgeInsets.only(top : padbox),
                                      width: w60p,
                                      height: hpb1,
                                      decoration: BoxDecoration(
                                        color: _c69    ? Colors.green: Colors.red,
                                        borderRadius: _bR,
                                      ),
                                      alignment: Alignment.center,
                                      duration: Duration(seconds: 3),
                                      curve: Curves.fastLinearToSlowEaseIn,
                                      child:
                                      Text(item_69,textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: font_adj1,
                                            color: _c69    ? Colors.black : Colors.black,
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
                    //space
                    //
                    //
                    // 35
                    //
                    SizedBox(
                        width: w80p,
                        height: hpb1,
                        child:
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Column(children: <Widget>[
                              GestureDetector (

                                  onTap:() {
                                    if (_c70     == true ) {setState(() { _c70     = false; _esc5 --;});}
                                    else
                                    if (_c70     == false ) {setState(() { _c70     = true; _esc5 ++;});}
                                  },

                                  child:
                                  AnimatedContainer(
                                    //  padding: EdgeInsets.only(top : padbox),
                                      width: w60p,
                                      height: hpb1,
                                      decoration: BoxDecoration(
                                        color: _c70     ? Colors.green: Colors.red,
                                        borderRadius: _bR,
                                      ),
                                      alignment: Alignment.center,
                                      duration: Duration(seconds: 3),
                                      curve: Curves.fastLinearToSlowEaseIn,
                                      child:
                                      Text(item_70,textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: font_adj1,
                                            color: _c70     ? Colors.black : Colors.black,
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
                    //space
                    //
                    //
                    // 36
                    //
                    SizedBox(
                        width: w80p,
                        height: hpb1,
                        child:
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Column(children: <Widget>[
                              GestureDetector (

                                  onTap:() {
                                    if (_c71     == true ) {setState(() { _c71     = false; _esc5 --;});}
                                    else
                                    if (_c71     == false ) {setState(() { _c71     = true; _esc5 ++;});}
                                  },

                                  child:
                                  AnimatedContainer(
                                    //  padding: EdgeInsets.only(top : padbox),
                                      width: w60p,
                                      height: hpb1,
                                      decoration: BoxDecoration(
                                        color: _c71     ? Colors.green: Colors.red,
                                        borderRadius: _bR,
                                      ),
                                      alignment: Alignment.center,
                                      duration: Duration(seconds: 3),
                                      curve: Curves.fastLinearToSlowEaseIn,
                                      child:
                                      Text(item_71,textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: font_adj1,
                                            color: _c71     ? Colors.black : Colors.black,
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
                    //space
                    //
                    //
                    // 37
                    //
                    SizedBox(
                        width: w80p,
                        height: hpb1,
                        child:
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Column(children: <Widget>[
                              GestureDetector (

                                  onTap:() {
                                    if (_c72     == true ) {setState(() { _c72     = false; _esc5 --;});}
                                    else
                                    if (_c72     == false ) {setState(() { _c72     = true; _esc5 ++;});}
                                  },

                                  child:
                                  AnimatedContainer(
                                    //  padding: EdgeInsets.only(top : padbox),
                                      width: w60p,
                                      height: hpb1,
                                      decoration: BoxDecoration(
                                        color: _c72     ? Colors.green: Colors.red,
                                        borderRadius: _bR,
                                      ),
                                      alignment: Alignment.center,
                                      duration: Duration(seconds: 3),
                                      curve: Curves.fastLinearToSlowEaseIn,
                                      child:
                                      Text(item_72,textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: font_adj1,
                                            color: _c72     ? Colors.black : Colors.black,
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
                    //space
                    //
                    //
                    // 38
                    //
                    SizedBox(
                        width: w80p,
                        height: hpb1,
                        child:
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Column(children: <Widget>[
                              GestureDetector (

                                  onTap:() {
                                    if (_c73     == true ) {setState(() { _c73     = false; _esc5 --;});}
                                    else
                                    if (_c73     == false ) {setState(() { _c73     = true; _esc5 ++;});}
                                  },

                                  child:
                                  AnimatedContainer(
                                    //  padding: EdgeInsets.only(top : padbox),
                                      width: w60p,
                                      height: hpb1,
                                      decoration: BoxDecoration(
                                        color: _c73     ? Colors.green: Colors.red,
                                        borderRadius: _bR,
                                      ),
                                      alignment: Alignment.center,
                                      duration: Duration(seconds: 3),
                                      curve: Curves.fastLinearToSlowEaseIn,
                                      child:
                                      Text(item_73,textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: font_adj1,
                                            color: _c73     ? Colors.black : Colors.black,
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
                    SizedBox(
                        width: w80p,
                        height: hpb1,
                        child:
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Column(children: <Widget>[
                              GestureDetector (

                                  onTap:() {
                                    if (_c74     == true ) {setState(() { _c74     = false; _esc5 --;});}
                                    else
                                    if (_c74     == false ) {setState(() { _c74     = true; _esc5 ++;});}
                                  },

                                  child:
                                  AnimatedContainer(
                                    //  padding: EdgeInsets.only(top : padbox),
                                      width: w60p,
                                      height: hpb1,
                                      decoration: BoxDecoration(
                                        color: _c74     ? Colors.green: Colors.red,
                                        borderRadius: _bR,
                                      ),
                                      alignment: Alignment.center,
                                      duration: Duration(seconds: 3),
                                      curve: Curves.fastLinearToSlowEaseIn,
                                      child:
                                      Text(item_74,textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: font_adj1,
                                            color: _c74     ? Colors.black : Colors.black,
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
                    //space
                    SizedBox(
                        width: w80p,
                        height: hpb1,
                        child:
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Column(children: <Widget>[
                              GestureDetector (

                                  onTap:() {
                                    if (_c75 == true ) {setState(() { _c75 = false; _esc5 --;});}
                                    else
                                    if (_c75 == false ) {setState(() { _c75 = true; _esc5 ++;});}
                                  },

                                  child:
                                  AnimatedContainer(
                                    //  padding: EdgeInsets.only(top : padbox),
                                      width: w60p,
                                      height: hpb1,
                                      decoration: BoxDecoration(
                                        color: _c75 ? Colors.green: Colors.red,
                                        borderRadius: _bR,
                                      ),
                                      alignment: Alignment.center,
                                      duration: Duration(seconds: 3),
                                      curve: Curves.fastLinearToSlowEaseIn,
                                      child:
                                      Text(item_75,textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: font_adj1,
                                            color: _c75 ? Colors.black : Colors.black,
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
                    SizedBox(
                        width: w80p,
                        height: hpb1,
                        child:
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Column(children: <Widget>[
                              GestureDetector (

                                  onTap:() {
                                    if (_c76 == true ) {setState(() { _c76 = false; _esc5 --;});}
                                    else
                                    if (_c76 == false ) {setState(() { _c76 = true; _esc5 ++;});}
                                  },

                                  child:
                                  AnimatedContainer(
                                    //  padding: EdgeInsets.only(top : padbox),
                                      width: w60p,
                                      height: hpb1,
                                      decoration: BoxDecoration(
                                        color: _c76 ? Colors.green: Colors.red,
                                        borderRadius: _bR,
                                      ),
                                      alignment: Alignment.center,
                                      duration: Duration(seconds: 3),
                                      curve: Curves.fastLinearToSlowEaseIn,
                                      child:
                                      Text(item_76,textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: font_adj1,
                                            color: _c76 ? Colors.black : Colors.black,
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
                    SizedBox(
                        width: w80p,
                        height: hpb1,
                        child:
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Column(children: <Widget>[
                              GestureDetector (

                                  onTap:() {
                                    if (_c77 == true ) {setState(() { _c77 = false; _esc5 --;});}
                                    else
                                    if (_c77 == false ) {setState(() { _c77 = true; _esc5 ++;});}
                                  },

                                  child:
                                  AnimatedContainer(
                                    //  padding: EdgeInsets.only(top : padbox),
                                      width: w60p,
                                      height: hpb1,
                                      decoration: BoxDecoration(
                                        color: _c77 ? Colors.green: Colors.red,
                                        borderRadius: _bR,
                                      ),
                                      alignment: Alignment.center,
                                      duration: Duration(seconds: 3),
                                      curve: Curves.fastLinearToSlowEaseIn,
                                      child:
                                      Text(item_77,textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: font_adj1,
                                            color: _c77 ? Colors.black : Colors.black,
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
                    SizedBox(
                        width: w80p,
                        height: hpb1,
                        child:
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Column(children: <Widget>[
                              GestureDetector (

                                  onTap:() {
                                    if (_c78 == true ) {setState(() { _c78 = false; _esc5 --;});}
                                    else
                                    if (_c78 == false ) {setState(() { _c78 = true; _esc5 ++;});}
                                  },

                                  child:
                                  AnimatedContainer(
                                    //  padding: EdgeInsets.only(top : padbox),
                                      width: w60p,
                                      height: hpb1,
                                      decoration: BoxDecoration(
                                        color: _c78 ? Colors.green: Colors.red,
                                        borderRadius: _bR,
                                      ),
                                      alignment: Alignment.center,
                                      duration: Duration(seconds: 3),
                                      curve: Curves.fastLinearToSlowEaseIn,
                                      child:
                                      Text(item_78,textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: font_adj1,
                                            color: _c78 ? Colors.black : Colors.black,
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
                    SizedBox(
                        width: w80p,
                        height: hpb1,
                        child:
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Column(children: <Widget>[
                              GestureDetector (

                                  onTap:() {
                                    if (_c79 == true ) {setState(() { _c79 = false; _esc5 --;});}
                                    else
                                    if (_c79 == false ) {setState(() { _c79 = true; _esc5 ++;});}
                                  },

                                  child:
                                  AnimatedContainer(
                                    //  padding: EdgeInsets.only(top : padbox),
                                      width: w60p,
                                      height: hpb1,
                                      decoration: BoxDecoration(
                                        color: _c79 ? Colors.green: Colors.red,
                                        borderRadius: _bR,
                                      ),
                                      alignment: Alignment.center,
                                      duration: Duration(seconds: 3),
                                      curve: Curves.fastLinearToSlowEaseIn,
                                      child:
                                      Text(item_79,textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: font_adj1,
                                            color: _c79 ? Colors.black : Colors.black,
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
                    SizedBox(
                        width: w80p,
                        height: hpb1,
                        child:
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Column(children: <Widget>[
                              GestureDetector (

                                  onTap:() {
                                    if (_c80 == true ) {setState(() { _c80 = false; _esc5 --;});}
                                    else
                                    if (_c80 == false ) {setState(() { _c80 = true; _esc5 ++;});}
                                  },

                                  child:
                                  AnimatedContainer(
                                    //  padding: EdgeInsets.only(top : padbox),
                                      width: w60p,
                                      height: hpb1,
                                      decoration: BoxDecoration(
                                        color: _c80 ? Colors.green: Colors.red,
                                        borderRadius: _bR,
                                      ),
                                      alignment: Alignment.center,
                                      duration: Duration(seconds: 3),
                                      curve: Curves.fastLinearToSlowEaseIn,
                                      child:
                                      Text(item_80,textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: font_adj1,
                                            color: _c80 ? Colors.black : Colors.black,
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
                    // BOTOES
                    //
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
                                                teste001(widget._codAluno)));
                                  }else{
                                    _limpaBotao();

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
                          (_esc5 == 4 ) ? Container(
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
                                  _numeroSorteado ++;
                                  _gerarPergunta();
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
                      height: _msg5 ? 0 :hvolta-20,
                      alignment: Alignment.bottomCenter,
                      decoration: BoxDecoration(
                        color: Color(0xFF3C6600),
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
                                "ESCOLHER 4 OPÇÕES",
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
                                        Home(widget._codAluno)));
                          },
                        ),
                      ),
                    )

                  ]) :
              //
              //
              //
              _npergunta == 6 ?
              //
              // PERGUNTA NUMERO 006
              //
              //
              Column(
                  children: <Widget>[
                    SizedBox(
                        height: hspace),
                    //
                    // 81
                    //
                    SizedBox(
                        width: w80p,
                        height: hpb2,
                        child:
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Column(children: <Widget>[
                              GestureDetector (

                                  onTap:() {
                                    if (_c81 == false){
                                      setState(() {
                                        // _sc2 = _sc3 = _sc4 = _sc5 = true;
                                        _c81 = true;
                                        _c82 = _c83 = _c84 =  false;
                                        // _sc1 = false;
                                      });
                                    }else{
                                      setState(() {
                                        _c81 = _c82 = _c83 = _c84 = false;
                                      });
                                    }
                                  },
                                  child:
                                  AnimatedContainer(
                                    //  padding: EdgeInsets.only(top : padbox),
                                      width: w60p,
                                      height: hpb2,
                                      decoration: BoxDecoration(
                                        color: _c81 ? Colors.green: Colors.red,
                                        borderRadius: _bR,
                                      ),
                                      alignment: Alignment.center,
                                      duration: Duration(seconds: 3),
                                      curve: Curves.fastLinearToSlowEaseIn,
                                      child:
                                      Text(item_81,textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: font_adj1,
                                            color: _c81 ? Colors.black : Colors.black,
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
                    // 12
                    //
                    SizedBox(
                        width: w80p,
                        height: hpb2,
                        child:
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Column(children: <Widget>[
                              GestureDetector (

                                  onTap:() {
                                    if (_c82 == false){
                                      setState(() {
                                        // _sc2 = _sc3 = _sc4 = _sc5 = true;
                                        _c82 = true;
                                        _c81 = _c83 = _c84 = false;
                                        // _sc1 = false;
                                      });
                                    }else{
                                      setState(() {
                                        _c81 = _c82 = _c83 = _c84 = false;
                                      });
                                    }
                                  },
                                  child:
                                  AnimatedContainer(
                                    //  padding: EdgeInsets.only(top : padbox),
                                      width: w60p,
                                      height: hpb2,
                                      decoration: BoxDecoration(
                                        color: _c82 ? Colors.green: Colors.red,
                                        borderRadius: _bR,
                                      ),
                                      alignment: Alignment.center,
                                      duration: Duration(seconds: 3),
                                      curve: Curves.fastLinearToSlowEaseIn,
                                      child:
                                      Text(item_82,textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: font_adj1,
                                            color: _c82 ? Colors.black : Colors.black,
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
                    // 13
                    //
                    SizedBox(
                        width: w80p,
                        height: hpb2,
                        child:
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Column(children: <Widget>[
                              GestureDetector (

                                  onTap:() {
                                    if (_c83 == false){
                                      setState(() {
                                        // _sc2 = _sc3 = _sc4 = _sc5 = true;
                                        _c83 = true;
                                        _c81 = _c82 = _c84 = false;
                                        // _sc1 = false;
                                      });
                                    }else{
                                      setState(() {
                                        _c81 = _c82 = _c83 = _c84 = false;
                                      });
                                    }
                                  },
                                  child:
                                  AnimatedContainer(
                                    //  padding: EdgeInsets.only(top : padbox),
                                      width: w60p,
                                      height: hpb2,
                                      decoration: BoxDecoration(
                                        color: _c83 ? Colors.green: Colors.red,
                                        borderRadius: _bR,
                                      ),
                                      alignment: Alignment.center,
                                      duration: Duration(seconds: 3),
                                      curve: Curves.fastLinearToSlowEaseIn,
                                      child:
                                      Text(item_83,textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: font_adj1,
                                            color: _c83 ? Colors.black : Colors.black,
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
                    // 14
                    //
                    SizedBox(
                        width: w80p,
                        height: hpb2,
                        child:
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Column(children: <Widget>[
                              GestureDetector (

                                  onTap:() {
                                    if (_c84 == false){
                                      setState(() {
                                        // _sc2 = _sc3 = _sc4 = _sc5 = true;
                                        _c84 = true;
                                        _c81 = _c82 = _c83 =  false;
                                        // _sc1 = false;
                                      });
                                    }else{
                                      setState(() {
                                        _c81 = _c82 = _c83 = _c84 = false;
                                      });
                                    }
                                  },
                                  child:
                                  AnimatedContainer(
                                    //  padding: EdgeInsets.only(top : padbox),
                                      width: w60p,
                                      height: hpb2,
                                      decoration: BoxDecoration(
                                        color: _c84 ? Colors.green: Colors.red,
                                        borderRadius: _bR,
                                      ),
                                      alignment: Alignment.center,
                                      duration: Duration(seconds: 3),
                                      curve: Curves.fastLinearToSlowEaseIn,
                                      child:
                                      Text(item_84,textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: font_adj1,
                                            color: _c84 ? Colors.black : Colors.black,
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

                    //space
                    SizedBox(
                        height: hspace),

                    //space
                    //
                    // BOTOES
                    //
                    //
                    SizedBox(
                        height: hspace),
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
                                                teste001(widget._codAluno)));
                                  }else{
                                    _limpaBotao();

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
                          (_c81 || _c82 || _c83 || _c84 ) ? Container(
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
                                  _numeroSorteado ++;
                                  _gerarPergunta();
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
                                        Home(widget._codAluno)));
                          },
                        ),
                      ),
                    ),
                  ]) :
              //
              _npergunta == 7 ?
              //
              // PERGUNTA NUMERO 006
              //
              //
              Column(
                  children: <Widget>[
                    SizedBox(
                        height: hspace),
                    //
                    // 81
                    //
                    SizedBox(
                        width: w80p,
                        height: hpb2,
                        child:
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Column(children: <Widget>[
                              GestureDetector (

                                  onTap:() {
                                    if (_c85 == false){
                                      setState(() {
                                        // _sc2 = _sc3 = _sc4 = _sc5 = true;
                                        _c85 = true;
                                        _c86 = _c87 = _c88 =  false;
                                        // _sc1 = false;
                                      });
                                    }else{
                                      setState(() {
                                        _c85 = _c82 = _c87 = _c88 = false;
                                      });
                                    }
                                  },
                                  child:
                                  AnimatedContainer(
                                    //  padding: EdgeInsets.only(top : padbox),
                                      width: w60p,
                                      height: hpb2,
                                      decoration: BoxDecoration(
                                        color: _c85 ? Colors.green: Colors.red,
                                        borderRadius: _bR,
                                      ),
                                      alignment: Alignment.center,
                                      duration: Duration(seconds: 3),
                                      curve: Curves.fastLinearToSlowEaseIn,
                                      child:
                                      Text(item_85,textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: font_adj1,
                                            color: _c85 ? Colors.black : Colors.black,
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
                    // 12
                    //
                    SizedBox(
                        width: w80p,
                        height: hpb2,
                        child:
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Column(children: <Widget>[
                              GestureDetector (

                                  onTap:() {
                                    if (_c86 == false){
                                      setState(() {
                                        // _sc2 = _sc3 = _sc4 = _sc5 = true;
                                        _c86 = true;
                                        _c85 = _c87 = _c88 = false;
                                        // _sc1 = false;
                                      });
                                    }else{
                                      setState(() {
                                        _c85 = _c86 = _c87 = _c88 = false;
                                      });
                                    }
                                  },
                                  child:
                                  AnimatedContainer(
                                    //  padding: EdgeInsets.only(top : padbox),
                                      width: w60p,
                                      height: hpb2,
                                      decoration: BoxDecoration(
                                        color: _c86 ? Colors.green: Colors.red,
                                        borderRadius: _bR,
                                      ),
                                      alignment: Alignment.center,
                                      duration: Duration(seconds: 3),
                                      curve: Curves.fastLinearToSlowEaseIn,
                                      child:
                                      Text(item_86,textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: font_adj1,
                                            color: _c86 ? Colors.black : Colors.black,
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
                    // 13
                    //
                    SizedBox(
                        width: w80p,
                        height: hpb2,
                        child:
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Column(children: <Widget>[
                              GestureDetector (

                                  onTap:() {
                                    if (_c87 == false){
                                      setState(() {
                                        // _sc2 = _sc3 = _sc4 = _sc5 = true;
                                        _c87 = true;
                                        _c85 = _c86 = _c88 = false;
                                        // _sc1 = false;
                                      });
                                    }else{
                                      setState(() {
                                        _c85 = _c86 = _c87 = _c88 = false;
                                      });
                                    }
                                  },
                                  child:
                                  AnimatedContainer(
                                    //  padding: EdgeInsets.only(top : padbox),
                                      width: w60p,
                                      height: hpb2,
                                      decoration: BoxDecoration(
                                        color: _c87 ? Colors.green: Colors.red,
                                        borderRadius: _bR,
                                      ),
                                      alignment: Alignment.center,
                                      duration: Duration(seconds: 3),
                                      curve: Curves.fastLinearToSlowEaseIn,
                                      child:
                                      Text(item_87,textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: font_adj1,
                                            color: _c87 ? Colors.black : Colors.black,
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
                    // 14
                    //
                    SizedBox(
                        width: w80p,
                        height: hpb2,
                        child:
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Column(children: <Widget>[
                              GestureDetector (

                                  onTap:() {
                                    if (_c88 == false){
                                      setState(() {
                                        // _sc2 = _sc3 = _sc4 = _sc5 = true;
                                        _c88 = true;
                                        _c85 = _c86 = _c87 =  false;
                                        // _sc1 = false;
                                      });
                                    }else{
                                      setState(() {
                                        _c85 = _c86 = _c87 = _c88 = false;
                                      });
                                    }
                                  },
                                  child:
                                  AnimatedContainer(
                                    //  padding: EdgeInsets.only(top : padbox),
                                      width: w60p,
                                      height: hpb2,
                                      decoration: BoxDecoration(
                                        color: _c88 ? Colors.green: Colors.red,
                                        borderRadius: _bR,
                                      ),
                                      alignment: Alignment.center,
                                      duration: Duration(seconds: 3),
                                      curve: Curves.fastLinearToSlowEaseIn,
                                      child:
                                      Text(item_88,textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: font_adj1,
                                            color: _c88 ? Colors.black : Colors.black,
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

                    //space
                    SizedBox(
                        height: hspace),

                    //space
                    //
                    // BOTOES
                    //
                    //
                    SizedBox(
                        height: hspace),
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
                                                teste001(widget._codAluno)));
                                  }else{
                                    _limpaBotao();

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
                          (_c85 || _c86 || _c87 || _c88 ) ? Container(
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
                                  _numeroSorteado ++;
                                  _gerarPergunta();
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
                                        Home(widget._codAluno)));
                          },
                        ),
                      ),
                    ),
                  ]) :
              //
              _npergunta == 8 ?
              //
              // PERGUNTA NUMERO 006
              //
              //
              Column(
                  children: <Widget>[
                    SizedBox(
                        height: hspace),
                    //
                    // 81
                    //
                    SizedBox(
                        width: w80p,
                        height: hpb2,
                        child:
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Column(children: <Widget>[
                              GestureDetector (

                                  onTap:() {
                                    if (_c89 == false){
                                      setState(() {
                                        // _sc2 = _sc3 = _sc4 = _sc5 = true;
                                        _c89 = true;
                                        _c90 = _c91 = _c92 =  false;
                                        // _sc1 = false;
                                      });
                                    }else{
                                      setState(() {
                                        _c89 = _c82 = _c91 = _c92 = false;
                                      });
                                    }
                                  },
                                  child:
                                  AnimatedContainer(
                                    //  padding: EdgeInsets.only(top : padbox),
                                      width: w60p,
                                      height: hpb2,
                                      decoration: BoxDecoration(
                                        color: _c89 ? Colors.green: Colors.red,
                                        borderRadius: _bR,
                                      ),
                                      alignment: Alignment.center,
                                      duration: Duration(seconds: 3),
                                      curve: Curves.fastLinearToSlowEaseIn,
                                      child:
                                      Text(item_89,textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: font_adj1,
                                            color: _c89 ? Colors.black : Colors.black,
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
                    // 12
                    //
                    SizedBox(
                        width: w80p,
                        height: hpb2,
                        child:
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Column(children: <Widget>[
                              GestureDetector (

                                  onTap:() {
                                    if (_c90 == false){
                                      setState(() {
                                        // _sc2 = _sc3 = _sc4 = _sc5 = true;
                                        _c90 = true;
                                        _c89 = _c91 = _c92 = false;
                                        // _sc1 = false;
                                      });
                                    }else{
                                      setState(() {
                                        _c89 = _c90 = _c91 = _c92 = false;
                                      });
                                    }
                                  },
                                  child:
                                  AnimatedContainer(
                                    //  padding: EdgeInsets.only(top : padbox),
                                      width: w60p,
                                      height: hpb2,
                                      decoration: BoxDecoration(
                                        color: _c90 ? Colors.green: Colors.red,
                                        borderRadius: _bR,
                                      ),
                                      alignment: Alignment.center,
                                      duration: Duration(seconds: 3),
                                      curve: Curves.fastLinearToSlowEaseIn,
                                      child:
                                      Text(item_90,textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: font_adj1,
                                            color: _c90 ? Colors.black : Colors.black,
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
                    // 13
                    //
                    SizedBox(
                        width: w80p,
                        height: hpb2,
                        child:
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Column(children: <Widget>[
                              GestureDetector (

                                  onTap:() {
                                    if (_c91 == false){
                                      setState(() {
                                        // _sc2 = _sc3 = _sc4 = _sc5 = true;
                                        _c91 = true;
                                        _c89 = _c90 = _c92 = false;
                                        // _sc1 = false;
                                      });
                                    }else{
                                      setState(() {
                                        _c89 = _c90 = _c91 = _c92 = false;
                                      });
                                    }
                                  },
                                  child:
                                  AnimatedContainer(
                                    //  padding: EdgeInsets.only(top : padbox),
                                      width: w60p,
                                      height: hpb2,
                                      decoration: BoxDecoration(
                                        color: _c91 ? Colors.green: Colors.red,
                                        borderRadius: _bR,
                                      ),
                                      alignment: Alignment.center,
                                      duration: Duration(seconds: 3),
                                      curve: Curves.fastLinearToSlowEaseIn,
                                      child:
                                      Text(item_91,textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: font_adj1,
                                            color: _c91 ? Colors.black : Colors.black,
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
                    // 14
                    //
                    SizedBox(
                        width: w80p,
                        height: hpb2,
                        child:
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Column(children: <Widget>[
                              GestureDetector (

                                  onTap:() {
                                    if (_c92 == false){
                                      setState(() {
                                        // _sc2 = _sc3 = _sc4 = _sc5 = true;
                                        _c92 = true;
                                        _c89 = _c90 = _c91 =  false;
                                        // _sc1 = false;
                                      });
                                    }else{
                                      setState(() {
                                        _c89 = _c90 = _c91 = _c92 = false;
                                      });
                                    }
                                  },
                                  child:
                                  AnimatedContainer(
                                    //  padding: EdgeInsets.only(top : padbox),
                                      width: w60p,
                                      height: hpb2,
                                      decoration: BoxDecoration(
                                        color: _c92 ? Colors.green: Colors.red,
                                        borderRadius: _bR,
                                      ),
                                      alignment: Alignment.center,
                                      duration: Duration(seconds: 3),
                                      curve: Curves.fastLinearToSlowEaseIn,
                                      child:
                                      Text(item_92,textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: font_adj1,
                                            color: _c92 ? Colors.black : Colors.black,
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

                    //space
                    SizedBox(
                        height: hspace),

                    //space
                    //
                    // BOTOES
                    //
                    //
                    SizedBox(
                        height: hspace),
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
                                                teste001(widget._codAluno)));
                                  }else{
                                    _limpaBotao();

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
                          (_c89 || _c90 || _c91 || _c92 ) ? Container(
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
                                  _numeroSorteado ++;
                                  _gerarPergunta();
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
                                        Home(widget._codAluno)));
                          },
                        ),
                      ),
                    ),
                  ]) :
              //
              _npergunta == 9 ?
              //
              // PERGUNTA NUMERO 008
              //
              //
              Column(
                  children: <Widget>[
                    SizedBox(
                        height: hspace),
                    //
                    // 81
                    //
                    SizedBox(
                        width: w80p,
                        height: hpb2,
                        child:
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Column(children: <Widget>[
                              GestureDetector (

                                  onTap:() {
                                    if (_c93 == false){
                                      setState(() {
                                        // _sc2 = _sc3 = _sc4 = _sc5 = true;
                                        _c93 = true;
                                        _c94 = _c95 = _c96 =  false;
                                        // _sc1 = false;
                                      });
                                    }else{
                                      setState(() {
                                        _c93 = _c82 = _c95 = _c96 = false;
                                      });
                                    }
                                  },
                                  child:
                                  AnimatedContainer(
                                    //  padding: EdgeInsets.only(top : padbox),
                                      width: w60p,
                                      height: hpb2,
                                      decoration: BoxDecoration(
                                        color: _c93 ? Colors.green: Colors.red,
                                        borderRadius: _bR,
                                      ),
                                      alignment: Alignment.center,
                                      duration: Duration(seconds: 3),
                                      curve: Curves.fastLinearToSlowEaseIn,
                                      child:
                                      Text(item_93,textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: font_adj1,
                                            color: _c93 ? Colors.black : Colors.black,
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
                    // 12
                    //
                    SizedBox(
                        width: w80p,
                        height: hpb2,
                        child:
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Column(children: <Widget>[
                              GestureDetector (

                                  onTap:() {
                                    if (_c94 == false){
                                      setState(() {
                                        // _sc2 = _sc3 = _sc4 = _sc5 = true;
                                        _c94 = true;
                                        _c93 = _c95 = _c96 = false;
                                        // _sc1 = false;
                                      });
                                    }else{
                                      setState(() {
                                        _c93 = _c94 = _c95 = _c96 = false;
                                      });
                                    }
                                  },
                                  child:
                                  AnimatedContainer(
                                    //  padding: EdgeInsets.only(top : padbox),
                                      width: w60p,
                                      height: hpb2,
                                      decoration: BoxDecoration(
                                        color: _c94 ? Colors.green: Colors.red,
                                        borderRadius: _bR,
                                      ),
                                      alignment: Alignment.center,
                                      duration: Duration(seconds: 3),
                                      curve: Curves.fastLinearToSlowEaseIn,
                                      child:
                                      Text(item_94,textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: font_adj1,
                                            color: _c94 ? Colors.black : Colors.black,
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
                    // 13
                    //
                    SizedBox(
                        width: w80p,
                        height: hpb2,
                        child:
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Column(children: <Widget>[
                              GestureDetector (

                                  onTap:() {
                                    if (_c95 == false){
                                      setState(() {
                                        // _sc2 = _sc3 = _sc4 = _sc5 = true;
                                        _c95 = true;
                                        _c93 = _c94 = _c96 = false;
                                        // _sc1 = false;
                                      });
                                    }else{
                                      setState(() {
                                        _c93 = _c94 = _c95 = _c96 = false;
                                      });
                                    }
                                  },
                                  child:
                                  AnimatedContainer(
                                    //  padding: EdgeInsets.only(top : padbox),
                                      width: w60p,
                                      height: hpb2,
                                      decoration: BoxDecoration(
                                        color: _c95 ? Colors.green: Colors.red,
                                        borderRadius: _bR,
                                      ),
                                      alignment: Alignment.center,
                                      duration: Duration(seconds: 3),
                                      curve: Curves.fastLinearToSlowEaseIn,
                                      child:
                                      Text(item_95,textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: font_adj1,
                                            color: _c95 ? Colors.black : Colors.black,
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
                    // 14
                    //
                    SizedBox(
                        width: w80p,
                        height: hpb2,
                        child:
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Column(children: <Widget>[
                              GestureDetector (

                                  onTap:() {
                                    if (_c96 == false){
                                      setState(() {
                                        // _sc2 = _sc3 = _sc4 = _sc5 = true;
                                        _c96 = true;
                                        _c93 = _c94 = _c95 =  false;
                                        // _sc1 = false;
                                      });
                                    }else{
                                      setState(() {
                                        _c93 = _c94 = _c95 = _c96 = false;
                                      });
                                    }
                                  },
                                  child:
                                  AnimatedContainer(
                                    //  padding: EdgeInsets.only(top : padbox),
                                      width: w60p,
                                      height: hpb2,
                                      decoration: BoxDecoration(
                                        color: _c96 ? Colors.green: Colors.red,
                                        borderRadius: _bR,
                                      ),
                                      alignment: Alignment.center,
                                      duration: Duration(seconds: 3),
                                      curve: Curves.fastLinearToSlowEaseIn,
                                      child:
                                      Text(item_96,textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: font_adj1,
                                            color: _c96 ? Colors.black : Colors.black,
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

                    //space
                    SizedBox(
                        height: hspace),

                    //space
                    //
                    // BOTOES
                    //
                    //
                    SizedBox(
                        height: hspace),
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
                                                teste001(widget._codAluno)));
                                  }else{
                                    _limpaBotao();

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
                          (_c93 || _c94 || _c95 || _c96 ) ? Container(
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
                                  _numeroSorteado ++;
                                  _gerarPergunta();
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
                                        Home(widget._codAluno)));
                          },
                        ),
                      ),
                    ),
                  ]) :
              //
              //
              _npergunta == 10 ?
              //
              // PERGUNTA NUMERO 008
              //
              //
              Column(
                  children: <Widget>[
                    SizedBox(
                        height: hspace),
                    //
                    // 97
                    //
                    SizedBox(
                        width: w80p,
                        height: hpb2,
                        child:
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Column(children: <Widget>[
                              GestureDetector (

                                  onTap:() {
                                    if (_c97 == false){
                                      setState(() {
                                        // _sc2 = _sc3 = _sc4 = _sc5 = true;
                                        _c97 = true;
                                        _c98 = _c99 = _c100 =  false;
                                        // _sc1 = false;
                                      });
                                    }else{
                                      setState(() {
                                        _c97 = _c82 = _c99 = _c100 = false;
                                      });
                                    }
                                  },
                                  child:
                                  AnimatedContainer(
                                    //  padding: EdgeInsets.only(top : padbox),
                                      width: w60p,
                                      height: hpb2,
                                      decoration: BoxDecoration(
                                        color: _c97 ? Colors.green: Colors.red,
                                        borderRadius: _bR,
                                      ),
                                      alignment: Alignment.center,
                                      duration: Duration(seconds: 3),
                                      curve: Curves.fastLinearToSlowEaseIn,
                                      child:
                                      Text(item_97,textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: font_adj1,
                                            color: _c97 ? Colors.black : Colors.black,
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
                    // 12
                    //
                    SizedBox(
                        width: w80p,
                        height: hpb2,
                        child:
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Column(children: <Widget>[
                              GestureDetector (

                                  onTap:() {
                                    if (_c98 == false){
                                      setState(() {
                                        // _sc2 = _sc3 = _sc4 = _sc5 = true;
                                        _c98 = true;
                                        _c97 = _c99 = _c100 = false;
                                        // _sc1 = false;
                                      });
                                    }else{
                                      setState(() {
                                        _c97 = _c98 = _c99 = _c100 = false;
                                      });
                                    }
                                  },
                                  child:
                                  AnimatedContainer(
                                    //  padding: EdgeInsets.only(top : padbox),
                                      width: w60p,
                                      height: hpb2,
                                      decoration: BoxDecoration(
                                        color: _c98 ? Colors.green: Colors.red,
                                        borderRadius: _bR,
                                      ),
                                      alignment: Alignment.center,
                                      duration: Duration(seconds: 3),
                                      curve: Curves.fastLinearToSlowEaseIn,
                                      child:
                                      Text(item_98,textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: font_adj1,
                                            color: _c98 ? Colors.black : Colors.black,
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
                    // 13
                    //
                    SizedBox(
                        width: w80p,
                        height: hpb2,
                        child:
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Column(children: <Widget>[
                              GestureDetector (

                                  onTap:() {
                                    if (_c99 == false){
                                      setState(() {
                                        // _sc2 = _sc3 = _sc4 = _sc5 = true;
                                        _c99 = true;
                                        _c97 = _c98 = _c100 = false;
                                        // _sc1 = false;
                                      });
                                    }else{
                                      setState(() {
                                        _c97 = _c98 = _c99 = _c100 = false;
                                      });
                                    }
                                  },
                                  child:
                                  AnimatedContainer(
                                    //  padding: EdgeInsets.only(top : padbox),
                                      width: w60p,
                                      height: hpb2,
                                      decoration: BoxDecoration(
                                        color: _c99 ? Colors.green: Colors.red,
                                        borderRadius: _bR,
                                      ),
                                      alignment: Alignment.center,
                                      duration: Duration(seconds: 3),
                                      curve: Curves.fastLinearToSlowEaseIn,
                                      child:
                                      Text(item_99,textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: font_adj1,
                                            color: _c99 ? Colors.black : Colors.black,
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
                    // 14
                    //
                    SizedBox(
                        width: w80p,
                        height: hpb2,
                        child:
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Column(children: <Widget>[
                              GestureDetector (

                                  onTap:() {
                                    if (_c100 == false){
                                      setState(() {
                                        // _sc2 = _sc3 = _sc4 = _sc5 = true;
                                        _c100 = true;
                                        _c97 = _c98 = _c99 =  false;
                                        // _sc1 = false;
                                      });
                                    }else{
                                      setState(() {
                                        _c97 = _c98 = _c99 = _c100 = false;
                                      });
                                    }
                                  },
                                  child:
                                  AnimatedContainer(
                                    //  padding: EdgeInsets.only(top : padbox),
                                      width: w60p,
                                      height: hpb2,
                                      decoration: BoxDecoration(
                                        color: _c100 ? Colors.green: Colors.red,
                                        borderRadius: _bR,
                                      ),
                                      alignment: Alignment.center,
                                      duration: Duration(seconds: 3),
                                      curve: Curves.fastLinearToSlowEaseIn,
                                      child:
                                      Text(item_100,textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: font_adj1,
                                            color: _c100 ? Colors.black : Colors.black,
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

                    //space
                    SizedBox(
                        height: hspace),

                    //space
                    //
                    // BOTOES
                    //
                    //
                    SizedBox(
                        height: hspace),
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
                                                teste001(widget._codAluno)));
                                  }else{
                                    _limpaBotao();

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
                          (_c97 || _c98 || _c99 || _c100 ) ? Container(
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
                                  _numeroSorteado ++;
                                  _gerarPergunta();
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
                                        Home(widget._codAluno)));
                          },
                        ),
                      ),
                    ),
                  ]) :
              //
              //
              _npergunta == 11 ?
              //
              // PERGUNTA NUMERO 008
              //
              //
              Column(
                  children: <Widget>[
                    SizedBox(
                        height: hspace),
                    //
                    // 97
                    //
                    SizedBox(
                        width: w80p,
                        height: hpb2,
                        child:
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Column(children: <Widget>[
                              GestureDetector (

                                  onTap:() {
                                    if (_c101 == false){
                                      setState(() {
                                        // _sc2 = _sc3 = _sc4 = _sc5 = true;
                                        _c101 = true;
                                        _c102 = _c103 = _c104 =  false;
                                        // _sc1 = false;
                                      });
                                    }else{
                                      setState(() {
                                        _c101 = _c82 = _c103 = _c104 = false;
                                      });
                                    }
                                  },
                                  child:
                                  AnimatedContainer(
                                    //  padding: EdgeInsets.only(top : padbox),
                                      width: w60p,
                                      height: hpb2,
                                      decoration: BoxDecoration(
                                        color: _c101 ? Colors.green: Colors.red,
                                        borderRadius: _bR,
                                      ),
                                      alignment: Alignment.center,
                                      duration: Duration(seconds: 3),
                                      curve: Curves.fastLinearToSlowEaseIn,
                                      child:
                                      Text(item_101,textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: font_adj1,
                                            color: _c101 ? Colors.black : Colors.black,
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
                    // 12
                    //
                    SizedBox(
                        width: w80p,
                        height: hpb2,
                        child:
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Column(children: <Widget>[
                              GestureDetector (

                                  onTap:() {
                                    if (_c102 == false){
                                      setState(() {
                                        // _sc2 = _sc3 = _sc4 = _sc5 = true;
                                        _c102 = true;
                                        _c101 = _c103 = _c104 = false;
                                        // _sc1 = false;
                                      });
                                    }else{
                                      setState(() {
                                        _c101 = _c102 = _c103 = _c104 = false;
                                      });
                                    }
                                  },
                                  child:
                                  AnimatedContainer(
                                    //  padding: EdgeInsets.only(top : padbox),
                                      width: w60p,
                                      height: hpb2,
                                      decoration: BoxDecoration(
                                        color: _c102 ? Colors.green: Colors.red,
                                        borderRadius: _bR,
                                      ),
                                      alignment: Alignment.center,
                                      duration: Duration(seconds: 3),
                                      curve: Curves.fastLinearToSlowEaseIn,
                                      child:
                                      Text(item_102,textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: font_adj1,
                                            color: _c102 ? Colors.black : Colors.black,
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
                    // 13
                    //
                    SizedBox(
                        width: w80p,
                        height: hpb2,
                        child:
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Column(children: <Widget>[
                              GestureDetector (

                                  onTap:() {
                                    if (_c103 == false){
                                      setState(() {
                                        // _sc2 = _sc3 = _sc4 = _sc5 = true;
                                        _c103 = true;
                                        _c101 = _c102 = _c104 = false;
                                        // _sc1 = false;
                                      });
                                    }else{
                                      setState(() {
                                        _c101 = _c102 = _c103 = _c104 = false;
                                      });
                                    }
                                  },
                                  child:
                                  AnimatedContainer(
                                    //  padding: EdgeInsets.only(top : padbox),
                                      width: w60p,
                                      height: hpb2,
                                      decoration: BoxDecoration(
                                        color: _c103 ? Colors.green: Colors.red,
                                        borderRadius: _bR,
                                      ),
                                      alignment: Alignment.center,
                                      duration: Duration(seconds: 3),
                                      curve: Curves.fastLinearToSlowEaseIn,
                                      child:
                                      Text(item_103,textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: font_adj1,
                                            color: _c103 ? Colors.black : Colors.black,
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
                    // 14
                    //
                    SizedBox(
                        width: w80p,
                        height: hpb2,
                        child:
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Column(children: <Widget>[
                              GestureDetector (

                                  onTap:() {
                                    if (_c104 == false){
                                      setState(() {
                                        // _sc2 = _sc3 = _sc4 = _sc5 = true;
                                        _c104 = true;
                                        _c101 = _c102 = _c103 =  false;
                                        // _sc1 = false;
                                      });
                                    }else{
                                      setState(() {
                                        _c101 = _c102 = _c103 = _c104 = false;
                                      });
                                    }
                                  },
                                  child:
                                  AnimatedContainer(
                                    //  padding: EdgeInsets.only(top : padbox),
                                      width: w60p,
                                      height: hpb2,
                                      decoration: BoxDecoration(
                                        color: _c104 ? Colors.green: Colors.red,
                                        borderRadius: _bR,
                                      ),
                                      alignment: Alignment.center,
                                      duration: Duration(seconds: 3),
                                      curve: Curves.fastLinearToSlowEaseIn,
                                      child:
                                      Text(item_104,textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: font_adj1,
                                            color: _c104 ? Colors.black : Colors.black,
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

                    //space
                    SizedBox(
                        height: hspace),

                    //space
                    //
                    // BOTOES
                    //
                    //
                    SizedBox(
                        height: hspace),
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
                                                teste001(widget._codAluno)));
                                  }else{
                                    _limpaBotao();

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
                          (_c101 || _c102 || _c103 || _c104 ) ? Container(
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
                                  _numeroSorteado ++;
                                  _gerarPergunta();
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
                                        Home(widget._codAluno)));
                          },
                        ),
                      ),
                    ),
                  ]) :
              //
              //
              _npergunta == 12 ?
              //
              // PERGUNTA NUMERO 008
              //
              //
              Column(
                  children: <Widget>[
                    SizedBox(
                        height: hspace),
                    //
                    // 97
                    //
                    SizedBox(
                        width: w80p,
                        height: hpb2,
                        child:
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Column(children: <Widget>[
                              GestureDetector (

                                  onTap:() {
                                    if (_c105 == false){
                                      setState(() {
                                        // _sc2 = _sc3 = _sc4 = _sc5 = true;
                                        _c105 = true;
                                        _c106 = _c107 = _c108 =  false;
                                        // _sc1 = false;
                                      });
                                    }else{
                                      setState(() {
                                        _c105 = _c82 = _c107 = _c108 = false;
                                      });
                                    }
                                  },
                                  child:
                                  AnimatedContainer(
                                    //  padding: EdgeInsets.only(top : padbox),
                                      width: w60p,
                                      height: hpb2,
                                      decoration: BoxDecoration(
                                        color: _c105 ? Colors.green: Colors.red,
                                        borderRadius: _bR,
                                      ),
                                      alignment: Alignment.center,
                                      duration: Duration(seconds: 3),
                                      curve: Curves.fastLinearToSlowEaseIn,
                                      child:
                                      Text(item_105,textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: font_adj1,
                                            color: _c105 ? Colors.black : Colors.black,
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
                    // 12
                    //
                    SizedBox(
                        width: w80p,
                        height: hpb2,
                        child:
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Column(children: <Widget>[
                              GestureDetector (

                                  onTap:() {
                                    if (_c106 == false){
                                      setState(() {
                                        // _sc2 = _sc3 = _sc4 = _sc5 = true;
                                        _c106 = true;
                                        _c105 = _c107 = _c108 = false;
                                        // _sc1 = false;
                                      });
                                    }else{
                                      setState(() {
                                        _c105 = _c106 = _c107 = _c108 = false;
                                      });
                                    }
                                  },
                                  child:
                                  AnimatedContainer(
                                    //  padding: EdgeInsets.only(top : padbox),
                                      width: w60p,
                                      height: hpb2,
                                      decoration: BoxDecoration(
                                        color: _c106 ? Colors.green: Colors.red,
                                        borderRadius: _bR,
                                      ),
                                      alignment: Alignment.center,
                                      duration: Duration(seconds: 3),
                                      curve: Curves.fastLinearToSlowEaseIn,
                                      child:
                                      Text(item_106,textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: font_adj1,
                                            color: _c106 ? Colors.black : Colors.black,
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
                    // 13
                    //
                    SizedBox(
                        width: w80p,
                        height: hpb2,
                        child:
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Column(children: <Widget>[
                              GestureDetector (

                                  onTap:() {
                                    if (_c107 == false){
                                      setState(() {
                                        // _sc2 = _sc3 = _sc4 = _sc5 = true;
                                        _c107 = true;
                                        _c105 = _c106 = _c108 = false;
                                        // _sc1 = false;
                                      });
                                    }else{
                                      setState(() {
                                        _c105 = _c106 = _c107 = _c108 = false;
                                      });
                                    }
                                  },
                                  child:
                                  AnimatedContainer(
                                    //  padding: EdgeInsets.only(top : padbox),
                                      width: w60p,
                                      height: hpb2,
                                      decoration: BoxDecoration(
                                        color: _c107 ? Colors.green: Colors.red,
                                        borderRadius: _bR,
                                      ),
                                      alignment: Alignment.center,
                                      duration: Duration(seconds: 3),
                                      curve: Curves.fastLinearToSlowEaseIn,
                                      child:
                                      Text(item_107,textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: font_adj1,
                                            color: _c107 ? Colors.black : Colors.black,
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
                    // 14
                    //
                    SizedBox(
                        width: w80p,
                        height: hpb2,
                        child:
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Column(children: <Widget>[
                              GestureDetector (

                                  onTap:() {
                                    if (_c108 == false){
                                      setState(() {
                                        // _sc2 = _sc3 = _sc4 = _sc5 = true;
                                        _c108 = true;
                                        _c105 = _c106 = _c107 =  false;
                                        // _sc1 = false;
                                      });
                                    }else{
                                      setState(() {
                                        _c105 = _c106 = _c107 = _c108 = false;
                                      });
                                    }
                                  },
                                  child:
                                  AnimatedContainer(
                                    //  padding: EdgeInsets.only(top : padbox),
                                      width: w60p,
                                      height: hpb2,
                                      decoration: BoxDecoration(
                                        color: _c108 ? Colors.green: Colors.red,
                                        borderRadius: _bR,
                                      ),
                                      alignment: Alignment.center,
                                      duration: Duration(seconds: 3),
                                      curve: Curves.fastLinearToSlowEaseIn,
                                      child:
                                      Text(item_108,textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: font_adj1,
                                            color: _c108 ? Colors.black : Colors.black,
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

                    //space
                    SizedBox(
                        height: hspace),

                    //space
                    //
                    // BOTOES
                    //
                    //
                    SizedBox(
                        height: hspace),
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
                                                teste001(widget._codAluno)));
                                  }else{
                                    _limpaBotao();

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
                          (_c105 || _c106 || _c107 || _c108 ) ? Container(
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
                                  _numeroSorteado ++;
                                  _gerarPergunta();
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
                                        Home(widget._codAluno)));
                          },
                        ),
                      ),
                    ),
                  ]) :
              //
              //
              _npergunta == 13 ?
              //
              // PERGUNTA NUMERO 008
              //
              //
              Column(
                  children: <Widget>[
                    SizedBox(
                        height: hspace),
                    //
                    // 97
                    //
                    SizedBox(
                        width: w80p,
                        height: hpb2,
                        child:
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Column(children: <Widget>[
                              GestureDetector (

                                  onTap:() {
                                    if (_c109 == false){
                                      setState(() {
                                        // _sc2 = _sc3 = _sc4 = _sc5 = true;
                                        _c109 = true;
                                        _c110 = _c111 = _c112 =  false;
                                        // _sc1 = false;
                                      });
                                    }else{
                                      setState(() {
                                        _c109 = _c82 = _c111 = _c112 = false;
                                      });
                                    }
                                  },
                                  child:
                                  AnimatedContainer(
                                    //  padding: EdgeInsets.only(top : padbox),
                                      width: w60p,
                                      height: hpb2,
                                      decoration: BoxDecoration(
                                        color: _c109 ? Colors.green: Colors.red,
                                        borderRadius: _bR,
                                      ),
                                      alignment: Alignment.center,
                                      duration: Duration(seconds: 3),
                                      curve: Curves.fastLinearToSlowEaseIn,
                                      child:
                                      Text(item_109,textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: font_adj1,
                                            color: _c109 ? Colors.black : Colors.black,
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
                    // 12
                    //
                    SizedBox(
                        width: w80p,
                        height: hpb2,
                        child:
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Column(children: <Widget>[
                              GestureDetector (

                                  onTap:() {
                                    if (_c110 == false){
                                      setState(() {
                                        // _sc2 = _sc3 = _sc4 = _sc5 = true;
                                        _c110 = true;
                                        _c109 = _c111 = _c112 = false;
                                        // _sc1 = false;
                                      });
                                    }else{
                                      setState(() {
                                        _c109 = _c110 = _c111 = _c112 = false;
                                      });
                                    }
                                  },
                                  child:
                                  AnimatedContainer(
                                    //  padding: EdgeInsets.only(top : padbox),
                                      width: w60p,
                                      height: hpb2,
                                      decoration: BoxDecoration(
                                        color: _c110 ? Colors.green: Colors.red,
                                        borderRadius: _bR,
                                      ),
                                      alignment: Alignment.center,
                                      duration: Duration(seconds: 3),
                                      curve: Curves.fastLinearToSlowEaseIn,
                                      child:
                                      Text(item_110,textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: font_adj1,
                                            color: _c110 ? Colors.black : Colors.black,
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
                    // 13
                    //
                    SizedBox(
                        width: w80p,
                        height: hpb2,
                        child:
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Column(children: <Widget>[
                              GestureDetector (

                                  onTap:() {
                                    if (_c111 == false){
                                      setState(() {
                                        // _sc2 = _sc3 = _sc4 = _sc5 = true;
                                        _c111 = true;
                                        _c109 = _c110 = _c112 = false;
                                        // _sc1 = false;
                                      });
                                    }else{
                                      setState(() {
                                        _c109 = _c110 = _c111 = _c112 = false;
                                      });
                                    }
                                  },
                                  child:
                                  AnimatedContainer(
                                    //  padding: EdgeInsets.only(top : padbox),
                                      width: w60p,
                                      height: hpb2,
                                      decoration: BoxDecoration(
                                        color: _c111 ? Colors.green: Colors.red,
                                        borderRadius: _bR,
                                      ),
                                      alignment: Alignment.center,
                                      duration: Duration(seconds: 3),
                                      curve: Curves.fastLinearToSlowEaseIn,
                                      child:
                                      Text(item_111,textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: font_adj1,
                                            color: _c111 ? Colors.black : Colors.black,
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
                    // 14
                    //
                    SizedBox(
                        width: w80p,
                        height: hpb2,
                        child:
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Column(children: <Widget>[
                              GestureDetector (

                                  onTap:() {
                                    if (_c112 == false){
                                      setState(() {
                                        // _sc2 = _sc3 = _sc4 = _sc5 = true;
                                        _c112 = true;
                                        _c109 = _c110 = _c111 =  false;
                                        // _sc1 = false;
                                      });
                                    }else{
                                      setState(() {
                                        _c109 = _c110 = _c111 = _c112 = false;
                                      });
                                    }
                                  },
                                  child:
                                  AnimatedContainer(
                                    //  padding: EdgeInsets.only(top : padbox),
                                      width: w60p,
                                      height: hpb2,
                                      decoration: BoxDecoration(
                                        color: _c112 ? Colors.green: Colors.red,
                                        borderRadius: _bR,
                                      ),
                                      alignment: Alignment.center,
                                      duration: Duration(seconds: 3),
                                      curve: Curves.fastLinearToSlowEaseIn,
                                      child:
                                      Text(item_112,textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: font_adj1,
                                            color: _c112 ? Colors.black : Colors.black,
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

                    //space
                    SizedBox(
                        height: hspace),

                    //space
                    //
                    // BOTOES
                    //
                    //
                    SizedBox(
                        height: hspace),
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
                                                teste001(widget._codAluno)));
                                  }else{
                                    _limpaBotao();

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
                          (_c109 || _c110 || _c111 || _c112 ) ? Container(
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
                                  _numeroSorteado ++;
                                  _gerarPergunta();
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
                                        Home(widget._codAluno)));
                          },
                        ),
                      ),
                    ),
                  ]) :
              //
              _npergunta == 14 ?
              //
              // PERGUNTA NUMERO 001
              //
              //
              Column(
                  children: <Widget>[


                    SizedBox(
                        height: hspace),

                    //
                    // 1
                    //
                    SizedBox(
                        width: w100p,
                        height: hpb4,
                        child:
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Column(children: <Widget>[
                              GestureDetector (

                                  onTap:() {
                                    if (_c113 == true ) {setState(() { _c113 = false; _esc6 --;}); }
                                    else
                                    if (_c113 == false ) {setState(() { _c113 = true; _esc6 ++;});}
                                  },
                                  child:
                                  AnimatedContainer(
                                    //  padding: EdgeInsets.only(top : padbox),
                                      width: w100p,
                                      height: hpb4,
                                      decoration: BoxDecoration(
                                        color: _c113 ? Colors.green: Colors.red,
                                        borderRadius: _bR,
                                      ),
                                      alignment: Alignment.center,
                                      duration: Duration(seconds: 3),
                                      curve: Curves.fastLinearToSlowEaseIn,
                                      child:
                                      Text(item_113,textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: font_adj4,
                                            color: _c113 ? Colors.black : Colors.black,
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
                    // 31
                    //
                    SizedBox(
                        width: w100p,
                        height: hpb4,
                        child:
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Column(children: <Widget>[
                              GestureDetector (

                                  onTap:() {
                                    if (_c114  == true ) {setState(() { _c114  = false; _esc6 --;});}
                                    else
                                    if (_c114  == false ) {setState(() { _c114  = true; _esc6 ++;});}
                                  },
                                  child:
                                  AnimatedContainer(
                                    //  padding: EdgeInsets.only(top : padbox),
                                      width: w100p,
                                      height: hpb4,
                                      decoration: BoxDecoration(
                                        color: _c114  ? Colors.green: Colors.red,
                                        borderRadius: _bR,
                                      ),
                                      alignment: Alignment.center,
                                      duration: Duration(seconds: 3),
                                      curve: Curves.fastLinearToSlowEaseIn,
                                      child:
                                      Text(item_114,textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: font_adj4,
                                            color: _c114  ? Colors.black : Colors.black,
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
                    //
                    // 32
                    //
                    SizedBox(
                        width: w100p,
                        height: hpb4,
                        child:
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Column(children: <Widget>[
                              GestureDetector (

                                  onTap:() {
                                    if (_c115  == true ) {setState(() { _c115  = false; _esc6 --;});}
                                    else
                                    if (_c115  == false ) {setState(() { _c115  = true; _esc6 ++;});}
                                  },

                                  child:
                                  AnimatedContainer(
                                    //  padding: EdgeInsets.only(top : padbox),
                                      width: w100p,
                                      height: hpb4,
                                      decoration: BoxDecoration(
                                        color: _c115  ? Colors.green: Colors.red,
                                        borderRadius: _bR,
                                      ),
                                      alignment: Alignment.center,
                                      duration: Duration(seconds: 3),
                                      curve: Curves.fastLinearToSlowEaseIn,
                                      child:
                                      Text(item_115,textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: font_adj4,
                                            color: _c115  ? Colors.black : Colors.black,
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
                    //space
                    //
                    //
                    // 33
                    //
                    SizedBox(
                        width: w100p,
                        height: hpb4,
                        child:
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Column(children: <Widget>[
                              GestureDetector (

                                  onTap:() {
                                    if (_c116  == true ) {setState(() { _c116  = false; _esc6 --;});}
                                    else
                                    if (_c116  == false ) {setState(() { _c116  = true; _esc6 ++;});}
                                  },

                                  child:
                                  AnimatedContainer(
                                    //  padding: EdgeInsets.only(top : padbox),
                                      width: w100p,
                                      height: hpb4,
                                      decoration: BoxDecoration(
                                        color: _c116  ? Colors.green: Colors.red,
                                        borderRadius: _bR,
                                      ),
                                      alignment: Alignment.center,
                                      duration: Duration(seconds: 3),
                                      curve: Curves.fastLinearToSlowEaseIn,
                                      child:
                                      Text(item_116,textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: font_adj4,
                                            color: _c116  ? Colors.black : Colors.black,
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
                    //space
                    //
                    //
                    // 34
                    //
                    SizedBox(
                        width: w100p,
                        height: hpb4,
                        child:
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Column(children: <Widget>[
                              GestureDetector (

                                  onTap:() {
                                    if (_c117  == true ) {setState(() { _c117  = false; _esc6 --;});}
                                    else
                                    if (_c117  == false ) {setState(() { _c117  = true; _esc6 ++;});}
                                  },

                                  child:
                                  AnimatedContainer(
                                    //  padding: EdgeInsets.only(top : padbox),
                                      width: w100p,
                                      height: hpb4,
                                      decoration: BoxDecoration(
                                        color: _c117  ? Colors.green: Colors.red,
                                        borderRadius: _bR,
                                      ),
                                      alignment: Alignment.center,
                                      duration: Duration(seconds: 3),
                                      curve: Curves.fastLinearToSlowEaseIn,
                                      child:
                                      Text(item_117,textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: font_adj4,
                                            color: _c117  ? Colors.black : Colors.black,
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
                    //space
                    //
                    //
                    // 35
                    //
                    SizedBox(
                        width: w100p,
                        height: hpb4,
                        child:
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Column(children: <Widget>[
                              GestureDetector (

                                  onTap:() {
                                    if (_c118  == true ) {setState(() { _c118  = false; _esc6 --;});}
                                    else
                                    if (_c118  == false ) {setState(() { _c118  = true; _esc6 ++;});}
                                  },

                                  child:
                                  AnimatedContainer(
                                    //  padding: EdgeInsets.only(top : padbox),
                                      width: w100p,
                                      height: hpb4,
                                      decoration: BoxDecoration(
                                        color: _c118  ? Colors.green: Colors.red,
                                        borderRadius: _bR,
                                      ),
                                      alignment: Alignment.center,
                                      duration: Duration(seconds: 3),
                                      curve: Curves.fastLinearToSlowEaseIn,
                                      child:
                                      Text(item_118,textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: font_adj4,
                                            color: _c118  ? Colors.black : Colors.black,
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
                    //space
                    //
                    //
                    // 36
                    //
                    SizedBox(
                        width: w100p,
                        height: hpb4,
                        child:
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Column(children: <Widget>[
                              GestureDetector (

                                  onTap:() {
                                    if (_c119  == true ) {setState(() { _c119  = false; _esc6 --;});}
                                    else
                                    if (_c119  == false ) {setState(() { _c119  = true; _esc6 ++;});}
                                  },

                                  child:
                                  AnimatedContainer(
                                    //  padding: EdgeInsets.only(top : padbox),
                                      width: w100p,
                                      height: hpb4,
                                      decoration: BoxDecoration(
                                        color: _c119  ? Colors.green: Colors.red,
                                        borderRadius: _bR,
                                      ),
                                      alignment: Alignment.center,
                                      duration: Duration(seconds: 3),
                                      curve: Curves.fastLinearToSlowEaseIn,
                                      child:
                                      Text(item_119,textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: font_adj4,
                                            color: _c119  ? Colors.black : Colors.black,
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
                    //space
                    //
                    //
                    // 37
                    //
                    SizedBox(
                        width: w100p,
                        height: hpb4,
                        child:
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Column(children: <Widget>[
                              GestureDetector (

                                  onTap:() {
                                    if (_c120  == true ) {setState(() { _c120  = false; _esc6 --;});}
                                    else
                                    if (_c120  == false ) {setState(() { _c120  = true; _esc6 ++;});}
                                  },

                                  child:
                                  AnimatedContainer(
                                    //  padding: EdgeInsets.only(top : padbox),
                                      width: w100p,
                                      height: hpb4,
                                      decoration: BoxDecoration(
                                        color: _c120  ? Colors.green: Colors.red,
                                        borderRadius: _bR,
                                      ),
                                      alignment: Alignment.center,
                                      duration: Duration(seconds: 3),
                                      curve: Curves.fastLinearToSlowEaseIn,
                                      child:
                                      Text(item_120,textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: font_adj4,
                                            color: _c120  ? Colors.black : Colors.black,
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
                    //space
                    //
                    //
                    // 38
                    //
                    SizedBox(
                        width: w100p,
                        height: hpb4,
                        child:
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Column(children: <Widget>[
                              GestureDetector (

                                  onTap:() {
                                    if (_c121  == true ) {setState(() { _c121  = false; _esc6 --;});}
                                    else
                                    if (_c121  == false ) {setState(() { _c121  = true; _esc6 ++;});}
                                  },

                                  child:
                                  AnimatedContainer(
                                    //  padding: EdgeInsets.only(top : padbox),
                                      width: w100p,
                                      height: hpb4,
                                      decoration: BoxDecoration(
                                        color: _c121  ? Colors.green: Colors.red,
                                        borderRadius: _bR,
                                      ),
                                      alignment: Alignment.center,
                                      duration: Duration(seconds: 3),
                                      curve: Curves.fastLinearToSlowEaseIn,
                                      child:
                                      Text(item_121,textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: font_adj4,
                                            color: _c121  ? Colors.black : Colors.black,
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
                    SizedBox(
                        width: w100p,
                        height: hpb4,
                        child:
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Column(children: <Widget>[
                              GestureDetector (

                                  onTap:() {
                                    if (_c122  == true ) {setState(() { _c122  = false; _esc6 --;});}
                                    else
                                    if (_c122  == false ) {setState(() { _c122  = true; _esc6 ++;});}
                                  },

                                  child:
                                  AnimatedContainer(
                                    //  padding: EdgeInsets.only(top : padbox),
                                      width: w100p,
                                      height: hpb4,
                                      decoration: BoxDecoration(
                                        color: _c122  ? Colors.green: Colors.red,
                                        borderRadius: _bR,
                                      ),
                                      alignment: Alignment.center,
                                      duration: Duration(seconds: 3),
                                      curve: Curves.fastLinearToSlowEaseIn,
                                      child:
                                      Text(item_122,textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: font_adj4,
                                            color: _c122  ? Colors.black : Colors.black,
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
                    //space
                    SizedBox(
                        width: w100p,
                        height: hpb4,
                        child:
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Column(children: <Widget>[
                              GestureDetector (

                                  onTap:() {
                                    if (_c123  == true ) {setState(() { _c123  = false; _esc6 --;});}
                                    else
                                    if (_c123  == false ) {setState(() { _c123  = true; _esc6 ++;});}
                                  },

                                  child:
                                  AnimatedContainer(
                                    //  padding: EdgeInsets.only(top : padbox),
                                      width: w100p,
                                      height: hpb4,
                                      decoration: BoxDecoration(
                                        color: _c123  ? Colors.green: Colors.red,
                                        borderRadius: _bR,
                                      ),
                                      alignment: Alignment.center,
                                      duration: Duration(seconds: 3),
                                      curve: Curves.fastLinearToSlowEaseIn,
                                      child:
                                      Text(item_123,textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: font_adj4,
                                            color: _c123  ? Colors.black : Colors.black,
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
                    SizedBox(
                        width: w100p,
                        height: hpb4,
                        child:
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Column(children: <Widget>[
                              GestureDetector (

                                  onTap:() {
                                    if (_c124  == true ) {setState(() { _c124 = false; _esc6 --;});}
                                    else
                                    if (_c124 == false ) {setState(() { _c124 = true; _esc6 ++;});}
                                  },

                                  child:
                                  AnimatedContainer(
                                    //  padding: EdgeInsets.only(top : padbox),
                                      width: w100p,
                                      height: hpb4,
                                      decoration: BoxDecoration(
                                        color: _c124 ? Colors.green: Colors.red,
                                        borderRadius: _bR,
                                      ),
                                      alignment: Alignment.center,
                                      duration: Duration(seconds: 3),
                                      curve: Curves.fastLinearToSlowEaseIn,
                                      child:
                                      Text(item_124,textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: font_adj4,
                                            color: _c124 ? Colors.black : Colors.black,
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
                    SizedBox(
                        width: w100p,
                        height: hpb4,
                        child:
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Column(children: <Widget>[
                              GestureDetector (

                                  onTap:() {
                                    if (_c125  == true ) {setState(() { _c125  = false; _esc6 --;});}
                                    else
                                    if (_c125  == false ) {setState(() { _c125  = true; _esc6 ++;});}
                                  },

                                  child:
                                  AnimatedContainer(
                                    //  padding: EdgeInsets.only(top : padbox),
                                      width: w100p,
                                      height: hpb4,
                                      decoration: BoxDecoration(
                                        color: _c125  ? Colors.green: Colors.red,
                                        borderRadius: _bR,
                                      ),
                                      alignment: Alignment.center,
                                      duration: Duration(seconds: 3),
                                      curve: Curves.fastLinearToSlowEaseIn,
                                      child:
                                      Text(item_125,textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: font_adj4,
                                            color: _c125  ? Colors.black : Colors.black,
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
                    SizedBox(
                        width: w100p,
                        height: hpb4,
                        child:
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Column(children: <Widget>[
                              GestureDetector (

                                  onTap:() {
                                    if (_c126  == true ) {setState(() { _c126  = false; _esc6 --;});}
                                    else
                                    if (_c126  == false ) {setState(() { _c126  = true; _esc6 ++;});}
                                  },

                                  child:
                                  AnimatedContainer(
                                    //  padding: EdgeInsets.only(top : padbox),
                                      width: w100p,
                                      height: hpb4,
                                      decoration: BoxDecoration(
                                        color: _c126  ? Colors.green: Colors.red,
                                        borderRadius: _bR,
                                      ),
                                      alignment: Alignment.center,
                                      duration: Duration(seconds: 3),
                                      curve: Curves.fastLinearToSlowEaseIn,
                                      child:
                                      Text(item_126,textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: font_adj4,
                                            color: _c126  ? Colors.black : Colors.black,
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
                    SizedBox(
                        width: w100p,
                        height: hpb4,
                        child:
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Column(children: <Widget>[
                              GestureDetector (

                                  onTap:() {
                                    if (_c127  == true ) {setState(() { _c127  = false; _esc6 --;});}
                                    else
                                    if (_c127  == false ) {setState(() { _c127  = true; _esc6 ++;});}
                                  },

                                  child:
                                  AnimatedContainer(
                                    //  padding: EdgeInsets.only(top : padbox),
                                      width: w100p,
                                      height: hpb4,
                                      decoration: BoxDecoration(
                                        color: _c127  ? Colors.green: Colors.red,
                                        borderRadius: _bR,
                                      ),
                                      alignment: Alignment.center,
                                      duration: Duration(seconds: 3),
                                      curve: Curves.fastLinearToSlowEaseIn,
                                      child:
                                      Text(item_127,textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: font_adj4,
                                            color: _c127  ? Colors.black : Colors.black,
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
                    SizedBox(
                        width: w100p,
                        height: hpb4,
                        child:
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Column(children: <Widget>[
                              GestureDetector (

                                  onTap:() {
                                    if (_c128  == true ) {setState(() { _c128  = false; _esc6 --;});}
                                    else
                                    if (_c128  == false ) {setState(() { _c128  = true; _esc6 ++;});}
                                  },

                                  child:
                                  AnimatedContainer(
                                    //  padding: EdgeInsets.only(top : padbox),
                                      width: w100p,
                                      height: hpb4,
                                      decoration: BoxDecoration(
                                        color: _c128  ? Colors.green: Colors.red,
                                        borderRadius: _bR,
                                      ),
                                      alignment: Alignment.center,
                                      duration: Duration(seconds: 3),
                                      curve: Curves.fastLinearToSlowEaseIn,
                                      child:
                                      Text(item_128,textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: font_adj4,
                                            color: _c128  ? Colors.black : Colors.black,
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
                    // BOTOES
                    //
                    //
                    SizedBox(
                        height: hspace),
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
                                                teste001(widget._codAluno)));
                                  }else{
                                    _limpaBotao();

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
                          (_esc6 == 4 ) ? Container(
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
                                    _finaliza();

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
                      height: _msg14 ? 0 :hvolta-20,
                      alignment: Alignment.bottomCenter,
                      decoration: BoxDecoration(
                        color: Color(0xFF3C6600),
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
                                "ESCOLHER 4 OPÇÕES",
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
                                        Home(widget._codAluno)));
                          },
                        ),
                      ),
                    )

                  ]) :

              //
              Container()
//
            ]
        ),
      ),
    );
  }
}
