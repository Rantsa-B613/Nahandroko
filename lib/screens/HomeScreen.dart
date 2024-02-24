import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nahandroko/constant.dart';
import 'package:google_fonts/google_fonts.dart';

import '../pages/home_page.dart';
import 'AddItems.dart';
import 'DetailsScreen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool tag = false;
  List favoriList = [
    {
      "image": "assets/images/favoris/ravitoto.jpg",
      "name": "Ravitoto ",
      "description": "somary mavesatra nefa tsara, tsara miaraka amin'ny lasary",
      "fikarakarana": "Mora ny mahandro azy.\nTetehina ny hena rehefa avy nodiovina tsara ary andrahoina amin’ny rano 250ml, atao ritra tsara (tsy misy rano mihitsy).\nKikisana na totoina ny tongologasy, arotsaka ao lay tongologasy rehefa ritra tsara ilay hena. asiana rano kely fotsiny 3 sotro fihinana, ary atao malefaka tena malefaka ny afo mba hidiran'ny tsiro tongologasy any anaty hena mandritra 20minitra amin’ny afo malefaka, ny tanjona moa dia hampivoaka ilay menaka kisoa izay hita fa mitsonika mivoaka ny tavin'ilay kisoa (ary dia azo esorina dia asiana menaka oliva raha tiana).\nMandritra izay dia sasaina ny ravimangahazo (raha mbola tsy viatoto no ananao) “mixé- na” na totoina ny ravimangahazo raha ilay raviny ka asiana rano 500ml eo,Raha efa vonona ny ravitoto dia arotsaka ao anaty hena efa mivoaka menaka iny dia asiana sira sahaza sy siramamy kely ary arotsaka ilay ambina rano dia atao mahery ny afo.\nRehefa hita fa efa kelikely sisa ny rano dia atao malefaka indray ny afo mba tsy ho may dia avela ho ritra tsara amin'izay.",
      "time":"140 min",
      "prix":"1.500",
      "fangarony":"Hena kisoa",
      "lasary":"voataby"
    },
    {
      "image": "assets/images/favoris/romazava.jpg",
      "name": "Romazava",
      "description": "sakafo nenti mpaharazana, maha gasy ny gasy",
      "fikarakarana": "- Endasina kely amin'ny menaka ny tongolo sy votabia ary sakamalao\n- Arotsaka ny hena efa voasasa sy voatetika\n- Arotsaka ilay fony sy ny angivy\n- Asiana rano mitovy hahavo aminy avy eo, dia avela hiketrika ao.(andrahoina amin'izay fahamasahany tiana satria izaho manokana tsy tia hena mafy dia adiny 3ora anaty cocotte minute\n- 15minitra alohan'ny hihinanana azy vao arotsaka ny anamamy.",
      "time":"60 min",
      "prix":"1.500",
      "fangarony":"Hena omby, akoho",
      "lasary":" "
    },
    {
      "image": "assets/images/favoris/henomby_ritra.jpg",
      "name": "Henomby ritra",
      "description": "tsy mandiso fanantenana ny tsirony",
      "fikarakarana": "Sasana tsara ny hena ary andrahoina bolongany dia asiana sira, tongolo gasy ary sakamalaho;\nrehefa malemy tsara dia sarasarahana amin'ny fourchette dia averina eo ambon'ny afo atao afo malefaka;dia avela ho mendimendy ao\nazo atao anaty lafaoro koa izy rehefa ilay manamendy azy iny.\nMazotoa o ",
      "time":"150 min",
      "prix":"3.000",
      "fangarony":"Hena omby",
      "lasary":"voataby , karaoty"
    },
    {
      "image": "assets/images/favoris/tsaramaso.jpg",
      "name": "Tsaramaso ",
      "description": "na rony na saosy be ny mpankafia azy",
      "fikarakarana": "Notanehina miaraka aloha ny tsaramaso sy ny hena ary ireo fangaro manome tsiro ka rehefa malemy tsara dia sarahina.\nNy tsaramaso atao rony rehefa avy nisy sira.\nAfaka aroso miaraka amin'ny lasary kely ,fa ny ahy teto dia karaoty !\ndia mazotoa ary e!",
      "time":"120 min",
      "prix":"2.500",
      "fangarony":"Hena omby, Hena kisao",
      "lasary":"voataby , karaoty"
    },
  ];
  List <Map<String, dynamic>> GeneralListN = [
    {
      "image": "assets/images/general/anamadinika.jpg",
      "name": "Anamadinika",
      "description": "na rony na saosy be ny mpankafia azy",
      "fikarakarana": "Andrahoy mitokana ny anamandinika ka rehefa mangotraka dia esory aloha ilay ranony voalohany, ataovy toy izay faharoa,\nandrahoy mitokana ny saosisy, izany hoe rehefa avy mangotraka kely mitokana ny saucisse\nrehefa mendy mendy ny saosisy dia manendy tongolo gasy ary alaivo amin'izay le anana afangarohy amin'ilay saosisy\nasiana rano kely manamasaka azy dia atao ritra tsara tanteraka ,\nNB: azo asiana voatabia raha tia ary azo soloina henakisoa koa ",
      "time":"60 min",
      "prix":"1.000",
      "tags": "anana anamadinika sosisy",
      "fangarony":"Hena omby",
      "lasary":" "


    },
    {
      "image": "assets/images/general/akoho.jpg",
      "name": "Akoho",
      "description": "na rony na saosy be ny mpankafia azy",
      "fikarakarana": "- Miara-totoina ny tongolo gasy, tongolo be ary ny sakamalaho. Dia avy eo ampiana 4 épices. Io fangaro io no handomana ny nofon'akoho mandritra ny ora vitsivitsy. Tena tsara raha alina iray.\n- Rehefa hanendy azy : afangaro ny poti-mofo sy lafarinina. Afangaro ihany koa ny atody, menaka ary rano kely.\n- Asoka ao anaty atody misy fangaro ny nofon'akoho dia avy eo ao anaty poti-mofo misy fangaro. Averina fanindroany ao anaty atody dia avy eo ao anaty poti-mofo indray: io ilay antsoiko hoe double panure. Izay vao endasina : atsonika aloha ny dibera izay vao arotsaka ny menaka. Mafana ireo dia alefa ny nofon'akoho. Afo tsy dia mafy loatra mba hanamasahana tsara ny any anatiny.",
      "time":"30 min",
      "prix":"3.000",
      "tags": "akoho hena",
      "fangarony":"Hena akoho",
      "lasary":"voataby , karaoty"
    },
    {
      "image": "assets/images/general/henomby_ritra.jpg",
      "name": "Henomby ritra",
      "description": "na rony na saosy be ny mpankafia azy",
      "fikarakarana": " Sasana tsara ny hena ary andrahoina bolongany dia asiana sira, tongolo gasy ary sakamalaho;\nrehefa malemy tsara dia sarasarahana amin'ny fourchette dia averina eo ambon'ny afo atao afo malefaka;dia avela ho mendimendy ao\nazo atao anaty lafaoro koa izy rehefa ilay manamendy azy iny.\nMazotoa o ",
      "time":"140 min",
      "prix":"3.000",
      "tags": "omby hena henomby ritra",
      "fangarony":"Hena omby",
      "lasary":"voataby , karaoty"
    },
    {
      "image": "assets/images/general/kabaro.jpeg",
      "name": "Kabaro",
      "description": "na rony na saosy be ny mpankafia azy",
      "fikarakarana": "Nendasina ny poulet mba hisy lokony sy tsy hiparitaka,\nnandrahoina mitokana ny kabaro,\nnotetehina maventy ny tongolo ary nendasina ho masaka\nnarotsaka ny tongolo gasy ary nafangaro,\nnarotsaka ny poulet sy ny tomates sauce ary ny kabaro efa masaka dia afangaro,\ntenehina amin'ny afo malefaka mandrapivoaka ny tsirony sy ny fofokanina.\nAroso miaraka amin'ny vary fotsy\nmazotoa homana o ",
      "time":"140 min",
      "prix":"1.500",
      "tags": "kabaro voamaina hena",
      "fangarony":"Hena omby, Hena kisoa",
      "lasary":"voataby , karaoty"
    },
    {
      "image": "assets/images/general/lentilles.jpg",
      "name": "lentilles",
      "description": "na rony na saosy be ny mpankafia azy",
      "fikarakarana": "Andrahoina manokana ny tsiasisa sy ny sôsisy dia atokana. Manao saosy voatabia (voasana ny voatabia) sy tongolo be ary tongolo gasy. Raha tiana dia asiana jumbo hena satria Sôsisy gasy no ataoVita izay dia nafangaro daholo asiana sira ary rano kely mba hiditra tsara ny saosy...atao ridritra ketsaketsa...\nMazotoa daholo ô!!!!",
      "time":"120 min",
      "prix":"1.500",
      "tags": "lentilles tsiasisa hena voamaina",
      "fangarony":"Hena omby, Hena kisoa",
      "lasary":"voataby , karaoty"
    },
    {
      "image": "assets/images/general/ovy_tototkena.jpeg",
      "name": "Ovy sy totokena",
      "description": "na rony na saosy be ny mpankafia azy",
      "fikarakarana": "Endasina ny toton-kenomby sy oignon sy tongolo gasy sy sakamalaho ho mendy. Arotsaka ny ovy voatetika toy ny kodiakely, arohina matetika mba tsy hiraikitra sy ho mendy tsikelikely ny ovy, saromy mba hilatsaka ny entona hampamando azy nefa ampio rano kely raha miraikitra loatra na izany aza. Asio ranona voatabia kely. Asio sira, curry, poivre. Rehefa masaka ny ovy dia vita. Raraho tetika tongolo maintso sy kotomila\nNB : raha hita fa maina loatra koa dia ampio menaka kely mba ho mandina fa tsy hanana endrika ovy masaka maina fotsiny.",
      "time":"120 min",
      "prix":"4.000",
      "tags": "totokena ovy hena",
      "fangarony":"totokena",
      "lasary":" "
    },
    {
      "image": "assets/images/general/petit_poids.jpeg",
      "name": "Petit pois",
      "description": "na rony na saosy be ny mpankafia azy",
      "fikarakarana": "Andrahoina ny hariva ilay mbola bolongany be ny lelan'omby  miaraka amin'ny hanitra laurier sy romarin ary tongolobe  atao amin'ny afo malefaka ary kikisana ilay fotsifotsy hiala rehefa masaka\nRehefa maraina dia tetehina araka izay habeany tiana ary tohizana andrahoina dia asiana tongolo be voatetika sy dipoavatra ary voatabia dia arotsaka koa ny petipoa , tsy adino ny sira araka izay tiana.\nAroso amin'ny vary mena sy fotsy sy lasary",
      "time":"140 min",
      "prix":"2.500",
      "tags": "petit pois voamaina hena",
      "fangarony":"Hena omby, Hena kisoa",
      "lasary":"voataby , karaoty"
    },
    {
      "image": "assets/images/general/romazava.jpg",
      "name": "Romazava",
      "description": "na rony na saosy be ny mpankafia azy",
      "fikarakarana": "- Endasina kely amin'ny menaka ny tongolo sy votabia ary sakamalao\n- Arotsaka ny hena efa voasasa sy voatetika\n- Arotsaka ilay fony sy ny angivy\n- Asiana rano mitovy hahavo aminy avy eo, dia avela hiketrika ao.(andrahoina amin'izay fahamasahany tiana satria izaho manokana tsy tia hena mafy dia adiny 3ora anaty cocotte minute\n- 15minitra alohan'ny hihinanana azy vao arotsaka ny anamamy.",
      "time":"45 min",
      "prix":"1.000",
      "tags": "romazava rony hena angivy",
      "fangarony":"Hena omby, akoho",
      "lasary":" "
    },
    {
      "image": "assets/images/general/trip.jpg",
      "name": "Tripy",
      "description": "na rony na saosy be ny mpankafia azy",
      "fikarakarana": "Alefa anaty vilany mafana ny henakisoa efa voatetika mba hitsonika ny henakisoa\nArotsaka ny tongolo lay, ny sakamalao ary ny tongolo be rehefa mitsonika ny tavi-kena, sady menafify ny nofony\nAroroana dia alefa ny sira sy ny dipoavatra\nAroroana dia alefa ny tripy efa voakarakara sady voatetika\nAsiana rano dia avela halemy\nMora malemy ny tripy raha irony vilany mihidy na cocotte minute irony no andrahoana azy. Rehefa malemy sy ritra tsara ny nahandro dia azo aroso. Nasiako lasary karaoty kely ary naroso tamin’ny vary mena. Filotra tokoa.\nMazotoa homana tompoko",
      "time":"140 min",
      "prix":"3.000",
      "tags": "tripy hena",
      "fangarony":"Hena omby, Hena kisoa",
      "lasary":"voataby , karaoty"

    },
    {
      "image": "assets/images/general/trondro.jpg",
      "name": "Trondro",
      "description": "na rony na saosy be ny mpankafia azy",
      "fikarakarana": "- manao saosy voatabia sy tongolo oignon voatetika ary asiana tongolo gasy kely voatoto.\n- zaraina roa ny sauce ka ny antsasany atao ao anaty vilany ny antsasany esorina amin'ny vilia aloha\n- rehefa voasasa tsara ny trondro dia tetehana araka izay tiana na koa avela ho ilay ngezabe,\n- apetraka eo ambonin'ilay sauce ny trondro ary atao eo amboniny ilay sauce tamin'ny vilia\n\n- ampiana menaka kely ihany sy rano 1 verre dia tsy kitihina intsony mandrapaha masaka\nps : atao afo ambany\nmazotoa o ",
      "time":"120 min",
      "prix":"3.000",
      "tags": "trondro rony",
      "fangarony":"Hena omby",
      "lasary":"voataby , karaoty"
    },
    {
      "image": "assets/images/general/vary_amn_anana.jpg",
      "name": "Vary amin'ny anana",
      "description": "na rony na saosy be ny mpankafia azy",
      "fikarakarana": "- Ahandroina mitokana ny vary toy ny vary maina,\n- mandritra izay, dia endasina maina anaty lapoaly ny patsamena, avy eo arotsaka ao ny anana voatetika dia endasina tsy atao masaka be ny anana fa manjary tsy voatazona lay maitso\n- avy eo arotsaka anaty vilany, dia asiana rano izay tiana sy ampy ho an'ny vary\n- tetehana ao ilay tongolo 1, arotsaka ny 5 épices, rehefa mangotraka dia arotsaka ao ny vary masaka, hamarinina ny sira.",
      "time":"60 min",
      "prix":"2.000",
      "tags": "vary amin'ny anana hena ",
      "fangarony":"Hena omby, saosisy",
      "lasary":" "
    },
    {
      "image": "assets/images/general/voanjibory.jpg",
      "name": "Voanjobory",
      "description": "na rony na saosy be ny mpankafia azy",
      "fikarakarana": "1. Nalona indray alina tamin'ny rano mangatsika ny voajobory maina, avy eo dia nandrahoko tamin'ny rano sira ka rehefa nangotraka ela ela dia nariko iny rano voalohany iny dia nandrahoko tamin'ny rano ihany.\n2. naka vilany dia nendanendasiko tamin'ny menaka kely 1 sotro fihinana ny hena ka rehefa mendimendy dia narotsako ilay voanjobory miaraka amin ny ranony iny. Dia notetehana teo tamin'ny afo malefaka.\n3. etsy andaniny nandrahoko tamin'ny rano magotraka ny anamalaho maina. Avy eo notsihifina nariana ny ranony\n4. rehefa hita fa masaka ny hena ary malemy ny voanjobory dia arotsaka ny anamalaho efa vita karakara. Avela hiketrika 5 minitra dia vita. Aza adino ny sira.\n5. Toro hevitra avy amin' ny namana ny hoe azo asiana angivy ihany koa\n6. Naroso niaraka tamin ny vary sy lasary voatabia ary sakay kely\nMazotoa indray ary ho antsika izay mankafy ô",
      "time":"140 min",
      "prix":"2.500",
      "tags": "voanjibory hena voamaina",
      "fangarony":"Hena omby, Hena kisoa",
      "lasary":"voataby , karaoty"
    },
  ];
  // ----------------------------------------------------------------
  // Méthodes de recherche

  List <Map<String, dynamic>> GeneralList = [];
  @override
  void initState() {
    GeneralList = GeneralListN;
    super.initState();
  }

  void _runfilter(String enteredKeyword) {
    List <Map<String, dynamic>> results = [];
    if (enteredKeyword.isEmpty) {
      // rehefa vide le bar de recherche
      results = GeneralListN;
    } else {
      results = GeneralListN
          .where((user) =>
            user["tags"].toLowerCase().contains(enteredKeyword.toLowerCase()))
          .toList();
    }

    setState(() {
      GeneralList = results;
    });
  }

  // ----------------------------------------------------------------


  @override
  Widget build(BuildContext context) {
    var key1 = GlobalKey();
    return Scaffold(
      backgroundColor: kLightColor,
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              // ----------------------------------------------------------------
              // Bar des icons
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(
                        top: 64.0,
                        left: 16.0,
                        right: 16.0,
                      ),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              GestureDetector(
                                onTap: () => Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) => HomePage(),
                                  ),
                                ),
                                child: SvgPicture.asset(
                                  "assets/icons/list.svg",
                                  height: 34.0,
                                ),
                              ),
                              GestureDetector(
                                onTap: () => Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) => AddDataScreen(),
                                  ),
                                ),
                                child: SvgPicture.asset(
                                  "assets/icons/add.svg",
                                  height: 34.0,
                                ),
                              ),
                            ],
                          ),

                          const SizedBox(
                            height: 20.0,
                          ),

                          // ----------------------------------------------------------------
                          // Text du débuts
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Container(
                                child: Text(
                                  "Salama tompoko ",
                                  style: GoogleFonts.poppins(
                                    fontSize: 16.0,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 3.0,
                          ),
                          Container(
                            child: Row(
                              children: [
                                Expanded(
                                  child: Wrap(
                                    children: [
                                      Text(
                                        "Inona indray ary ny ",
                                        style: GoogleFonts.publicSans(
                                          fontSize: 34.0,
                                          color: kDarkColor,
                                          fontWeight: FontWeight.w900,
                                        ),
                                      ),
                                      Text(
                                        "NAHANDRO",
                                        style: GoogleFonts.righteous(
                                          fontSize: 34.0,
                                          color: kOrangeColor,
                                          fontWeight: FontWeight.w900,
                                        ),
                                      ),
                                      Text(
                                        "-ntsika anio ?",
                                        style: GoogleFonts.publicSans(
                                          fontSize: 34.0,
                                          color: kDarkColor,
                                          fontWeight: FontWeight.w900,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),

                          const SizedBox(
                            height: 20.0,
                          ),

                          // ----------------------------------------------------------------
                          // Bar de recherche
                          Row(
                            children: [
                              Expanded(
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: kPrimaryColor,
                                    borderRadius: BorderRadius.circular(14.0),
                                  ),
                                  child: Container(
                                    margin: const EdgeInsets.only(
                                      left: 20.0,
                                    ),
                                    child: TextField(
                                      onChanged: (value) => _runfilter(value),
                                      cursorColor: kDarkColor,
                                      decoration: InputDecoration(
                                        border: InputBorder.none,
                                        hintText: "Sakafo",
                                        hintStyle:  GoogleFonts.poppins(
                                          color: Colors.grey,
                                          fontSize: 18.0,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 16.0,
                              ),
                              GestureDetector(
                                onTap: () {
                                  FocusScope.of(context).unfocus();
                                  Scrollable.ensureVisible(key1.currentContext!);
                              },
                                child: Container(
                                  padding: const EdgeInsets.symmetric(
                                    vertical: 6.0,
                                    horizontal: 12.0,
                                  ),
                                  decoration: BoxDecoration(
                                    color: kOrangeColor,
                                    borderRadius: BorderRadius.circular(14),
                                  ),
                                  child: const Icon(
                                    Icons.manage_search,
                                    color: Colors.white,
                                    size: 34.0,
                                  ),
                                ),
                              )
                            ],
                          ),

                          const SizedBox(
                            height: 30.0,
                          ),

                          // ----------------------------------------------------------------
                          // Text de block
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 30,
                                width: 170,
                                decoration: BoxDecoration(
                                    borderRadius:
                                        const
                                        BorderRadius.all(Radius.circular(15)),
                                    color: Colors.white,
                                    border: Border.all(
                                      color: kLightColor,
                                    ),
                                ),
                                alignment: Alignment.center,
                                child: Text(
                                  "Sakafo be mpitia ",
                                  style:  GoogleFonts.poppins(
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.w700,
                                    color: kDarkColor,
                                  ),
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.only(
                                  top: 1.0,
                                ),
                                child: Text(
                                  "izy rehetra",
                                  style:  GoogleFonts.poppins(
                                    fontSize: 14.0,
                                    color: kOrangeColor,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(
                      height: 20.0,
                    ),

                    // ----------------------------------------------------------------
                    // block
                    Container(
                      height: 300.0,
                      color: kLightColor,
                      margin: const EdgeInsets.only(
                        left: 20.0,
                      ),
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemCount: favoriList.length,
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: () => Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => DetailsScreen(
                                  index,
                                  favoriList[index]["name"],
                                  favoriList[index]["image"],
                                  favoriList[index]["fikarakarana"],
                                  favoriList[index]["prix"],
                                  favoriList[index]["time"],
                                  favoriList[index]["fangarony"],
                                  favoriList[index]["lasary"],
                                  tag = true,
                                ),
                              ),
                            ),
                            child: Container(
                              height: 250.0,
                              width: 200.0,
                              margin: const EdgeInsets.only(
                                right: 32.0,
                                left: 15.0,
                                top: 10.0,
                                bottom: 22.0,
                              ),
                              decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.grey,
                                      blurRadius: 10.0,
                                      spreadRadius: 2.0,
                                      offset: Offset(
                                        7.0, // Move to right 7.0 horizontally
                                        8.0, // Move to bottom 8.0 Vertically
                                      ))
                                ],
                              ),
                              child: Stack(
                                clipBehavior: Clip.none,
                                children: [
                                  //------------------------------------------------------------
                                  // Images des plats
                                  Positioned(
                                    right: 25.0,
                                    top: 25.0,
                                    child: Container(
                                      height: 100.0,
                                      width: 150.0,
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(18),
                                        child: SizedBox.fromSize(
                                          // Image radius
                                          child: Hero(
                                            tag: "favori$index",
                                            child: Image.asset(
                                              favoriList[index]["image"],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  //------------------------------------------------------------
                                  //Text dans les block
                                  //Descrtiption
                                  Positioned(
                                    top: 140.0,
                                    left: 13.0,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Sakafo nahandro",
                                          style:  GoogleFonts.poppins(
                                            fontSize: 11.0,
                                            color: Colors.grey,
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 2.0,
                                        ),
                                        Container(
                                          width: 180.0,
                                          child: Text(
                                            favoriList[index]["name"],
                                            overflow: TextOverflow.ellipsis,
                                            style:  GoogleFonts.poppins(
                                              fontSize: 22.0,
                                              color: kDarkColor,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 1.0,
                                        ),
                                        Container(
                                          width: 180.0,
                                          height: 37.0,
                                          child: Text(
                                            favoriList[index]["description"],
                                            style:  GoogleFonts.poppins(
                                                fontSize: 12.0,
                                                color: Colors.grey),
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 4.0,
                                        ),
                                        Row(
                                          children: [
                                            Container(
                                              child: Row(
                                                children:  [
                                                  const Icon(
                                                    Icons.access_time,
                                                    color: kOrangeColor,
                                                    size: 15.0,
                                                  ),
                                                  const SizedBox(
                                                    width: 4.0,
                                                  ),
                                                  Text(
                                                    favoriList[index]["time"],
                                                    style: GoogleFonts.poppins(
                                                      fontSize: 13.0,
                                                      color: kOrangeColor,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            const SizedBox(
                                              width: 40.0,
                                            ),
                                            Container(
                                              child: Row(
                                                children: [
                                                  Text(
                                                    favoriList[index]["prix"],
                                                    style:  GoogleFonts.poppins(
                                                      fontSize: 14.0,
                                                      color: kDarkColor,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                    ),
                                                  ),
                                                  Text(
                                                    " Ar",
                                                    style:  GoogleFonts.poppins(
                                                      fontSize: 12.0,
                                                      color: kDarkColor,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(
                height: 32.0,
              ),

              // ----------------------------------------------------------------
              // liste
              Container(
                key: key1,
                padding: const EdgeInsets.fromLTRB(15, 20, 15, 20),
                margin: const EdgeInsets.only(
                  right: 0.0,
                  left: 0.0,
                ),
                decoration: const BoxDecoration(
                    color: kOrangeColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(45),
                      topRight: Radius.circular(45),
                    )),
                child: Column(
                  children: [
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(
                              left: 20.0,
                            ),
                            child: Text(
                              "Ireo sakafo rehetra",
                              style:  GoogleFonts.poppins(
                                fontSize: 20.0,
                                color: kLightColor,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(
                              top: 5.0,
                              right: 15.0,
                            ),
                            child: const Icon(
                              Icons.add_circle,
                              color: kLightColor,
                              size: 20.0,
                            ),
                            /*Text(
                              "izy rehetra",
                              style: GoogleFonts.sourceSerifPro(
                                fontSize: 15.0,
                                color: Colors.grey[720],
                                fontWeight: FontWeight.bold,
                              ),
                            ),*/
                          )
                        ],
                      ),
                    ),

                    const SizedBox(
                      height: 20.0,
                    ),

                    // ----------------------------------------------------------------
                    // Liste
                    ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: GeneralList.length,
                      padding: EdgeInsets.zero,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () => Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => DetailsScreen(
                                index,
                                GeneralList[index]["name"],
                                GeneralList[index]["image"],
                                GeneralList[index]["fikarakarana"],
                                GeneralList[index]["prix"],
                                GeneralList[index]["time"],
                                GeneralList[index]["fangarony"],
                                GeneralList[index]["lasary"],
                                tag = false,
                              ),
                            ),
                          ),
                          child: Container(
                            height: 140.0,
                            margin: const EdgeInsets.only(bottom: 16.0),
                            decoration: BoxDecoration(
                              color: kPrimaryColor,
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            child: Row(
                              // ----------------------------------------------------------------
                              // Images de liste
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(
                                    left: 15.0,
                                  ),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(18),
                                    child: SizedBox.fromSize(
                                      // Image radius
                                      child: Hero(
                                        tag: "general$index",
                                        child: Image.asset(
                                          GeneralList[index]["image"],
                                          height: 100.0,
                                          width: 150.0,
                                          fit: BoxFit.contain,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),

                                const SizedBox(
                                  width: 15.0,
                                ),

                                // ----------------------------------------------------------------
                                // Descrpition de liste
                                Container(
                                  margin: const EdgeInsets.only(
                                    top: 10.0,
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Sakafo nahandro",
                                        style:  GoogleFonts.poppins(
                                          fontSize: 11.0,
                                          color: Colors.grey,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 1.0,
                                      ),
                                      Container(
                                        width: 139.0,
                                        child: Text(
                                          GeneralList[index]["name"],
                                          overflow: TextOverflow.ellipsis,
                                          style:  GoogleFonts.poppins(
                                            fontSize: 22.0,
                                            color: kDarkColor,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 1.0,
                                      ),
                                      Container(
                                        width: 140.0,
                                        height: 37.0,
                                        child: Text(
                                          GeneralList[index]["description"],
                                          style:  GoogleFonts.poppins(
                                              fontSize: 13.0, color: Colors.grey),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 10.0,
                                      ),
                                      Row(
                                        children: [
                                          Container(
                                            child: Row(
                                              children: [
                                                const Icon(
                                                  Icons.access_time,
                                                  color: kOrangeColor,
                                                  size: 15.0,
                                                ),
                                                const SizedBox(
                                                  width: 4.0,
                                                ),
                                                Text(
                                                  GeneralList[index]["time"],
                                                  style:  GoogleFonts.poppins(
                                                    fontSize: 13.0,
                                                    color: kOrangeColor,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 20.0,
                                          ),
                                          Container(
                                            child: Row(
                                              children: [
                                                Text(
                                                  GeneralList[index]["prix"],
                                                  style:  GoogleFonts.poppins(
                                                    fontSize: 14.0,
                                                    color: kDarkColor,
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                                ),
                                                Text(
                                                  " Ar",
                                                  style:  GoogleFonts.poppins(
                                                    fontSize: 10.0,
                                                    color: kDarkColor,
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
