import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'dart:async';
import 'package:path/path.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:charts_flutter/flutter.dart' as charts;

import 'ResultadosDisc.dart';

class GraficosDisc extends StatefulWidget {
  String _codAluno;
  int _valD;
  int _valI;
  int _valS;
  int _valC;
  int _valDantes;
  int _valIantes;
  int _valSantes;
  int _valCantes;


  GraficosDisc(this._codAluno,this._valD,this._valI,this._valS,this._valC,this._valDantes,this._valIantes,this._valSantes,this._valCantes,);

  _GraficosDiscState createState() => _GraficosDiscState();

}

class _GraficosDiscState extends State<GraficosDisc> {

  List<charts.Series<Resultados, String>> _seriesData;
  List<charts.Series<Task, String>> _seriesPieData;
  List<charts.Series<Sales, int>> _seriesLineData;

  int _nroDISC;

  double _perD;
  double _perI;
  double _perS;
  double _perC;
  int _calcperD;
  int _calcperI;
  int _calcperS;
  int _calcperC;
  int _totDISC;
  // RECEBA DADOS DA BASE DE DADOS
  String _titulo = "   ";
  String _emocoes = "   ";
  String _excessos = "   ";
  String _julga = "   ";
  String _medos = "   ";
  String _objetivo = "   ";
  String _pressao = "   ";
  String _valor = "   ";
  String _influencia = "   ";
  String _aumentaria = "   ";
  //
  double reciprocal(double d) =>  d;
  _generateData() async {
    var data1 = [
      new Resultados(1, 'AutoEstima', 11, Colors.red),
      new Resultados(2, 'Ansiedade', 11, Colors.red),
      new Resultados(3, 'Stress', 11, Colors.red),

    ];


    var piedata = [

      new Task('Dominância', _calcperD, Color(0xff109618)),
      new Task('Influência', _calcperI, Color(0xfffdbe19)),
      new Task('Estabilidade', _calcperS, Color(0xffff9900)),
      new Task('Conformidade', _calcperC, Color(0xffdc3912)),
    ];

    var linesalesdata = [
      new Sales(0, 45),
      new Sales(1, 56),
      new Sales(2, 55),
      new Sales(3, 60),
      new Sales(4, 61),
      new Sales(5, 70),
    ];
    var linesalesdata1 = [
      new Sales(0, 35),
      new Sales(1, 46),
      new Sales(2, 45),
      new Sales(3, 50),
      new Sales(4, 51),
      new Sales(5, 60),
    ];

    var linesalesdata2 = [
      new Sales(0, 20),
      new Sales(1, 24),
      new Sales(2, 25),
      new Sales(3, 40),
      new Sales(4, 45),
      new Sales(5, 60),
    ];

    //
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
        id: 'disc',
        data: piedata,
        labelAccessorFn: (Task row, _) => '${row.task}\n' ' ${row.taskvalue}%',
      ),
    );

    _seriesLineData.add(
      charts.Series(
        colorFn: (__, _) => charts.ColorUtil.fromDartColor(Color(0xff990099)),
        id: 'Air Resultados',
        data: linesalesdata,
        domainFn: (Sales sales, _) => sales.yearval,
        measureFn: (Sales sales, _) => sales.salesval,
      ),
    );
    _seriesLineData.add(
      charts.Series(
        colorFn: (__, _) => charts.ColorUtil.fromDartColor(Color(0xff109618)),
        id: 'Air Resultados',
        data: linesalesdata1,
        domainFn: (Sales sales, _) => sales.yearval,
        measureFn: (Sales sales, _) => sales.salesval,
      ),
    );
    _seriesLineData.add(
      charts.Series(
        colorFn: (__, _) => charts.ColorUtil.fromDartColor(Color(0xffff9900)),
        id: 'Air Resultados',
        data: linesalesdata2,
        domainFn: (Sales sales, _) => sales.yearval,
        measureFn: (Sales sales, _) => sales.salesval,
      ),
    );
  }

  void _carregatab () async {
    print("DISC = " + _nroDISC.toString());
    Firestore db = Firestore.instance;
    QuerySnapshot querySnapshot =
    await db.collection("Disc")
        .document("tabelas")
        .collection("Codigos")
        .where("codigo", isEqualTo: _nroDISC)
        .getDocuments();
    for (DocumentSnapshot item in querySnapshot.documents) {
      var dados = item.data;
      setState(() {
        _titulo = dados["titulo"].toString();
        _emocoes = dados["emocoes"].toString();
        _excessos = dados["excessos"].toString();
        _julga = dados["julga"].toString();
        _medos = dados["medos"].toString();
        _objetivo = dados["objetivo"].toString();
        _pressao = dados["pressao"].toString();
        _valor = dados["valor"].toString();
        _influencia = dados["influencia"].toString();
      });
      QuerySnapshot querySnapshot =
      await db.collection("Disc")
          .document("tabelas")
          .collection("Aumentaria")
          .where("codigo", isEqualTo: _nroDISC)
          .getDocuments();
      for (DocumentSnapshot item in querySnapshot.documents) {
        var dados2 = item.data;
        setState(() {
          _aumentaria = dados2["aumentaria"].toString();
        });
      }
    }
  }
//
  void _achaAdjetivos() {

    for (int i = 1; i <= 28; i++) {
      if (_adjetivoD[i][2] == widget._valDantes) {
        _intescolhaD = i;
      }}
    for (int i = 1; i <= 28; i++) {
      if (_adjetivoI[i][2] == widget._valIantes) {
        _intescolhaI = i;
      }}
    for (int i = 1; i <= 28; i++) {
      if (_adjetivoS[i][2] == widget._valSantes) {
        _intescolhaS = i;
      }}
    for (int i = 1; i <= 28; i++) {
      if (_adjetivoC[i][2] == widget._valCantes) {
        _intescolhaC = i;
      }}

    if (_intescolhaD >= 25){ _intescolhaD = 25;}
    if (_intescolhaI >= 25){ _intescolhaI = 25;}
    if (_intescolhaS >= 25){ _intescolhaS = 25;}
    if (_intescolhaC >= 25){ _intescolhaC = 25;}

    if (_intescolhaD <= 4){ _intescolhaD = 4;}
    if (_intescolhaI <= 4){ _intescolhaI = 4;}
    if (_intescolhaS <= 4){ _intescolhaS = 4;}
    if (_intescolhaC <= 4){ _intescolhaC = 4;}



  }
  @override
  int _intescolhaD;
  int _intescolhaI;
  int _intescolhaS;
  int _intescolhaC;



  var _adjetivoD = [
    [0,"",0,""],
    [28,"Egocêntrico(a)",27,"Oposição forte ou acontecimentos que desviam a atenção geralmente não afetam sua concentração determinada a alcançar seus objetivos. Ter uma auto-concentração pode ser um benefício para a equipe quando a burocracia ou a falta de consenso distraem seus colegas. No entanto, não se esqueça de que concentrar demasiadamente sua atenção em si mesmo(a) pode se visto como tedioso ou egocêntrico."],
    [27,"Direto(a)",9,"Muitas pessoas apreciam esta qualidade porque não precisam interpretar o que você diz. Você pode também servir de inspiração àqueles que são mais reservados para compartilhar suas opiniões e ideias abertamente. No entanto, ser muito franco(a) pode ofender os demais e ser contraproducente em comunicações futuras."],
    [15,"Auto-suficiente",-6,"Ser Auto-suficiente requer afinidade para o pensamento independente quando necessário. Estes hábitos podem produzir soluções eficazes e aprimorar habilidades de liderança. Por outro lado, a auto-suficiência excessiva pode desfazer os laços de uma equipe e destruir camaradagem."],
    [14,"Disposto(a) a assumir riscos calculados",-7,"A especulação selvagem geralmente não é para você. Ao tomar riscos calculados, você pode ajudar a prevenir desastres e minimizar perdas; No entanto, a desvantagem é que esta tendência pode sufocar a criatividade e limitar o crescimento."],
    [13,"Auto-crítico(a)",0,"Isso significa que muitas vezes pode facilmente fazer percepções e não tem medo de examinar suas falhas e fraquezas. Esta análise pode dar-lhe informações úteis que podem levar ao seu benefício e sua organização. Tome cuidado, porém, para não se tornar muito crítico de si mesmo e parar de manifesto, ou pior ainda, projeto de sua condenação aos outros."],
    [12,"Despretensioso(a)",-8,"Normalmente modesto sobre suas habilidades, você não é uma pessoa que chamar a atenção ou procurar reconhecimento para suas realizações. Esta é uma qualidade que os outros podem apreciar quando você porque você não é 'Grande Concorrente'. No entanto, é importante falar de vez em quando para Deixe os outros saberem o que você precisa para ser eficaz."],
    [11,"Discreto(a)",-9,"Sendo reservado e discreto a sua maneira , você pode às vezes empregar a sagacidade para aliviar a tensão quando você está trabalhando com os outros. Ser muito descontraído tem seus inconvenientes, no entanto istopode levar os outros a não levá-lo a sério e custar-lhe respeito entre seus colegas."],
    [10,"Realista",-10,"Quando você mantém seus pés firmemente plantados no chão, você muitas vezes filtra ideias impraticáveis ou sugestões bizarras, eliminando assim o esforço desperdiçado. No entanto, ser muito pragmático pode provocarmediocridade ou trabalho sem inspiração."],
    [9,"Pesa os prós e os contras",-11,"Cautela extrema pode produzir resultados fantásticos. Medindo os benefícios Contra os seus custos potenciais, muitas vezes você pode escolher a melhor opção. Mas usar esta habilidade em excesso pode levar Indecisão e ansiedade."],
    [8,"Manso(a)",-12,"Você pode ser visto como um colega não ameaçador ou concorrente, aumentando as chances de que você não vai ficar preso em lutas de poder ou conflitos pessoais. A desvantagem é que suas ideias não podem obter o respeito que merecem."],
    [7,"Conservador(a)",-13,"Preservar a manutenção das tradições de uma organização garante que transições ordenadas possam ocorrer. Mas este conceito pode ser contraproducente se você frustrar a mudança necessária."],
    [6,"Pacífico(a)",-14,"Procurar uma solução harmoniosa para a maioria dos problemas é um objetivo admirável. Uma presença calma pode fazer maravilhas em ambientes de grupo. No entanto, em excesso este comportamento sereno pode fazer os outros a acreditar que você está menos comprometido com o resultado."],
    [5,"Maleável",0,"O seu comportamento atencioso e gentil é muitas vezes o seu modus operandi. Essa abordagem ajuda a construir a unidade da equipe e aumentar a moral. Porem este comportamento excessivamente dócil não vai ajudar você ou sua organização."],
    [4,"Calmo(a)",-15,"Abstendo-se de queixas, fofocas ou calúnias, você pode oferecer uma força estabilizadora em sua organização. Lembre-se, entretanto, de que ser excessivamente reticente às vezes pode causar desconforto ou preocupação a seus colegas porque eles não sabem exatamente o que você esta pensando."],
    [3,"Incerto(a)",-16,"Quando você precisa tomar uma decisão importante,  você investiga detalhadamente todas as opções antes de escolher a melhor solução. Gasta-se muito tempo com isto, e pode levar a prazos perdidos ou compromissos mal adaptados."],
    [2,"Dependente",0,"Muitas vezes, você demonstra grande lealdade para com indivíduos ou organizações, e uma necessidade dar credito a outras pessoas por suas contribuições. Esta devoção pode prejudicá-lo, no entanto, se você comprometer suas necessidades para os os outro e permitir-se tornar subserviente."],
    [1,"Modesto(a)",-27,"Esse traço é uma força quando sua ânsia de compartilhar crédito incentiva os outros a trabalhar arduamente em direção a um objetivo comum. Torna-se uma fraqueza se você é tão humilde que suas contribuições e realizações são ignoradas."],
    [26,"Ousado(a)",6,"Você geralmente não se limita a fazer as coisas da mesma maneira. Na realidade, você não tem receio de balançar o barco, ou até incliná-lo, se você tiver vontade. Isto pode servir de inspiração para aqueles que tendem a agir timidamente ao arriscar-se e ao tentar  coisas novas. No entanto, não se esqueça de manter a sua ousadia sob controle para que você não aja de maneira imprudente, deixando os seus colegas de trabalho de lado."],
    [25,"Dominador(a)",5,"Ser uma pessoa decisiva e voltada para objetivos pode beneficiar os resultados finais de uma equipe ou organização. No entanto, se você não estiver ouvindo os demais ou valorizando suas opiniões quando se precisa chegar a um consenso, é provável que se depare com ressentimento ou até discórdia."],
    [24,"Exigente",3,"Com frequência, isto significa pressionar as pessoas para alcançar os resultados desejados. Isto pode ser visto como um ponto forte quando você está trabalhando com as outras pessoas em direção ao mesmo objetivo ou prazo, desde que você não seja indiferente aos sentimentos dos demais ou se torne autoritário(a)."],
    [23,"Enérgico(a)",2," No ambiente de trabalho, isto pode significar não aceitar um “não” como reposta. Pode ser visto como um ponto forte quando se está enfrentando influências negativas ou quando se ser visto como um ponto forte quando se está enfrentando influências negativas ou quando se mantêm os padrões de qualidade mesmo com prazos apertados. Deixa de ser um ponto forte quando se torna autoritário ou rígido."],
    [22,"Disposto(a) a assumir RISCOS",1," Ser aquela pessoa que toma decisões audaciosas e as executa pode ser definitivamente um ponto forte, especialmente quando os demais não têm condições de fazê-lo.  No entanto, quando levado ao extremo ou utilizado inapropriadamente, o ato de correr um risco pode ser visto como algo egoísta ou imprudente."],
    [21,"Aventureiro(a)",0," Muitos de nós querem estar em volta de pessoas com esta característica porque nos sentimos mais vivos e energizados. Isto pode até passar para os demais, fazendo com que a equipe  inteira esteja mais disposta a arriscar-se no alcance de um objetivo comum. No entanto, quando exagerado, as outras pessoas podem tornar-se exaustas com a sua extrema necessidade de emoção."],
    [20,"Decisivo(a)",-1," Sempre vemos as pessoas decisivas como líderes porque elas parecem tão seguras de si mesmas. Isto pode ser uma vantagem quando se trabalha com pessoas que preferem seguir do que liderar. No entanto, você precisa ter cuidado para que não passe por cima dos sentimentos dos demais ou torne-se teimoso(a) quando eles não concordarem com sua maneira de fazer as coisas."],
    [19,"Curioso(a)",-2," Esta característica pode ser um ponto forte quando a curiosidade o(a) força a buscar as melhores respostas ou novos métodos. Será vista como um ponto fraco se seu questionamento  tornar-se implacável e invasivo."],
    [18,"Seguro(a) de si",-3," Sua crença nas suas próprias habilidades pode levar você até posições de liderança. A confiança e a certeza que você exala podem também inspirar seus colegas a ir mais longe. No entanto, confiar demasiado nesta característica pode fazer com que os demais o(a) vejam como uma pessoa arrogante ou presunçosa."],
    [17,"Competitivo(a)",-4,"Aspirar ser o melhor pode levar a realizações superiores e grandes sucessos. Seu enorme desejo de ser o(a) vitorioso(a) pode ajudá-lo(a) a alcançar muito ao longo do caminho, mesmo que você não chegue até o seu objetivo final. No entanto, este desejo pode tornar-se obsessivo se  você só pensar em vencer e não se importar com o preço a ser pago. "],
    [16,"Ágil",-5,"Sua agilidade em compreender complexidades e formar opiniões rapidamente é um talento invejável que pode ajudar a acelerar o progresso de uma organização. A chave é temperar sua tendência para tomar decisões rápidas ou você será visto como imprudente ou inconsciente de perigos."],
    [0,"",0,""],
     [0,"",0,""],
     [0,"",0,""],
      [0,"",0,""],
      [0,"",0,""]
      ];
  var _adjetivoI = [
    [0,"",0,""],
    [28,"Entusiasta",28,"A energia e a empolgação que você cria ao formar novos relacionamentos ou ao iniciar novos projetos são quase contagiantes, frequentemente gerando um comportamento semelhante nos demais. Isto é definitivamente um ponto forte, desde que o trabalho duro e o acompanhamento sigam o seu entusiasmo inicil para que o projeto se torne realidade."],
    [27,"Social",0,"Você provavelmente é o tipo de pessoa que adora conhecer novas pessoas e interagir com elas. Isto é de grande valia em muitas situações, especialmente quando as outras pessoas são tímidas demais para tomar a iniciativa ou iniciar uma conversa. No entanto, é importante lembrar que ser excessivamente sociável quando há trabalho para ser feito pode gerar ressentimento nos demais."],
    [26,"Persuasivo(a)",9,"Você tem uma tendência natural para convencer as pessoas de sua opinião. Isto pode ajudar a chegar a um consenso e seguir adiante em prol de um objetivo em comum. Apenas tenha cuidado para não utilizar esta característica de forma exagerada e fazer com que os demais se sintam manipulados ou ludibriados."],
    [25,"Impulsivo(a)",8,"Muitas pessoas podem apreciar sua espontaneidade e vontade de experimentar as coisas pela primeira vez, porque isto cria uma abertura para o improvável quando as coisas não estão ao seu favor. No entanto, você saberá quando agiu apressada ou imprudentemente porque os demais se distanciarão de você."],
    [24,"Emocional",0,"Você pode geralmente sentir as coisas de forma mais intensa que as outras pessoas e estar disposto(a) a falar mais abertamente, o que faz com que as outras pessoas façam o mesmo. No entanto, a sinceridade emocional utilizada de forma exagerada pode fazer com que as outras pessoas se sintam constrangidas e até perturbadas, porque elas podem achar que os seus limites foram violados."],
    [23,"Oferecido(a)",7,"Isto significa que você informa os demais sobre a sua pessoa e oferece sua especialidade ao grupo o máximo possível. É um ponto forte quando utilizado para gerar comunicação com as outras pessoas, que não precisarão buscar informações de você. No entanto, tenha cuidado para não ser convencido(a) pois as pessoas podem começar a se distanciar de você."],
    [22,"Confiável",6,"Acreditar nos outros sem hesitação é uma característica refrescante, especialmente quando se trabalha com aqueles que são mais céticos. A confiança real é construída a partir de experiências positivas. Existe uma coisa como ser demasiado confiante, neste caso você corre o risco de ser visto como ingênuo."],
    [21,"Influente",0,"A capacidade de inspirar outros e movê-los para a ação é uma qualidade encontrada em líderes eficazes. Ter essa habilidade significa que você pode orientar indivíduos, ou agir em seu nome quando eles não são capazes de fazer isso. No entanto, é importante que você também veja isso como uma responsabilidade de permanecer responsável, para que outros não sejam enganados ou deturpados."],
    [10,"Factual",0,"Direto(a) e sensato(a) são provavelmente palavras que descrevem você. Ser objetivo(a) é uma qualidade que seus colegas apreciam, especialmente se as ideias deles são algumas vezes grandiosas e infundadas. No entanto, esta característica pode ser utilizada de forma exagerada e você corre o risco de ser visto(a) como o(a) sabichão(ona) ou o(a) desmancha-prazeres."],
    [9,"Lógico(a)",-2,"Por causa do seu bom senso e capacidade de racionalizar, as outras pessoas podem pedira sua ajuda para acabar com uma discussão ou chegar à melhor solução para um problema. Noentanto, se a lógica é utilizada o tempo todo, ela pode limitar uma equipe que esteja se empenhandoem encontrar maneiras novas e ainda não comprovadas para fazer alguma coisa."],
    [8,"Controlado(a)",-3,"Geralmente isto significa que você é auto-disciplinado(a) e sabe como agir na maioriadas situações. Ou seja, as pessoas não zombam de você. No entanto, ao ser muito reservado(a) vocêpode perder a oportunidade de novas experiências e a chance de crescer e enriquecer a sua vida."],
    [7,"Recatado(a)",-4,"Geralmente modesto(a) e despretensioso (a), você tende a evitar atenção, conflitos elutas pelo poder. Preferindo trabalhar calmamente por trás dos bastidores, você não costuma causaratritos. No entanto, é importante de vez em quando tomar uma posição firme nos assuntos em quevocê acredita, para que os outros não machuquem os seus sentimentos."],
    [6,"Suspeito(a)",-5,"Você pode frequentemente não acreditar em soluções rápidas ou em muito alarde, epode também procurar se certificar antes de agir ou tomar grandes decisões. Este tipo decomportamento minucioso faz com que você seja de grande valia para qualquer organização voltadapara a qualidade. Mas quando levada ao extremo, esta característica pode fazer com que vocêsuspeite dos motivos das outras pessoas, impedindo, assim, o progresso do grupo."],
    [5,"Pessimista",-6,"Você é geralmente classificado(a) como uma pessoa realista, o que no mundo de hojenão é necessariamente visto como uma coisa positiva. Você tende a agir baseado em experiênciaspassadas e de forma pragmática e sensata. Isto pode ser de grande auxílio quando se trabalha compessoas irrealistas. Apenas tenha cuidado para não ser muito agressivo(a) ao oferecer conselhos aosdemais, porque você pode ser visto(a) como uma pessoa incessantemente negativa."],
    [4,"Indiferente",0,"Você é provavelmente um individualista e prefere fazer coisas sua maneira sem interferência dos outros. Sua capacidade independente de trabalhar é útil nas organizações, mas é sempre necessário trabalhar com outras pessoas para atingir objetivos comuns. Se você é muito independente, você corre o risco de ser percebido como hostil e não cooperativo por aqueles que tentam trabalhar com você."],
    [3,"Contido(a)",-8,"É provável que haja benefícios para manter no seu mundo e fazer o seu trabalho a tempo. Esta qualidade é, sem dúvida, apreciada por um número de pessoas que trabalham com você, porque você não participa de fofocas e conversa fiada. No entanto, manter-se excessivamente no seu mundo pode dificultar as relações que são muitas vezes necessárias para a qualidade do trabalho em equipe."],
    [2,"Inibido(a)",0,"Você provavelmente está muito consciente dos seus pontos fortes e tem conhecimento de suas limitações. Auto-conhecimento é bom até certo ponto. No entanto, quando você está muito consciente de si mesmo e com medo de cometer um erro, você pode perder a participação em novas atividades e explorar novos talentos dentro de si mesmo."],
    [1,"Reservado(a)",-26,"Algumas pessoas tímidas são menos comunicativas, tem dificuldades de tomar uma posição sobre qualquer questão. Este é um traço que certamente não vai afundar o barco quando se trabalha em equipe, mas pode ser percebido como letargia ou desinteresse em compartilhar com os outros ou trabalhar em direção a um objetivo comum."],
    [20,"Agradável",5,"Ser alegre e agradável são traços que permitem que você se encaixam em quase todos os lugares e contribuir para uma meta compartilhada. No entanto, se você nunca compartilhar seus pensamentos e opiniões reais por medo de ser desagradável, você corre o risco de ser percebido como despreocupado ou falta de substância."],
    [19,"Sociável",4,"Sempre tendo uma interação animada com os outros, você é provável sempre encontrado no centro de atividades com muitas ideias para compartilhar. Isso é bem-vindo, especialmente com os tipos introvertidos que podem precisar de você, para ajudá-los a se sentir confortável em grupos. Ser sociável não é apropriado, porém, quando você precisa ser orientada a prazo ou o foco é estritamente sobre a tarefa em mãos."],
    [18,"Generoso(a)",0,"Em um ambiente de trabalho, isso pode significar dar seu tempo e energia sem esperar algo em troca. É um traço admirável que funciona bem para alcançar um objetivo comum. Mas você precisa conservar seu tempo e energia dizendo 'não' quando há vários projetos e seu nome está em todos eles."],
    [17,"Equilibrado(a)",3,"Isso pode se referir à sua auto-confiança como você encontrar novas situações, pessoas ou problemas. Raramente reativo, é provável que você responda calmamente a qualquer coisa que venha em sua direção, o que muitas vezes gera respeito. Ainda assim, se suas respostas não mostram uma apreciação pelas preocupações alheias, você corre o risco de perder sua credibilidade."],
    [16,"Encantador(a)",0," Combinado com inteligência emocional e habilidades de liderança, sua habilidade em captar a atenção dos outros e conquistá-los tem muito potencial. Você precisa se lembrar, no entanto, de não usar demais o seu charme para manipular ou aproveitar os outros."],
    [15,"Confiante",2,"Você se destaca no grupo porque acredita no próximo, que crê em promessas, que tem convicções fortes. Quando consegue a reciprocidade da equipe obtém respeito e controle. Quando esta confiança não é muito criteriosa passa a imagem de inocência."],
    [14,"Convincente",1," Gostam de fazer um trabalho de qualidade e o fazem certo da primeira vez são exatos, sistemáticos, diplomáticos e precisos. Tem dificuldades com as regras e desejam a independência. São aquelas pessoas obstinadas, teimosas, não sistemáticas, arbitrárias e que não se preocupam com detalhes."],
    [13,"Observador(a)",0," Tem a capacidade de 'olhar de fora', e assim, vê 'o todo' das situações. Ele busca a essência das coisas e o conhecimento da vida. É isso que o torna um bom conselheiro. Quando não consegue um tempo para observar ou sofre pressão para uma rápida resposta sua qualidade cai. "],
    [12,"Seletivo(a)",0,"Você  tende a escolher de forma atenta e cuidadosa, consegue tranquilamente alterar alguns pontos de um projeto sem alterar o todo. Pode sofre afastamento da equipo pela sua lógica seletiva."],
    [11,"Ponderado(a)",-1,"Você pode utilizar esta característica de forma positiva quando aprende algo das experiências anteriores. No entanto, quando você conta muito com esta característica, este comportamento ponderado pode impedir que se siga adiante."],
    [0,"",0,""],
    [0,"",0,""],
    [0,"",0,""],
    [0,"",0,""],
    [0,"",0,""]
  ];
  var _adjetivoS = [
    [0,"",0,""],
    [28,"Passivo(a)",26,"Isso significa que você geralmente exibe calma e certeza, mesmo quando pressionado. Conduzido a um extremo, no entanto, essa característica pode levar a uma incapacidade de contribuir com sua equipe e uma tendência a ser uma fraqueza em questões-chave."],
    [27,"Paciente",0,"Uma personalidade imbatível pode ser um grande recurso durante os momentos de estresse, e você pode achar que você geralmente mantém seu foco quando o caos desvia os outros em sua organização. Mas muita paciência pode fazer você parecer dócil ou compatível, fazendo com que outros passem cima você."],
    [26,"Leal",14,"A coragem de ficar atrás de uma equipe ou conceito é inestimável. Ser dedicado a uma causa ou organização significa que você pode sobreviver a turbulências que causariam pânico aos outros.  Mas lealdade sem controle ,pode ser prejudicial, se você oculta as verdades desagradáveis ​​que precisam ser reconhecidas."],
    [25,"Previsível",12,"Esta característica é uma força quando você usa isso para estabelecer um sistema ou rotina eficiente em seu trabalho , outros geralmente apreciam a consistência em seus colegas de trabalho. Isso se torna uma fraqueza se você restringe ou bani qualquer criatividade ou pensamento novo."],
    [24,"Pessoa-de-equipe",11,"Muitas vezes, você pode realizar seu melhor trabalho ou desenvolver suas maiores ideias ao colaborar com outras pessoas. Por outro lado, confiar muito no time pode pesar quando uma iniciativa independente é necessária."],
    [23,"Sereno(a)",0,"Deixar o clima tranquilo quando surgem problemas podem manter os projetos e conflitos sob controle, mas uma abordagem excessivamente descontraída pode criar uma liderança relaxada ou frágil."],
    [22,"Possessivo(a)",10,"Liderar projetos pode vir naturalmente para você, e esse senso de propriedade e a responsabilidade pode ser um bem valioso em uma configuração de equipe. e se você extrapolar e mantiver segredo de todos as suas 'pequenas ideias' em algum ponto as outras pessoas não vão mais ter a menor noção do que está acontecendo."],
    [21,"Complacente",9,"Isso significa que você geralmente exibe uma satisfação uniforme, o que faz você uma pessoa afável. A desvantagem é que você corre o risco de aparecer aborrecido ou não engajado."],
    [20,"Ocioso(a)",8,"Muitas vezes você pode trabalhar em um ritmo constante e sem muita energia e entusiasmo. Isto pode ser benéfico quando uma aproximação metódica garante uma solução eficiente. No entanto, intervém se não ativamente quando se requer uma ação direta, você perde qualidade."],
    [19,"Tranqüilo(a)",7,"Apresentar uma atitude reconfortante quando os problemas difíceis podem ser resolvidos , e muito benéfico para qualquer organização. No entanto, estar ciente de que, se parece muito calma, os outros podem vê-lo como um indiferente ou apático."],
    [18,"Inexpressivo(a)",0,"Se você usar os aspectos positivos deste recurso, é pouco provável que seja envolvido em discussões apaixonadas ou conflitos pessoais que afetam a produtividade. Mas se não se controlar pode se sentir excluído ou pode incomodar na sua falta de entusiasmo."],
    [17,"Meticuloso(a)",6,"Você pode ser muito cuidadoso e metódico no seu trabalho. Esta pode ser uma fortaleza quando cuidadosamente se consideram todos ângulos pata tomar melhor solução. Torna-se uma fraqueza se você investir tanto tempo meditando que ele não tem poder a tomar medidas."],
    [16,"Amigável",0,"Apresentar os seus pontos de vista e ideias  pode produzir resultados satisfatórios e um ambiente produtivo. No entanto, numa dependência de simpatia você pode impedir processos quando eles devem tomar decisões difíceis."],
    [15,"Estável",5,"Muitas vezes você pode ser a pessoa com quem as pessoas contam. Ao permanecer forte e fornecer uma estrutura confiável, você incentiva o trabalho de alta qualidade. Mas esta característica torna-se contraproducente se outros começam a abusar de suas  contribuições."],
    [7,"Impetuoso(a)",-2,"Isto significa que você frequentemente decide de forma rápida quando age. Num ambiente de trabalho, essa determinação é bem-vinda no confronto de situações difíceis. No entanto, o tiro pode sair pela culatra se você tomar uma decisão muito rapidamente ou antes de obter toda as informações necessárias."],
    [6,"Inquieto(a)",-3,"Procurando novos desafios e a busca de novos conceitos são aspectos positivos dos inquietos. A busca por novos horizontes pode beneficiar toda a equipe, mantendo os projetos excitantes. Ainda assim, em sua forma extrema, uma natureza inquieta pode levá-lo a sentimentos de infelicidade ou amargura."],
    [5,"Voltado(a) para mudanças",-4,"Evitar as armadilhas de estagnação requer a utilização desta habilidade, o que mantém você sempre atento a ideias inovadoras e soluções inovadoras. Mas tome cuidado para que você não se torne orientado para a mudança, você descarta os aspectos positivos da tradição."],
    [4,"Busca-defeitos",-5,"Quando você descobre erros ou identifica falhas que outros podem ter perdido, você está usando essa característica para o seu potencial mais completo e positivo. O outro lado é que você corre o risco de se tornar cínico, o que pode impedir os outros de compartilhar ideias ou trabalhar com você."],
    [3,"Espontâneo(a)",-7,"Você pode achar que suas melhores ideias vêm em uma explosão de inspiração e atividade. De qualquer forma, você pode manter as coisas vibrantes e frescas enquanto ainda está criando ótimas soluções para problemas irritantes. No entanto, quando você precisa trabalhar dentro de uma rotina previsível ou definir o sistema, você pode achar que as restrições são frustrantes."],
    [2,"Sempre frustrado(a)",0,"Os avanços criativos são muitas vezes o resultado do descontentamento com o statusquo, e você pode muitas vezes inovar o seu caminho em torno de barreiras anteriores. Tenha cuidado para temperar sua irritação, principalmente se suas tentativas de mudança são frustradas. Isso pode ajudá-lo a evitar uma correria descontrolada."],
    [1,"Ativo(a)",-27,"Cumprir os prazos e finalizar projetos não são problemas quando os aspectos positivos de são empregados. Mas a eficiência pode sofrer quando um pensamento cuidadoso e uma deliberação são negligenciados por uma ação cega."],
    [14,"Versátil",4,"Isso significa que você pode muitas vezes exibir um talento para a versatilidade e uma natureza enérgica que pode se adaptar a qualquer situação. Tal flexibilidade pode ser altamente desejável num ambiente de trabalho em constante mudança. Permanecer em constante movimento, no entanto, pode fazer com que você perca importantes nuances e sutilezas, ou mantê-lo de terminar o que você começou."],
    [13,"Extrovertido(a)",3,"Ser extrovertido(a) pode abrir portas e fazer com que você seja apreciado(a) pelos seus colegas. Pode também promover um ambiente amistoso e afetuoso. O problema é que sua presença alegre pode fazer com que as outras pessoas não o(a) levem a sério da  forma que você gostaria."],
    [12,"Alerta",0,"É provável que poucos aspectos de um problema passem despercebidos por você. Ao permanecer alerta e a par do que está acontecendo, você frequentemente começa a solucionar os problemas antes mesmo que as outras pessoas sintam a necessidade de uma  intervenção. Naturalmente, você precisa ter cuidado para não se tornar obsessivo(a) com detalhes de menor importância."],
    [11,"Entusiasmado(a)",2,"Seu entusiasmo pode ser contagiante. Você pode até inspirar outras pessoas a agir ao criar um ambiente dinâmico. Mas lembre-se que um estilo entusiasmado de forma exagerada pode algumas vezes fazer com que você siga adiante rápido demais, comprometendo a qualidade ou fazendo com que você não se atenha a detalhes importantes."],
    [10,"Crítico(a)",1,"Você pode adotar um comportamento excessivamente agressivo que beneficia a você e a sua organização quando a honestidade brutal é a única maneira de manter as coisas em ordem ou descartar projetos mal direcionados. No entanto, você deve ter cuidado para  que sua crítica não seja insensível aos demais."],
    [9,"Descontente",0,"Sentir-se descontente pode servir de incentivo para buscar grandes realizações ou resultados impressionantes. No entanto, muito desta característica pode fazer com que as pessoas vejam você simplesmente como uma pessoa negativa. "],
    [8,"Agitado(a)",-1,"A execução de várias tarefas ao mesmo tempo funciona bem com um comportamento inquieto. Esta característica pode se tornar muito útil no balanceamento de vários projetos diferentes. A desvantagem é que esse tipo de predisposição pode causar problemas quando for necessário concentrar-se numa situação de cada vez."],
    [0,"",0,""],
    [0,"",0,""],
    [0,"",0,""],
    [0,"",0,""],
    [0,"",0,""]
  ];
  var _adjetivoC = [
    [0,"",0,""],
    [28,"Perfeccionista",24,"Isso significa que produzir um trabalho de alta qualidade pode ser uma prioridade para você. A atenção aos detalhes e precisão que você exibe é muitas vezes impressionante. Mas você pode querer assistir a atenção excessiva a pequenas imprecisões ou fatores insignificantes, o que pode levar a retornos decrescentes ou frustrar o progresso."],
    [27,"Preciso(a)",0,"Usar essa habilidade ao máximo requer a eliminação de falhas menores e críticas. Muitas vezes, você comete erros que ninguém mais percebe. No entanto, se você confiar demais em sua própria precisão, seus colegas podem ficar relaxados e tornar-se dependentes de você."],
    [26,"Descobridor(a) dos fatos",18,"Este traço é uma força quando você o usa para coletar informações importantes e identificar fatores que são necessários para o sucesso de um projeto. Torna-se uma fraqueza se você descartar todas as sutilezas e intuições a favor de 'apenas os fatos'."],
    [25,"Diplomático(a)",6,"Muitas vezes, você pode se comunicar bem com os outros e favorecer um tom não ameaçador. Isso ajuda uma organização a funcionar sem problemas e cria uma atmosfera de confiança. O risco, no entanto, é que você não pode ser direto o suficiente quando a situação o exige."],
    [24,"Sistemático(a)",5,"Certifique-se de que tudo seja feito corretamente e na hora é muitas vezes imperativo para você. Este estilo de organização beneficia você e seus colegas. A desvantagem é que você pode permitir pouco tempo para a espontaneidade ou ideias inovadoras."],
    [11,"Persistente",-4,"Isto significa que você geralmente trabalha duro num objetivo até alcançar os resultados que espera. É um ponto forte quando surgem projetos intimidantes, pois você pode ter sucesso onde outros fracassariam. De qualquer forma, uma pessoa muito persistente às vezes acaba tornando-se obstinada ou extremamente teimosa."],
    [10,"Independente",0,"Estar livre da pressão dos colegas ou do pensamento de grupo é uma característica positiva. Você pode adotar pensamentos individualistas para tomar as melhores decisões possíveis. O perigo é que você pode ficar tão voltado(a) para si mesmo(a) que acaba dificultando feedback e ideias válidas."],
    [9,"Rígido(a)",-5,"Esperar altos padrões de si mesmo(a) e dos demais é uma habilidade admirável. Isto é verdade especialmente quando um resultado de qualidade é uma necessidade e não um luxo. No entanto, se evitar a flexibilidade, você poderá gerar hostilidade nos demais e perder oportunidades para um melhoramento de processos."],
    [8,"Firme",-6,"Você é uma pessoa seguro de si, que sabe o fala e o que faz, tem poucas probabilidades de despencar ou cair. Porem precisa esta em constante observação para não ficar centralizador e inflexível."],
    [7,"Teimoso(a)",-7,"A perseverança e a inflexibilidade são as duas formas de teimosia, enquanto a perseverança busca com um grau de empenho onde muito já desistiram, e conseguem resultados por poucos alcançados, Porem a teimosia sem muitos critérios causam um fechamento para o grupo."],
    [6,"Arbitrário(a)",0,"Esta característica é um ponto forte quando você a utiliza para manter os seus colegas atentos e encorajá-los à criatividade. Torna-se um ponto fraco quando você é tão imprevisível que as pessoas evitam pedir a sua opinião."],
    [5,"Rebelde",-8,"Você pode frequentemente atrair-se pela rejeição aos pensamentos convencionais. Ao ignorar os obstáculos tradicionais, você pode cultivar novas ideias e estratégias revolucionárias. Mas podem surgir problemas se sua desobediência tornar-se uma reação automática em todas as situações."],
    [4,"Desobediente",-9,"Você pode frequentemente ter uma intensa aura de independência. Esta recusa a render-se à pressão dos colegas pode trazer grandes benefícios quando você é capaz de fazer críticas construtivas muito necessárias. No entanto, tome cuidado para que suas posições baseadas em princípios não se transformem abertamente em insubordinação."],
    [3,"Obstinado(a)",-11,"Isto significa que pode ser difícil para você recuar ou consentir calmamente. Tal determinação é bastante útil quando objetivos importantes estão na iminência de serem eliminados. Não é algo positivo se seu comportamento teimoso atrapalhar melhorias reais."],
    [2,"Sem tato",0,"Você frequentemente fala utilizando uma linguagem bem clara sem procurar ser agradável, o que significa que nunca há nenhuma dúvida sobre qual é a sua posição ou o que você pensa. Isto é um benefício quando o ambiente de trabalho exige uma comunicação direta. Naturalmente, isto tem a desvantagem de ofender e fazer com que você se distancie dos demais."],
    [1,"Sarcástico(a)",-26,"O uso do humor para neutralizar situações tensas é provavelmente uma tática que você conhece bem e pode servir para quebrar o gelo em situações desagradáveis. Mas o uso excessivo desta característica pode irritar seus colegas, que podem achar que você está zombando deles. "],
    [23,"Convencional",4,"Ao produzir resultados estáveis ​​e previsíveis, você pode manter os projetos focados. Empregando essa qualidade ao excesso, no entanto, pode levar a um trabalho sem inspiração ou sem graça."],
    [22,"Cortês",0,"As palavras 'por favor' e 'obrigado' podem ser instintivas para você. Uma vez que a decência e o respeito básicos são muito significativos, essa abordagem é obrigada a ajudar a formar um ambiente satisfatório. Mas esteja ciente de que muita formalidade pode afetar os outros como falsas e oportunistas."],
    [21,"Cuidadoso(a)",3,"Uma reputação de ação cautelosa e uma deliberação profunda muitas vezes podem precedê-lo. Esta habilidade ajuda a evitar imprecisões e escorregas quando a qualidade é crítica. No entanto, tenha em mente que muita cautela pode não a produzir inércia que fará com que projetos importantes sejam concluídos.."],
    [20,"Contido(a)",2,"Ficar calado e abster-se das críticas pode ser o seu comportamento padrão. Evitando condenação, você pode encorajar a abertura e a inovação. Ainda assim, mostrar muita restrição permite que a tensão não seja resolvida entre você e seus colegas."],
    [19,"Com altos padrões",1,"Trabalhos inferiores ou esforços sem convicção muitas vezes o frustram, então você pode estabelecer metas imponentes para você e para os outros. Tais esforços podem inspirar você e seus colegas a voos maiores. Por outro lado, manter expectativas altamente realistas de desempenho pode causar ansiedade e animosidade entre os membros da equipe."],
    [18,"Analitico(a)",0,"Você pode abordar tarefas com uma lógica legal que calcula todos os detalhes ou possíveis resultados. É uma vantagem para eliminar soluções aleatórias. Isto torna-se uma desvantagem, no entanto, quando é permitido minimizar a criatividade."],
    [17,"Sensível",0,"Esta característica é uma força quando permite que você entre em contato com as complexidades e nuances de um projeto. Torna-se uma fraqueza se você ficar perturbado por pequenas dificuldades ou obstáculos."],
    [16,"Maduro(a)",-1,"Usar sua experiência e sabedoria para resolver problemas complexos é uma excelente aplicação dessa qualidade. Tenha em mente, no entanto, que a dependência de sua experiência pode se safar se você fechar sua mente para novas ideias."],
    [15,"Evasivo(a)",-2,"Isto significa que você frequentemente fica fora de conflitos de personalidade ou desentendimentos, o que lhe é vantajoso. No entanto, ser muito vago(a) pode levar a transtornos de comunicação ou questionamentos sobre sua credibilidade."],
    [14,"“ele(a) mesmo(a)",0,"Você pode frequentemente defender a si mesmo e sentir-se confiante ao expressar suas opiniões. Embora estes sejam evidentemente pontos fortes, é importante lembrar que até a pessoa mais independente necessita interagir positivamente com os demais no trabalho."],
    [13,"Incontestável",0,"Você pode frequentemente acreditar que a sua maneira é sempre a correta, o que é a marca desta característica. Tal sentimento pode levar a um forte senso de liderança e determinação. Mas adotar esta característica com muita veemência pode tornar a pessoa presunçosa e condescendente."],
    [12,"Opinioso(a)",-3,"Oferecer ideias sólidas em qualquer assunto pode ser um ponto forte para você, quando chegar a um termo comum seria um desastre. Além disso, sua habilidade de articular um posição é bem recebida a qualquer hora num ambiente de trabalho. O perigo é que tal comportamento pode levara hostilidade quando utilizado excessivamente num ambiente de equipe."],
    [0,"",0,""],
    [0,"",0,""],
    [0,"",0,""],
    [0,"",0,""],
    [0,"",0,""]
  ];
  void initState() {

  setState(() {
    setState(() {
      _seriesData = List<charts.Series<Resultados, String>>();
      _seriesPieData = List<charts.Series<Task, String>>();
      _seriesLineData = List<charts.Series<Sales, int>>();
    });
    _achaAdjetivos();
    _nroDISC =
    ((widget._valD * 1000) + (widget._valI * 100) + (widget._valS * 10) +
        (widget._valC));
    _totDISC = (widget._valD + widget._valI + widget._valS + widget._valC);
    _calcperD = ((widget._valD / _totDISC) * 100).round();
    _calcperI = ((widget._valI / _totDISC) * 100).round();
    _calcperS = ((widget._valS / _totDISC) * 100).round();
    _calcperC = ((widget._valC / _totDISC) * 100).round();
  });

  _carregatab();
  _generateData();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 4,
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
                Tab(icon: Icon(FontAwesomeIcons.sort),),
                Tab(icon: Icon(FontAwesomeIcons.chartPie),),
                Tab(icon: Icon(FontAwesomeIcons.file)),
                Tab(icon: Icon(FontAwesomeIcons.chartLine)),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Padding(
                padding: EdgeInsets.all(2.0),
                child: Container(
                  child: Center(
                    child: Column(
                      children: <Widget>[
                        Text(_nroDISC.toString(), style: TextStyle(
                            fontSize: 30.0, fontWeight: FontWeight.bold),),
                        SizedBox(
                          height: 10,
                        ),
                        Text(_titulo, style: TextStyle(
                            fontSize: 18.0, fontWeight: FontWeight.bold),),
                      ],

                  )
                  )
                )
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Container(
                  child: Center(
                    child: Column(
                      children: <Widget>[
                        Text(_titulo, style: TextStyle(
                            fontSize: 16.0, fontWeight: FontWeight.bold),),
                        SizedBox(height: 10.0,),
                        Expanded(
                          child: charts.PieChart(
                              _seriesPieData,
                            animate: true,
                             animationDuration: Duration(seconds: 2),
                              behaviors: [
                                new charts.DatumLegend(
                                  outsideJustification: charts
                                      .OutsideJustification.start,
                                  horizontalFirst: false,
                                  desiredMaxRows: 2,
                                  cellPadding: new EdgeInsets.only(
                                      right: 1.0, bottom: 1.0),
                                  entryTextStyle: charts.TextStyleSpec(
                                      color: charts.MaterialPalette.purple
                                          .shadeDefault,
                                      fontFamily: 'Georgia',
                                      fontSize: 10),
                                )
                              ],
                              defaultRenderer: new charts.ArcRendererConfig(
                                  arcWidth: 120,
                                  arcRendererDecorators: [
                                    new charts.ArcLabelDecorator(
                                        labelPosition: charts.ArcLabelPosition
                                            .auto)
                                  ])),
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
                                Navigator.push(context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            ResultadoDisc(widget._codAluno,widget._valD,widget._valI,widget._valS,widget._valC,widget._valDantes,widget._valIantes,widget._valSantes,widget._valCantes)));
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
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),

                child: Container(

                    child: ListView(
                      children: <Widget>[
                        SizedBox(
                            height: 40,
                            child: Text(_nroDISC.toString(),
                                textAlign: TextAlign.center,
                                style:
                                TextStyle(
                                    fontSize: 30.0, fontWeight: FontWeight.bold))
                        ),
                        SizedBox(
                            height: 25,
                            child: Text(_titulo,
                                textAlign: TextAlign.center,
                                style:
                                TextStyle(
                                    fontSize: 15.0, fontWeight: FontWeight.bold))
                        ),
                        SizedBox(
                          child:SingleChildScrollView(
                              scrollDirection: Axis.vertical,
                              child: Row(
                              children: <Widget>[
                              Column(
                              children: <Widget>[
                                    Container(
                                      height: 4,

                                    ),
                                    Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                 children: <Widget>[
                                   Container(
                                     width: 100,
                                     height: 70,
                                       alignment: Alignment.center,
                                       decoration: BoxDecoration(
                                         color: Colors.yellow,
                                         borderRadius: BorderRadius.all(
                                           Radius.circular(5),
                                         ),
                                       ),
                                     child: Text("Emoções:",
                                       textAlign: TextAlign.center,
                                       style:
                                       TextStyle(
                                         fontSize: 15.0, fontWeight: FontWeight.bold))
                                   ),
                                   Container(width: 10),
                                   Container(
                                       width: 230,
                                       height: 70,
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(color: Colors.yellow,borderRadius: BorderRadius.all(
                                          Radius.circular(5),
                                        )),
                                       child: Text(_emocoes,
                                           textAlign: TextAlign.center,
                                           style:
                                           TextStyle(
                                               fontSize: 12.0, fontWeight: FontWeight.bold))
                                   )
                                 ],

                               ),
                                    Container(
                                      height: 4,
                                      decoration: BoxDecoration(
                                        color: Colors.black),
                                    ),
                                    Row(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Container(
                                            width: 100,
                                            height: 70,
                                            decoration: BoxDecoration(color: Colors.orangeAccent,borderRadius: BorderRadius.all(
                                              Radius.circular(5),
                                            )),
                                            child: Text("Objetivos:",
                                                textAlign: TextAlign.center,
                                                style:
                                                TextStyle(
                                                    fontSize: 12.0, fontWeight: FontWeight.bold))
                                        ),
                                        Container(width: 10),
                                        Container(
                                            width: 230,
                                            height: 70,
                                            decoration: BoxDecoration(color: Colors.orangeAccent,borderRadius: BorderRadius.all(
                                              Radius.circular(5),
                                            )),
                                            child: Text(_objetivo,
                                                textAlign: TextAlign.center,
                                                style:
                                                TextStyle(
                                                    fontSize: 12.0, fontWeight: FontWeight.bold))
                                        )
                                      ],

                                    ),
                                    Container(
                                      height: 4,
                                      decoration: BoxDecoration(
                                          color: Colors.black),
                                    ),
                                    Row(crossAxisAlignment: CrossAxisAlignment.center,
                                      children: <Widget>[
                                        Container(
                                            width: 100,
                                            height: 70,
                                            decoration: BoxDecoration(color: Colors.orange,borderRadius: BorderRadius.all(
                                              Radius.circular(5),
                                            )),
                                            child: Text("Julga os Outros por:",
                                                textAlign: TextAlign.center,
                                                style:
                                                TextStyle(
                                                    fontSize: 12.0, fontWeight: FontWeight.bold))
                                        ),
                                        Container(width: 10),
                                        Container(
                                            width: 230,
                                            height: 70,
                                            decoration: BoxDecoration(color: Colors.orange,borderRadius: BorderRadius.all(
                                              Radius.circular(5),
                                            )),
                                            child: Text(_julga,
                                                textAlign: TextAlign.center,
                                                style:
                                                TextStyle(
                                                    fontSize: 12.0, fontWeight: FontWeight.bold))
                                        )
                                      ],

                                    ),
                                    Container(
                                      height: 4,
                                      decoration: BoxDecoration(
                                          color: Colors.black),
                                    ),
                                    Row(crossAxisAlignment: CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Container(
                                            width: 100,
                                            height: 70,
                                            decoration: BoxDecoration(color: Colors.red,borderRadius: BorderRadius.all(
                                              Radius.circular(5),
                                            )),
                                            child: Text("Influencia os outros por:",
                                                textAlign: TextAlign.center,
                                                style:
                                                TextStyle(
                                                    fontSize: 12.0, fontWeight: FontWeight.bold))
                                        ),
                                        Container(width: 10),
                                        Container(
                                            width: 230,
                                            height: 70,
                                            decoration: BoxDecoration(color: Colors.red,borderRadius: BorderRadius.all(
                                              Radius.circular(5),
                                            )),
                                            child: Text(_influencia,
                                                textAlign: TextAlign.center,
                                                style:
                                                TextStyle(
                                                    fontSize: 12.0, fontWeight: FontWeight.bold))
                                        )
                                      ],

                                    ),
                                    Container(
                                      height: 4,
                                      decoration: BoxDecoration(
                                          color: Colors.black),
                                    ),
                                    Row(crossAxisAlignment: CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Container(
                                            width: 100,
                                            height: 70,

                                            decoration: BoxDecoration(color: Colors.redAccent,borderRadius: BorderRadius.all(
                                              Radius.circular(5),
                                            )),
                                            child: Text("Valor para a Organização:",
                                                textAlign: TextAlign.center,
                                                style:
                                                TextStyle(
                                                    fontSize: 12.0, fontWeight: FontWeight.bold))
                                        ),
                                        Container(width: 10),
                                        Container(
                                            width: 230,
                                            height: 70,
                                            decoration: BoxDecoration(color: Colors.redAccent,borderRadius: BorderRadius.all(
                                              Radius.circular(5),
                                            )),
                                            child: Text(_valor,
                                                textAlign: TextAlign.center,
                                                style:
                                                TextStyle(
                                                    fontSize: 12.0, fontWeight: FontWeight.bold))
                                        )
                                      ],

                                    ),
                                    Container(
                                      height: 4,
                                      decoration: BoxDecoration(
                                          color: Colors.black),
                                    ),
                                    Row(crossAxisAlignment: CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Container(
                                            width: 100,
                                            height: 70,
                                            decoration: BoxDecoration(color: Colors.purpleAccent,borderRadius: BorderRadius.all(
                                              Radius.circular(5),
                                            )),
                                            child: Text("Ecessos:",
                                                textAlign: TextAlign.center,
                                                style:
                                                TextStyle(
                                                    fontSize: 12.0, fontWeight: FontWeight.bold))
                                        ),
                                        Container(width: 10),
                                        Container(
                                            width: 230,
                                            height: 70,
                                            decoration: BoxDecoration(color: Colors.purpleAccent,borderRadius: BorderRadius.all(
                                              Radius.circular(5),
                                            )),
                                            child: Text(_excessos,
                                                textAlign: TextAlign.center,
                                                style:
                                                TextStyle(
                                                    fontSize: 12.0, fontWeight: FontWeight.bold))
                                        )
                                      ],

                                    ),
                                    Container(
                                      height: 4,
                                      decoration: BoxDecoration(
                                          color: Colors.black),
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Container(
                                            width: 100,
                                            height: 100,
                                            decoration: BoxDecoration(color: Colors.cyan,borderRadius: BorderRadius.all(
                                              Radius.circular(5),
                                            )),
                                            child: Text("Sobre Pressão:",
                                                textAlign: TextAlign.center,
                                                style:
                                                TextStyle(
                                                    fontSize: 12.0, fontWeight: FontWeight.bold))
                                        ),
                                        Container(width: 10),
                                        Container(
                                            width: 230,
                                            height: 100,
                                            decoration: BoxDecoration(color: Colors.cyan,borderRadius: BorderRadius.all(
                                              Radius.circular(5),
                                            )),
                                            child: Text(_pressao,
                                                textAlign: TextAlign.center,
                                                style:
                                                TextStyle(
                                                    fontSize: 12.0, fontWeight: FontWeight.bold))
                                        )
                                      ],

                                    ),
                                    Container(
                                      height: 4,
                                      decoration: BoxDecoration(
                                          color: Colors.black),
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Container(
                                            width: 100,
                                            height: 100,
                                            decoration: BoxDecoration(color: Colors.lightBlueAccent,borderRadius: BorderRadius.all(
                                              Radius.circular(5),
                                            )),
                                            child: Text("Medos",
                                                textAlign: TextAlign.center,
                                                style:
                                                TextStyle(
                                                    fontSize: 12.0, fontWeight: FontWeight.bold))
                                        ),
                                        Container(width: 10),
                                        Container(
                                            width: 230,
                                            height:100,
                                            decoration: BoxDecoration(color: Colors.lightBlueAccent,borderRadius: BorderRadius.all(
                                              Radius.circular(5),
                                            )),
                                            child: Text(_medos,
                                                textAlign: TextAlign.center,
                                                style:
                                                TextStyle(
                                                    fontSize: 12.0, fontWeight: FontWeight.bold))
                                        )
                                      ],

                                    ),
                                    Container(
                                      height: 4,
                                      decoration: BoxDecoration(
                                          color: Colors.black),
                                    ),
                                    Row(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Container(
                                            padding: (EdgeInsets.all(0.0)),
                                            height: 200,
                                            width: 100,
                                            alignment: Alignment(-1.0 ,-1.0),
                                            decoration: BoxDecoration(color: Colors.indigoAccent,borderRadius: BorderRadius.all(
                                              Radius.circular(5),
                                            )

                                            ),
                                            child: Text("Aumentaria sua eficácia se:",
                                                textAlign: TextAlign.center,
                                                style:
                                                TextStyle(
                                                    fontSize: 12.0, fontWeight: FontWeight.bold))
                                        ),
                                        Container(width: 10),
                                        Container(
                                            width: 230,
                                            decoration: BoxDecoration(color: Colors.indigoAccent,borderRadius: BorderRadius.all(
                                              Radius.circular(5),
                                            )),
                                            child: Text(_aumentaria,
                                                textAlign: TextAlign.center,
                                                style:
                                                TextStyle(
                                                    fontSize: 12.0, fontWeight: FontWeight.bold))
                                        )
                                      ],

                                    ),
                                    ])]
                              )
                          ),
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
                                Navigator.push(context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            ResultadoDisc(widget._codAluno,widget._valD,widget._valI,widget._valS,widget._valC,widget._valDantes,widget._valIantes,widget._valSantes,widget._valCantes)));
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
              Padding(
                padding: EdgeInsets.all(8.0),

                child: Container(

                    child: ListView(
                      children: <Widget>[
                        SizedBox(
                          child:SingleChildScrollView(
                              scrollDirection: Axis.vertical,
                              child: Row(
                                  children: <Widget>[

                                    //
                                    //  coluna de espacejamento da lateral esquerda da tela
                                    //
                                    Column(
                                        children: <Widget>[
                                          /*



                                          Dimensao D


                                           */
                                          Container(
                                              width: 300,
                                              height: 70,
                                              alignment: Alignment.center,
                                              decoration: BoxDecoration(
                                                color: Colors.green,
                                                borderRadius: BorderRadius.all(
                                                  Radius.circular(5),
                                                ),
                                              ),
                                              child: Text("Seu índice de Intensidade,  Dimensão DOMINÂNCIA",
                                                  textAlign: TextAlign.center,
                                                  style:
                                                  TextStyle(
                                                      fontSize: 12.0, fontWeight: FontWeight.bold))
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Container(
                                              width: 300,
                                              alignment: Alignment.center,
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius: BorderRadius.all(
                                                  Radius.circular(5),
                                                ),
                                              ),
                                              child: Text("As pessoas que obtiveram uma pontuação na Dimensão D podem ser geralmente representadas pelos adjetivos que seguem. Escolha os adjetivos que você considera seus pontos fortes e destaque as possíveis áreas de desafio.",
                                                  textAlign: TextAlign.center,
                                                  style:
                                                  TextStyle(
                                                      fontSize: 12.0, fontWeight: FontWeight.bold))
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Container(
                                            height: 4,

                                          ),
                                          Row(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Container(
                                                  width: 100,
                                                  height: 70,
                                                  alignment: Alignment.center,
                                                  decoration: BoxDecoration(
                                                    color: Colors.yellow,
                                                    borderRadius: BorderRadius.all(
                                                      Radius.circular(5),
                                                    ),
                                                  ),
                                                  child: Text(_adjetivoD[_intescolhaD-3][1],
                                                      textAlign: TextAlign.center,
                                                      style:
                                                      TextStyle(
                                                          fontSize: 12.0, fontWeight: FontWeight.bold))
                                              ),
                                              Container(width: 10),
                                              Container(
                                                  width: 230,padding: EdgeInsets.only(top: 10, bottom: 10),

                                                  alignment: Alignment.center,
                                                  decoration: BoxDecoration(color: Colors.yellow,borderRadius: BorderRadius.all(
                                                    Radius.circular(5),
                                                  )),
                                                  child: Text(_adjetivoD[_intescolhaD-3][3],
                                                      textAlign: TextAlign.center,
                                                      style:
                                                      TextStyle(
                                                          fontSize: 12.0, fontWeight: FontWeight.bold))
                                              )
                                            ],

                                          ),
                                          Container(
                                            height: 4,
                                            decoration: BoxDecoration(
                                                color: Colors.black),
                                          ),
                                          Row(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Container(
                                                  width: 100,
                                                  height: 70,
                                                  alignment: Alignment.center,
                                                  decoration: BoxDecoration(
                                                    color: Colors.yellow,
                                                    borderRadius: BorderRadius.all(
                                                      Radius.circular(5),
                                                    ),
                                                  ),
                                                  child: Text(_adjetivoD[_intescolhaD-2][1],
                                                      textAlign: TextAlign.center,
                                                      style:
                                                      TextStyle(
                                                          fontSize: 12.0, fontWeight: FontWeight.bold))
                                              ),
                                              Container(width: 10),
                                              Container(
                                                  width: 230,padding: EdgeInsets.only(top: 10, bottom: 10),

                                                  alignment: Alignment.center,
                                                  decoration: BoxDecoration(color: Colors.yellow,borderRadius: BorderRadius.all(
                                                    Radius.circular(5),
                                                  )),
                                                  child: Text(_adjetivoD[_intescolhaD-2][3],
                                                      textAlign: TextAlign.center,
                                                      style:
                                                      TextStyle(
                                                          fontSize: 12.0, fontWeight: FontWeight.bold))
                                              )
                                            ],

                                          ),
                                          Container(
                                            height: 4,
                                            decoration: BoxDecoration(
                                                color: Colors.black),
                                          ),
                                          Row(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Container(
                                                  width: 100,
                                                  height: 70,
                                                  alignment: Alignment.center,
                                                  decoration: BoxDecoration(
                                                    color: Colors.yellow,
                                                    borderRadius: BorderRadius.all(
                                                      Radius.circular(5),
                                                    ),
                                                  ),
                                                  child: Text(_adjetivoD[_intescolhaD-1][1],
                                                      textAlign: TextAlign.center,
                                                      style:
                                                      TextStyle(
                                                          fontSize: 12.0, fontWeight: FontWeight.bold))
                                              ),
                                              Container(width: 10),
                                              Container(
                                                  width: 230,padding: EdgeInsets.only(top: 10, bottom: 10),

                                                  alignment: Alignment.center,
                                                  decoration: BoxDecoration(color: Colors.yellow,borderRadius: BorderRadius.all(
                                                    Radius.circular(5),
                                                  )),
                                                  child: Text(_adjetivoD[_intescolhaD-1][3],
                                                      textAlign: TextAlign.center,
                                                      style:
                                                      TextStyle(
                                                          fontSize: 12.0, fontWeight: FontWeight.bold))
                                              )
                                            ],

                                          ),
                                          Container(
                                            height: 4,
                                            decoration: BoxDecoration(
                                                color: Colors.black),
                                          ),
                                          Row(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Container(
                                                  width: 100,
                                                  height: 70,
                                                  alignment: Alignment.center,
                                                  decoration: BoxDecoration(
                                                    color: Colors.yellow,
                                                    borderRadius: BorderRadius.all(
                                                      Radius.circular(5),
                                                    ),
                                                  ),
                                                  child: Text(_adjetivoD[_intescolhaD][1],
                                                      textAlign: TextAlign.center,
                                                      style:
                                                      TextStyle(
                                                          fontSize: 12.0, fontWeight: FontWeight.bold))
                                              ),
                                              Container(width: 10),
                                              Container(
                                                  width: 230,padding: EdgeInsets.only(top: 10, bottom: 10),

                                                  alignment: Alignment.center,
                                                  decoration: BoxDecoration(color: Colors.yellow,borderRadius: BorderRadius.all(
                                                    Radius.circular(5),
                                                  )),
                                                  child: Text(_adjetivoD[_intescolhaD][3],
                                                      textAlign: TextAlign.center,
                                                      style:
                                                      TextStyle(
                                                          fontSize: 12.0, fontWeight: FontWeight.bold))
                                              )
                                            ],

                                          ),
                                          Container(
                                            height: 4,
                                            decoration: BoxDecoration(
                                                color: Colors.black),
                                          ),
                                          Row(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Container(
                                                  width: 100,
                                                  height: 70,
                                                  alignment: Alignment.center,
                                                  decoration: BoxDecoration(
                                                    color: Colors.yellow,
                                                    borderRadius: BorderRadius.all(
                                                      Radius.circular(5),
                                                    ),
                                                  ),
                                                  child: Text(_adjetivoD[_intescolhaD+1][1],
                                                      textAlign: TextAlign.center,
                                                      style:
                                                      TextStyle(
                                                          fontSize: 12.0, fontWeight: FontWeight.bold))
                                              ),
                                              Container(width: 10),
                                              Container(
                                                  width: 230,padding: EdgeInsets.only(top: 10, bottom: 10),

                                                  alignment: Alignment.center,
                                                  decoration: BoxDecoration(color: Colors.yellow,borderRadius: BorderRadius.all(
                                                    Radius.circular(5),
                                                  )),
                                                  child: Text(_adjetivoD[_intescolhaD+1][3],
                                                      textAlign: TextAlign.center,
                                                      style:
                                                      TextStyle(
                                                          fontSize: 12.0, fontWeight: FontWeight.bold))
                                              )
                                            ],

                                          ),
                                          Container(
                                            height: 4,
                                            decoration: BoxDecoration(
                                                color: Colors.black),
                                          ),
                                          Row(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Container(
                                                  width: 100,
                                                  height: 70,
                                                  alignment: Alignment.center,
                                                  decoration: BoxDecoration(
                                                    color: Colors.yellow,
                                                    borderRadius: BorderRadius.all(
                                                      Radius.circular(5),
                                                    ),
                                                  ),
                                                  child: Text(_adjetivoD[_intescolhaD+2][1],
                                                      textAlign: TextAlign.center,
                                                      style:
                                                      TextStyle(
                                                          fontSize: 12.0, fontWeight: FontWeight.bold))
                                              ),
                                              Container(width: 10),
                                              Container(
                                                  width: 230,padding: EdgeInsets.only(top: 10, bottom: 10),

                                                  alignment: Alignment.center,
                                                  decoration: BoxDecoration(color: Colors.yellow,borderRadius: BorderRadius.all(
                                                    Radius.circular(5),
                                                  )),
                                                  child: Text(_adjetivoD[_intescolhaD+2][3],
                                                      textAlign: TextAlign.center,
                                                      style:
                                                      TextStyle(
                                                          fontSize: 12.0, fontWeight: FontWeight.bold))
                                              )
                                            ],

                                          ),
                                          Container(
                                            height: 4,
                                            decoration: BoxDecoration(
                                                color: Colors.black),
                                          ),
                                          Row(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Container(
                                                  width: 100,
                                                  height: 70,
                                                  alignment: Alignment.center,
                                                  decoration: BoxDecoration(
                                                    color: Colors.yellow,
                                                    borderRadius: BorderRadius.all(
                                                      Radius.circular(5),
                                                    ),
                                                  ),
                                                  child: Text(_adjetivoD[_intescolhaD+3][1],
                                                      textAlign: TextAlign.center,
                                                      style:
                                                      TextStyle(
                                                          fontSize: 12.0, fontWeight: FontWeight.bold))
                                              ),
                                              Container(width: 10),
                                              Container(
                                                  width: 230,padding: EdgeInsets.only(top: 10, bottom: 10),

                                                  alignment: Alignment.center,
                                                  decoration: BoxDecoration(color: Colors.yellow,borderRadius: BorderRadius.all(
                                                    Radius.circular(5),
                                                  )),
                                                  child: Text(_adjetivoD[_intescolhaD+3][3],
                                                      textAlign: TextAlign.center,
                                                      style:
                                                      TextStyle(
                                                          fontSize: 12.0, fontWeight: FontWeight.bold))
                                              )
                                            ],

                                          ),
                                          Container(
                                            height: 34,
                                            decoration: BoxDecoration(
                                                color: Colors.black),
                                          ),

                            /*
                            Dimensao I


                            */
                            Container(
                            width: 300,
                            height: 70,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: Colors.deepOrange,
                              borderRadius: BorderRadius.all(
                                Radius.circular(5),
                              ),
                            ),
                            child: Text("Seu índice de Intensidade,  Dimensão INFLUÊNCIA",
                                textAlign: TextAlign.center,
                                style:
                                TextStyle(
                                    fontSize: 12.0, fontWeight: FontWeight.bold))
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                            width: 300,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(
                                Radius.circular(5),
                              ),
                            ),
                            child: Text("As pessoas que obtiveram uma pontuação na Dimensão INFLUÊNCIA podem ser geralmente representadas pelos adjetivos que seguem. Escolha os adjetivos que você considera seus pontos fortes e destaque as possíveis áreas de desafio.",
                                textAlign: TextAlign.center,
                                style:
                                TextStyle(
                                    fontSize: 12.0, fontWeight: FontWeight.bold))
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 4,

                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                                width: 100,
                                height: 70,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  color: Colors.orange,
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(5),
                                  ),
                                ),
                                child: Text(_adjetivoI[_intescolhaI-3][1],
                                    textAlign: TextAlign.center,
                                    style:
                                    TextStyle(
                                        fontSize: 12.0, fontWeight: FontWeight.bold))
                            ),
                            Container(width: 10),
                            Container(
                                width: 230,padding: EdgeInsets.only(top: 10, bottom: 10),

                                alignment: Alignment.center,
                                decoration: BoxDecoration(color: Colors.orange,borderRadius: BorderRadius.all(
                                  Radius.circular(5),
                                )),
                                child: Text(_adjetivoI[_intescolhaI-3][3],
                                    textAlign: TextAlign.center,
                                    style:
                                    TextStyle(
                                        fontSize: 12.0, fontWeight: FontWeight.bold))
                            )
                          ],

                        ),
                        Container(
                          height: 4,
                          decoration: BoxDecoration(
                              color: Colors.black),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                                width: 100,
                                height: 70,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  color: Colors.orange,
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(5),
                                  ),
                                ),
                                child: Text(_adjetivoI[_intescolhaI-2][1],
                                    textAlign: TextAlign.center,
                                    style:
                                    TextStyle(
                                        fontSize: 12.0, fontWeight: FontWeight.bold))
                            ),
                            Container(width: 10),
                            Container(
                                width: 230,padding: EdgeInsets.only(top: 10, bottom: 10),

                                alignment: Alignment.center,
                                decoration: BoxDecoration(color: Colors.orange,borderRadius: BorderRadius.all(
                                  Radius.circular(5),
                                )),
                                child: Text(_adjetivoI[_intescolhaI-2][3],
                                    textAlign: TextAlign.center,
                                    style:
                                    TextStyle(
                                        fontSize: 12.0, fontWeight: FontWeight.bold))
                            )
                          ],

                        ),
                        Container(
                          height: 4,
                          decoration: BoxDecoration(
                              color: Colors.black),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                                width: 100,
                                height: 70,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  color: Colors.orange,
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(5),
                                  ),
                                ),
                                child: Text(_adjetivoI[_intescolhaI-1][1],
                                    textAlign: TextAlign.center,
                                    style:
                                    TextStyle(
                                        fontSize: 12.0, fontWeight: FontWeight.bold))
                            ),
                            Container(width: 10),
                            Container(
                                width: 230,padding: EdgeInsets.only(top: 10, bottom: 10),

                                alignment: Alignment.center,
                                decoration: BoxDecoration(color: Colors.orange,borderRadius: BorderRadius.all(
                                  Radius.circular(5),
                                )),
                                child: Text(_adjetivoI[_intescolhaI-1][3],
                                    textAlign: TextAlign.center,
                                    style:
                                    TextStyle(
                                        fontSize: 12.0, fontWeight: FontWeight.bold))
                            )
                          ],

                        ),
                        Container(
                          height: 4,
                          decoration: BoxDecoration(
                              color: Colors.black),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                                width: 100,
                                height: 70,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  color: Colors.orange,
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(5),
                                  ),
                                ),
                                child: Text(_adjetivoI[_intescolhaI][1],
                                    textAlign: TextAlign.center,
                                    style:
                                    TextStyle(
                                        fontSize: 12.0, fontWeight: FontWeight.bold))
                            ),
                            Container(width: 10),
                            Container(
                                width: 230,padding: EdgeInsets.only(top: 10, bottom: 10),

                                alignment: Alignment.center,
                                decoration: BoxDecoration(color: Colors.orange,borderRadius: BorderRadius.all(
                                  Radius.circular(5),
                                )),
                                child: Text(_adjetivoI[_intescolhaI][3],
                                    textAlign: TextAlign.center,
                                    style:
                                    TextStyle(
                                        fontSize: 12.0, fontWeight: FontWeight.bold))
                            )
                          ],

                        ),
                        Container(
                          height: 4,
                          decoration: BoxDecoration(
                              color: Colors.black),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                                width: 100,
                                height: 70,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  color: Colors.orange,
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(5),
                                  ),
                                ),
                                child: Text(_adjetivoI[_intescolhaI+1][1],
                                    textAlign: TextAlign.center,
                                    style:
                                    TextStyle(
                                        fontSize: 12.0, fontWeight: FontWeight.bold))
                            ),
                            Container(width: 10),
                            Container(
                                width: 230,padding: EdgeInsets.only(top: 10, bottom: 10),

                                alignment: Alignment.center,
                                decoration: BoxDecoration(color: Colors.orange,borderRadius: BorderRadius.all(
                                  Radius.circular(5),
                                )),
                                child: Text(_adjetivoI[_intescolhaI+1][3],
                                    textAlign: TextAlign.center,
                                    style:
                                    TextStyle(
                                        fontSize: 12.0, fontWeight: FontWeight.bold))
                            )
                          ],

                        ),
                        Container(
                          height: 4,
                          decoration: BoxDecoration(
                              color: Colors.black),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                                width: 100,
                                height: 70,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  color: Colors.orange,
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(5),
                                  ),
                                ),
                                child: Text(_adjetivoI[_intescolhaI+2][1],
                                    textAlign: TextAlign.center,
                                    style:
                                    TextStyle(
                                        fontSize: 12.0, fontWeight: FontWeight.bold))
                            ),
                            Container(width: 10),
                            Container(
                                width: 230,padding: EdgeInsets.only(top: 10, bottom: 10),

                                alignment: Alignment.center,
                                decoration: BoxDecoration(color: Colors.orange,borderRadius: BorderRadius.all(
                                  Radius.circular(5),
                                )),
                                child: Text(_adjetivoI[_intescolhaI+2][3],
                                    textAlign: TextAlign.center,
                                    style:
                                    TextStyle(
                                        fontSize: 12.0, fontWeight: FontWeight.bold))
                            )
                          ],

                        ),
                        Container(
                          height: 4,
                          decoration: BoxDecoration(
                              color: Colors.black),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                                width: 100,
                                height: 70,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  color: Colors.orange,
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(5),
                                  ),
                                ),
                                child: Text(_adjetivoI[_intescolhaI+3][1],
                                    textAlign: TextAlign.center,
                                    style:
                                    TextStyle(
                                        fontSize: 12.0, fontWeight: FontWeight.bold))
                            ),
                            Container(width: 10),
                            Container(
                                width: 230,padding: EdgeInsets.only(top: 10, bottom: 10),

                                alignment: Alignment.center,
                                decoration: BoxDecoration(color: Colors.orange,borderRadius: BorderRadius.all(
                                  Radius.circular(5),
                                )),
                                child: Text(_adjetivoI[_intescolhaI+3][3],
                                    textAlign: TextAlign.center,
                                    style:
                                    TextStyle(
                                        fontSize: 12.0, fontWeight: FontWeight.bold))
                            )
                          ],

                        ),
                        Container(
                          height: 34,
                          decoration: BoxDecoration(
                              color: Colors.black),
                        ),



                                          /*
                            Dimensao s


                            */
                                          Container(
                                              width: 300,
                                              height: 70,
                                              alignment: Alignment.center,
                                              decoration: BoxDecoration(
                                                color: Colors.indigo,
                                                borderRadius: BorderRadius.all(
                                                  Radius.circular(5),
                                                ),
                                              ),
                                              child: Text("Seu índice de Intensidade,  Dimensão ESTABILIDADE",
                                                  textAlign: TextAlign.center,
                                                  style:
                                                  TextStyle(
                                                      fontSize: 12.0, fontWeight: FontWeight.bold))
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Container(
                                              width: 300,
                                              alignment: Alignment.center,
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius: BorderRadius.all(
                                                  Radius.circular(5),
                                                ),
                                              ),
                                              child: Text("As pessoas que obtiveram uma pontuação na Dimensão ESTABILIDADE podem ser geralmente representadas pelos adjetivos que seguem. Escolha os adjetivos que você considera seus pontos fortes e destaque as possíveis áreas de desafio.",
                                                  textAlign: TextAlign.center,
                                                  style:
                                                  TextStyle(
                                                      fontSize: 12.0, fontWeight: FontWeight.bold))
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Container(
                                            height: 4,

                                          ),
                                          Row(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Container(
                                                  width: 100,
                                                  height: 70,
                                                  alignment: Alignment.center,
                                                  decoration: BoxDecoration(
                                                    color: Colors.lightBlueAccent,
                                                    borderRadius: BorderRadius.all(
                                                      Radius.circular(5),
                                                    ),
                                                  ),
                                                  child: Text(_adjetivoS[_intescolhaS-3][1],
                                                      textAlign: TextAlign.center,
                                                      style:
                                                      TextStyle(
                                                          fontSize: 12.0, fontWeight: FontWeight.bold))
                                              ),
                                              Container(width: 10),
                                              Container(
                                                  width: 230,padding: EdgeInsets.only(top: 10, bottom: 10),

                                                  alignment: Alignment.center,
                                                  decoration: BoxDecoration(color: Colors.lightBlueAccent,borderRadius: BorderRadius.all(
                                                    Radius.circular(5),
                                                  )),
                                                  child: Text(_adjetivoS[_intescolhaS-3][3],
                                                      textAlign: TextAlign.center,
                                                      style:
                                                      TextStyle(
                                                          fontSize: 12.0, fontWeight: FontWeight.bold))
                                              )
                                            ],

                                          ),
                                          Container(
                                            height: 4,
                                            decoration: BoxDecoration(
                                                color: Colors.black),
                                          ),
                                          Row(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Container(
                                                  width: 100,
                                                  height: 70,
                                                  alignment: Alignment.center,
                                                  decoration: BoxDecoration(
                                                    color: Colors.lightBlueAccent,
                                                    borderRadius: BorderRadius.all(
                                                      Radius.circular(5),
                                                    ),
                                                  ),
                                                  child: Text(_adjetivoS[_intescolhaS-2][1],
                                                      textAlign: TextAlign.center,
                                                      style:
                                                      TextStyle(
                                                          fontSize: 12.0, fontWeight: FontWeight.bold))
                                              ),
                                              Container(width: 10),
                                              Container(
                                                  width: 230,padding: EdgeInsets.only(top: 10, bottom: 10),

                                                  alignment: Alignment.center,
                                                  decoration: BoxDecoration(color: Colors.lightBlueAccent,borderRadius: BorderRadius.all(
                                                    Radius.circular(5),
                                                  )),
                                                  child: Text(_adjetivoS[_intescolhaS-2][3],
                                                      textAlign: TextAlign.center,
                                                      style:
                                                      TextStyle(
                                                          fontSize: 12.0, fontWeight: FontWeight.bold))
                                              )
                                            ],

                                          ),
                                          Container(
                                            height: 4,
                                            decoration: BoxDecoration(
                                                color: Colors.black),
                                          ),
                                          Row(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Container(
                                                  width: 100,
                                                  height: 70,
                                                  alignment: Alignment.center,
                                                  decoration: BoxDecoration(
                                                    color: Colors.lightBlueAccent,
                                                    borderRadius: BorderRadius.all(
                                                      Radius.circular(5),
                                                    ),
                                                  ),
                                                  child: Text(_adjetivoS[_intescolhaS-1][1],
                                                      textAlign: TextAlign.center,
                                                      style:
                                                      TextStyle(
                                                          fontSize: 12.0, fontWeight: FontWeight.bold))
                                              ),
                                              Container(width: 10),
                                              Container(
                                                  width: 230,padding: EdgeInsets.only(top: 10, bottom: 10),

                                                  alignment: Alignment.center,
                                                  decoration: BoxDecoration(color: Colors.lightBlueAccent,borderRadius: BorderRadius.all(
                                                    Radius.circular(5),
                                                  )),
                                                  child: Text(_adjetivoS[_intescolhaS-1][3],
                                                      textAlign: TextAlign.center,
                                                      style:
                                                      TextStyle(
                                                          fontSize: 12.0, fontWeight: FontWeight.bold))
                                              )
                                            ],

                                          ),
                                          Container(
                                            height: 4,
                                            decoration: BoxDecoration(
                                                color: Colors.black),
                                          ),
                                          Row(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Container(
                                                  width: 100,
                                                  height: 70,
                                                  alignment: Alignment.center,
                                                  decoration: BoxDecoration(
                                                    color: Colors.lightBlueAccent,
                                                    borderRadius: BorderRadius.all(
                                                      Radius.circular(5),
                                                    ),
                                                  ),
                                                  child: Text(_adjetivoS[_intescolhaS][1],
                                                      textAlign: TextAlign.center,
                                                      style:
                                                      TextStyle(
                                                          fontSize: 12.0, fontWeight: FontWeight.bold))
                                              ),
                                              Container(width: 10),
                                              Container(
                                                  width: 230,padding: EdgeInsets.only(top: 10, bottom: 10),

                                                  alignment: Alignment.center,
                                                  decoration: BoxDecoration(color: Colors.lightBlueAccent,borderRadius: BorderRadius.all(
                                                    Radius.circular(5),
                                                  )),
                                                  child: Text(_adjetivoS[_intescolhaS][3],
                                                      textAlign: TextAlign.center,
                                                      style:
                                                      TextStyle(
                                                          fontSize: 12.0, fontWeight: FontWeight.bold))
                                              )
                                            ],

                                          ),
                                          Container(
                                            height: 4,
                                            decoration: BoxDecoration(
                                                color: Colors.black),
                                          ),
                                          Row(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Container(
                                                  width: 100,
                                                  height: 70,
                                                  alignment: Alignment.center,
                                                  decoration: BoxDecoration(
                                                    color: Colors.lightBlueAccent,
                                                    borderRadius: BorderRadius.all(
                                                      Radius.circular(5),
                                                    ),
                                                  ),
                                                  child: Text(_adjetivoS[_intescolhaS+1][1],
                                                      textAlign: TextAlign.center,
                                                      style:
                                                      TextStyle(
                                                          fontSize: 12.0, fontWeight: FontWeight.bold))
                                              ),
                                              Container(width: 10),
                                              Container(
                                                  width: 230,padding: EdgeInsets.only(top: 10, bottom: 10),

                                                  alignment: Alignment.center,
                                                  decoration: BoxDecoration(color: Colors.lightBlueAccent,borderRadius: BorderRadius.all(
                                                    Radius.circular(5),
                                                  )),
                                                  child: Text(_adjetivoS[_intescolhaS+1][3],
                                                      textAlign: TextAlign.center,
                                                      style:
                                                      TextStyle(
                                                          fontSize: 12.0, fontWeight: FontWeight.bold))
                                              )
                                            ],

                                          ),
                                          Container(
                                            height: 4,
                                            decoration: BoxDecoration(
                                                color: Colors.black),
                                          ),
                                          Row(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Container(
                                                  width: 100,
                                                  height: 70,
                                                  alignment: Alignment.center,
                                                  decoration: BoxDecoration(
                                                    color: Colors.lightBlueAccent,
                                                    borderRadius: BorderRadius.all(
                                                      Radius.circular(5),
                                                    ),
                                                  ),
                                                  child: Text(_adjetivoS[_intescolhaS+2][1],
                                                      textAlign: TextAlign.center,
                                                      style:
                                                      TextStyle(
                                                          fontSize: 12.0, fontWeight: FontWeight.bold))
                                              ),
                                              Container(width: 10),
                                              Container(
                                                  width: 230,padding: EdgeInsets.only(top: 10, bottom: 10),

                                                  alignment: Alignment.center,
                                                  decoration: BoxDecoration(color: Colors.lightBlueAccent,borderRadius: BorderRadius.all(
                                                    Radius.circular(5),
                                                  )),
                                                  child: Text(_adjetivoS[_intescolhaS+2][3],
                                                      textAlign: TextAlign.center,
                                                      style:
                                                      TextStyle(
                                                          fontSize: 12.0, fontWeight: FontWeight.bold))
                                              )
                                            ],

                                          ),
                                          Container(
                                            height: 4,
                                            decoration: BoxDecoration(
                                                color: Colors.black),
                                          ),
                                          Row(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Container(
                                                  width: 100,
                                                  height: 70,
                                                  alignment: Alignment.center,
                                                  decoration: BoxDecoration(
                                                    color: Colors.lightBlueAccent,
                                                    borderRadius: BorderRadius.all(
                                                      Radius.circular(5),
                                                    ),
                                                  ),
                                                  child: Text(_adjetivoS[_intescolhaS+3][1],
                                                      textAlign: TextAlign.center,
                                                      style:
                                                      TextStyle(
                                                          fontSize: 12.0, fontWeight: FontWeight.bold))
                                              ),
                                              Container(width: 10),
                                              Container(
                                                  width: 230,padding: EdgeInsets.only(top: 10, bottom: 10),

                                                  alignment: Alignment.center,
                                                  decoration: BoxDecoration(color: Colors.lightBlueAccent,borderRadius: BorderRadius.all(
                                                    Radius.circular(5),
                                                  )),
                                                  child: Text(_adjetivoS[_intescolhaS+3][3],
                                                      textAlign: TextAlign.center,
                                                      style:
                                                      TextStyle(
                                                          fontSize: 12.0, fontWeight: FontWeight.bold))
                                              )
                                            ],

                                          ),
                                          Container(
                                            height: 34,
                                            decoration: BoxDecoration(
                                                color: Colors.black),
                                          ),


                                          /*
                            Dimensao C


                            */
                                          Container(
                                              width: 300,
                                              height: 70,
                                              alignment: Alignment.center,
                                              decoration: BoxDecoration(
                                                color: Colors.purpleAccent,
                                                borderRadius: BorderRadius.all(
                                                  Radius.circular(5),
                                                ),
                                              ),
                                              child: Text("Seu índice de Intensidade,  Dimensão CONFORMIDADE",
                                                  textAlign: TextAlign.center,
                                                  style:
                                                  TextStyle(
                                                      fontSize: 12.0, fontWeight: FontWeight.bold))
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Container(
                                              width: 300,
                                              alignment: Alignment.center,
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius: BorderRadius.all(
                                                  Radius.circular(5),
                                                ),
                                              ),
                                              child: Text("As pessoas que obtiveram uma pontuação na Dimensão CAUTELA podem ser geralmente representadas pelos adjetivos que seguem. Escolha os adjetivos que você considera seus pontos fortes e destaque as possíveis áreas de desafio.",
                                                  textAlign: TextAlign.center,
                                                  style:
                                                  TextStyle(
                                                      fontSize: 12.0, fontWeight: FontWeight.bold))
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Container(
                                            height: 4,

                                          ),
                                          Row(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Container(
                                                  width: 100,
                                                  height: 70,
                                                  alignment: Alignment.center,
                                                  decoration: BoxDecoration(
                                                    color: Colors.red,
                                                    borderRadius: BorderRadius.all(
                                                      Radius.circular(5),
                                                    ),
                                                  ),
                                                  child: Text(_adjetivoC[_intescolhaC-3][1],
                                                      textAlign: TextAlign.center,
                                                      style:
                                                      TextStyle(
                                                          fontSize: 12.0, fontWeight: FontWeight.bold))
                                              ),
                                              Container(width: 10),
                                              Container(
                                                  width: 230,padding: EdgeInsets.only(top: 10, bottom: 10),

                                                  alignment: Alignment.center,
                                                  decoration: BoxDecoration(color: Colors.red,borderRadius: BorderRadius.all(
                                                    Radius.circular(5),
                                                  )),
                                                  child: Text(_adjetivoC[_intescolhaC-3][3],
                                                      textAlign: TextAlign.center,
                                                      style:
                                                      TextStyle(
                                                          fontSize: 12.0, fontWeight: FontWeight.bold))
                                              )
                                            ],

                                          ),
                                          Container(
                                            height: 4,
                                            decoration: BoxDecoration(
                                                color: Colors.black),
                                          ),
                                          Row(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Container(
                                                  width: 100,
                                                  height: 70,
                                                  alignment: Alignment.center,
                                                  decoration: BoxDecoration(
                                                    color: Colors.red,
                                                    borderRadius: BorderRadius.all(
                                                      Radius.circular(5),
                                                    ),
                                                  ),
                                                  child: Text(_adjetivoC[_intescolhaC-2][1],
                                                      textAlign: TextAlign.center,
                                                      style:
                                                      TextStyle(
                                                          fontSize: 12.0, fontWeight: FontWeight.bold))
                                              ),
                                              Container(width: 10),
                                              Container(
                                                  width: 230,padding: EdgeInsets.only(top: 10, bottom: 10),

                                                  alignment: Alignment.center,
                                                  decoration: BoxDecoration(color: Colors.red,borderRadius: BorderRadius.all(
                                                    Radius.circular(5),
                                                  )),
                                                  child: Text(_adjetivoC[_intescolhaC-2][3],
                                                      textAlign: TextAlign.center,
                                                      style:
                                                      TextStyle(
                                                          fontSize: 12.0, fontWeight: FontWeight.bold))
                                              )
                                            ],

                                          ),
                                          Container(
                                            height: 4,
                                            decoration: BoxDecoration(
                                                color: Colors.black),
                                          ),
                                          Row(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Container(
                                                  width: 100,
                                                  height: 70,
                                                  alignment: Alignment.center,
                                                  decoration: BoxDecoration(
                                                    color: Colors.red,
                                                    borderRadius: BorderRadius.all(
                                                      Radius.circular(5),
                                                    ),
                                                  ),
                                                  child: Text(_adjetivoC[_intescolhaC-1][1],
                                                      textAlign: TextAlign.center,
                                                      style:
                                                      TextStyle(
                                                          fontSize: 12.0, fontWeight: FontWeight.bold))
                                              ),
                                              Container(width: 10),
                                              Container(
                                                  width: 230,padding: EdgeInsets.only(top: 10, bottom: 10),

                                                  alignment: Alignment.center,
                                                  decoration: BoxDecoration(color: Colors.red,borderRadius: BorderRadius.all(
                                                    Radius.circular(5),
                                                  )),
                                                  child: Text(_adjetivoC[_intescolhaC-1][3],
                                                      textAlign: TextAlign.center,
                                                      style:
                                                      TextStyle(
                                                          fontSize: 12.0, fontWeight: FontWeight.bold))
                                              )
                                            ],

                                          ),
                                          Container(
                                            height: 4,
                                            decoration: BoxDecoration(
                                                color: Colors.black),
                                          ),
                                          Row(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Container(
                                                  width: 100,
                                                  height: 70,
                                                  alignment: Alignment.center,
                                                  decoration: BoxDecoration(
                                                    color: Colors.red,
                                                    borderRadius: BorderRadius.all(
                                                      Radius.circular(5),
                                                    ),
                                                  ),
                                                  child: Text(_adjetivoC[_intescolhaC][1],
                                                      textAlign: TextAlign.center,
                                                      style:
                                                      TextStyle(
                                                          fontSize: 12.0, fontWeight: FontWeight.bold))
                                              ),
                                              Container(width: 10),
                                              Container(
                                                  width: 230,padding: EdgeInsets.only(top: 10, bottom: 10),

                                                  alignment: Alignment.center,
                                                  decoration: BoxDecoration(color: Colors.red,borderRadius: BorderRadius.all(
                                                    Radius.circular(5),
                                                  )),
                                                  child: Text(_adjetivoC[_intescolhaC][3],
                                                      textAlign: TextAlign.center,
                                                      style:
                                                      TextStyle(
                                                          fontSize: 12.0, fontWeight: FontWeight.bold))
                                              )
                                            ],

                                          ),
                                          Container(
                                            height: 4,
                                            decoration: BoxDecoration(
                                                color: Colors.black),
                                          ),
                                          Row(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Container(
                                                  width: 100,
                                                  height: 70,
                                                  alignment: Alignment.center,
                                                  decoration: BoxDecoration(
                                                    color: Colors.red,
                                                    borderRadius: BorderRadius.all(
                                                      Radius.circular(5),
                                                    ),
                                                  ),
                                                  child: Text(_adjetivoC[_intescolhaC+1][1],
                                                      textAlign: TextAlign.center,
                                                      style:
                                                      TextStyle(
                                                          fontSize: 12.0, fontWeight: FontWeight.bold))
                                              ),
                                              Container(width: 10),
                                              Container(
                                                  width: 230,padding: EdgeInsets.only(top: 10, bottom: 10),

                                                  alignment: Alignment.center,
                                                  decoration: BoxDecoration(color: Colors.red,borderRadius: BorderRadius.all(
                                                    Radius.circular(5),
                                                  )),
                                                  child: Text(_adjetivoC[_intescolhaC+1][3],
                                                      textAlign: TextAlign.center,
                                                      style:
                                                      TextStyle(
                                                          fontSize: 12.0, fontWeight: FontWeight.bold))
                                              )
                                            ],

                                          ),
                                          Container(
                                            height: 4,
                                            decoration: BoxDecoration(
                                                color: Colors.black),
                                          ),
                                          Row(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Container(
                                                  width: 100,
                                                  height: 70,
                                                  alignment: Alignment.center,
                                                  decoration: BoxDecoration(
                                                    color: Colors.red,
                                                    borderRadius: BorderRadius.all(
                                                      Radius.circular(5),
                                                    ),
                                                  ),
                                                  child: Text(_adjetivoC[_intescolhaC+2][1],
                                                      textAlign: TextAlign.center,
                                                      style:
                                                      TextStyle(
                                                          fontSize: 12.0, fontWeight: FontWeight.bold))
                                              ),
                                              Container(width: 10),
                                              Container(
                                                  width: 230,padding: EdgeInsets.only(top: 10, bottom: 10),

                                                  alignment: Alignment.center,
                                                  decoration: BoxDecoration(color: Colors.red,borderRadius: BorderRadius.all(
                                                    Radius.circular(5),
                                                  )),
                                                  child: Text(_adjetivoC[_intescolhaC+2][3],
                                                      textAlign: TextAlign.center,
                                                      style:
                                                      TextStyle(
                                                          fontSize: 12.0, fontWeight: FontWeight.bold))
                                              )
                                            ],

                                          ),
                                          Container(
                                            height: 4,
                                            decoration: BoxDecoration(
                                                color: Colors.black),
                                          ),
                                          Row(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Container(
                                                  width: 100,
                                                  height: 70,
                                                  alignment: Alignment.center,
                                                  decoration: BoxDecoration(
                                                    color: Colors.red,
                                                    borderRadius: BorderRadius.all(
                                                      Radius.circular(5),
                                                    ),
                                                  ),
                                                  child: Text(_adjetivoC[_intescolhaC+3][1],
                                                      textAlign: TextAlign.center,
                                                      style:
                                                      TextStyle(
                                                          fontSize: 12.0, fontWeight: FontWeight.bold))
                                              ),
                                              Container(width: 10),
                                              Container(
                                                  width: 230,padding: EdgeInsets.only(top: 10, bottom: 10),

                                                  alignment: Alignment.center,
                                                  decoration: BoxDecoration(color: Colors.red,borderRadius: BorderRadius.all(
                                                    Radius.circular(5),
                                                  )),
                                                  child: Text(_adjetivoC[_intescolhaC+3][3],
                                                      textAlign: TextAlign.center,
                                                      style:
                                                      TextStyle(
                                                          fontSize: 12.0, fontWeight: FontWeight.bold))
                                              )
                                            ],

                                          ),




                                          /*







  */
                                        ])]
                              )
                          ),
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
                                Navigator.push(context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            ResultadoDisc(widget._codAluno,widget._valD,widget._valI,widget._valS,widget._valC,widget._valDantes,widget._valIantes,widget._valSantes,widget._valCantes)));
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
              )
              ]
              )
              )
              )
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
  int taskvalue;
  Color colorval;

  Task(this.task, this.taskvalue, this.colorval);
}

class Sales {
  int yearval;
  int salesval;

  Sales(this.yearval, this.salesval);
}