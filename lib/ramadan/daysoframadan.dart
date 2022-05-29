import 'package:flutter/material.dart';
import 'package:noor/ramadan/emsakya.dart';

class DaysOfRamadan extends StatefulWidget {
  @override
  _DaysOfRamadanState createState() => _DaysOfRamadanState();
}

class _DaysOfRamadanState extends State<DaysOfRamadan> {
  List<String> day1 = [
    "1",
    "أبريل",
    "2",
    "السبت",
    "3:55",
    "4:15",
    "11:58",
    "3:30",
    "6:14",
    "7:33",
    "اللهم وفقني للقبول في رمضان وأصلح لي من حالي ونفسي ما تجعله أهلًا لطاعتك وجزيل ثوابك وفضلك",
  ];

  List<String> day2 = [
    "2",
    "أبريل",
    "3",
    "الأحد",
    "3:54",
    "4:14",
    "11:58",
    "3:30",
    "6:15",
    "7:34",
    "اللهم تقبله مني رغم زلتي وأصلح لي فيما تبقى منه يا أكرم الأكرمين",
  ];

  List<String> day3 = [
    "3",
    "أبريل",
    "4",
    "الأثنين",
    "3:52",
    "4:12",
    "11:58",
    "3:30",
    "6:15",
    "7:34",
    "يارب في خير شهر وخير أيام تفضلت فيها على عبادك اهدني هداية لا ضلال بعدها",
  ];

  List<String> day4 = [
    "4",
    "أبريل",
    "5",
    "الثلاثاء",
    "3:51",
    "4:11",
    "11:58",
    "3:30",
    "6:23",
    "7:35",
    "يارب في خير شهر وخير أيام تفضلت فيها على عبادك اهدني هداية لا ضلال بعدها",
  ];

  List<String> day5 = [
    "5",
    "أبريل",
    "6",
    "الأربعاء",
    "3:50",
    "4:10",
    "11:57",
    "3:30",
    "6:17",
    "7:36",
    "اللهم في شهرك الكريم وسائر الأشهر ارزقنا إطعام المساكين ورحمة اليتيم والعطف على المحتاجين",
  ];

  List<String> day6 = [
    "6",
    "أبريل",
    "7",
    "الخميس",
    "3:48",
    "4:08",
    "11:57",
    "3:30",
    "6:17",
    "7:37",
    "اللهم اكفنا بعزتك الغلاء والوباء والإعراض عن طاعاتك",
  ];

  List<String> day7 = [
    "7",
    "أبريل",
    "8",
    "الجمعة",
    "3:47",
    "4:07",
    "11:57",
    "3:30",
    "6:18",
    "7:37",
    "اللهم ارزقني فيه طاعة الخاشعين واشرح فيه صدري بإنابة المختبئين بأمانك يا أمان الخائفين",
  ];

  List<String> day8 = [
    "8",
    "أبريل",
    "9",
    "السبت",
    "3:46",
    "4:06",
    "11:56",
    "3:30",
    "6:18",
    "7:38",
    "اللهم زد بعفوك وكرمك علينا بشهر فاضت فيه أنوار رحمتك وبركتك فحبب لنا فيه الخيرات والاستباق إليها",
  ];

  List<String> day9 = [
    "9",
    "أبريل",
    "10",
    "الأحد",
    "3:44",
    "4:04",
    "11:56",
    "3:30",
    "6:19",
    "7:39",
    "اللهم بغض إلينا في شهرنا هذا الخمول والكسل وابعدنا عنه",
  ];

  List<String> day10 = [
    "10",
    "أبريل",
    "11",
    "الأثنين",
    "3:43",
    "4:03",
    "11:56",
    "3:30",
    "6:20",
    "7:40",
    "اللهم ارزقنا في شهرك تقواك وحسن عافيتك وشهادة على طاعة",
  ];

  List<String> day11 = [
    "11",
    "أبريل",
    "12",
    "الثلاثاء",
    "3:42",
    "4:02",
    "11:56",
    "3:30",
    "6:20",
    "7:41",
    "الله توبة ترضاها تحبب لنا لقاءك وتحبب لقاءنا بك",
  ];

  List<String> day12 = [
    "12",
    "أبريل",
    "13",
    "الأربعاء",
    "3:40",
    "4:00",
    "11:55",
    "3:30",
    "6:21",
    "7:41",
    "اللهم أنت ربي لا إله إلا أنت عليك توكلت وأنت رب العرض العظيم",
  ];

  List<String> day13 = [
    "13",
    "أبريل",
    "14",
    "الخميس",
    "3:39",
    "3:59",
    "11:55",
    "3:30",
    "6:22",
    "7:42",
    "أعوذ بالله مما أخاف وأحاذر، الله ربي لا أشرك به شيئًا",
  ];

  List<String> day14 = [
    "14",
    "أبريل",
    "15",
    "الجمعة",
    "3:38",
    "3:58",
    "11:55",
    "3:30",
    "6:22",
    "7:43",
    "اللهم إني أعوذ بك من شر كل جبار عنيد وشيطان مريد ومن شر قضاء السوء",
  ];

  List<String> day15 = [
    "15",
    "أبريل",
    "16",
    "السبت",
    "3:36",
    "3:56",
    "11:55",
    "3:30",
    "6:23",
    "7:44",
    "اللهم إنا نستعينك ونستغفرك ونؤمن بك ونتوكل عليك ونثني عليك الخير كله نشكرك ولا نكفرك ونخلع ونترك من يكفرك",
  ];

  List<String> day16 = [
    "16",
    "أبريل",
    "17",
    "الأحد",
    "3:35",
    "3:55",
    "11:54",
    "3:30",
    "6:23",
    "7:45",
    "اللهم اهدنا فيمن هديت وعافنا فيمن عافيت وتولنا فيمن توليت وبارك لنا فيما أعطيت وقنا واصرف عنا شر ما قضيت",
  ];

  List<String> day17 = [
    "17",
    "أبريل",
    "18",
    "الأثنين",
    "3:34",
    "3:54",
    "11:54",
    "3:30",
    "6:24",
    "7:45",
    "نستغفرلك اللهم من جميع الذنوب والخطايا ونتوب إليك لا ملجأ ولا منجي إلا إليك",
  ];

  List<String> day18 = [
    "18",
    "أبريل",
    "19",
    "الثلاثاء",
    "3:32",
    "3:52",
    "11:54",
    "3:30",
    "6:25",
    "7:46",
    "اللهم إياك نعبد ولك نصلي ونسجد وإليك نسعى نرجو رحمتك يا الله ونخاف عذابك إن عذابك الجد بالكفار ملحق",
  ];

  List<String> day19 = [
    "19",
    "أبريل",
    "20",
    "الأربعاء",
    "3:31",
    "3:51",
    "11:54",
    "3:30",
    "6:25",
    "7:47",
    "اللهم أنت ربي خلقتني وأنا عبدك، وأنا على عهدك ووعدك ما استطعت فاغفر لي وارحمني إنه لا يغفر الذنوب إلا أنت",
  ];

  List<String> day20 = [
    "20",
    "أبريل",
    "21",
    "الخميس",
    "3:30",
    "3:50",
    "11:54",
    "3:30",
    "6:26",
    "7:48",
    "اللهم لا مانع لما أعطيت ولا معطى لما منعت ارزقنا رزقًا طيبًا وعملًا متقبلًا",
  ];

  List<String> day21 = [
    "21",
    "أبريل",
    "22",
    "الجمعة",
    "3:28",
    "3:48",
    "11:53",
    "3:29",
    "6:27",
    "7:49",
    "اللهم أني أسألك العافية في الدنيا والأخرة اللهم إني أسألك العفو والعافية في ديني ونياي",
  ];

  List<String> day22 = [
    "22",
    "أبريل",
    "23",
    "السبت",
    "3:27",
    "3:47",
    "11:53",
    "3:29",
    "6:27",
    "7:50",
    "اللهم استر عوراتي وآمن روعاتي",
  ];

  List<String> day23 = [
    "23",
    "أبريل",
    "24",
    "الأحد",
    "3:26",
    "3:46",
    "11:53",
    "3:29",
    "6:28",
    "7:51",
    "اللهم إني أصبحت أشهدك وأشهد حملة عرشك وملائكتك وجميع خلقك أنك أنت الله لا إله إلا أنت وحدك لا شريك لك وأن محمدًا عبدك ورسولك",
  ];

  List<String> day24 = [
    "24",
    "أبريل",
    "25",
    "الأثنين",
    "3:25",
    "3:45",
    "11:53",
    "3:29",
    "6:28",
    "7:51",
    "اللهم عافني في بدني وعافني في سمعي ىوعافني في بصري",
  ];

  List<String> day25 = [
    "25",
    "أبريل",
    "26",
    "الثلاثاء",
    "3:23",
    "3:43",
    "11:53",
    "3:29",
    "6:29",
    "7:52",
    "اللهم إني أعوذ بك من الكفر والفقر، لا إله إلا أنت",
  ];

  List<String> day26 = [
    "26",
    "أبريل",
    "27",
    "الأربعاء",
    "3:22",
    "3:42",
    "11:53",
    "3:29",
    "6:30",
    "7:53",
    "رضيت بالله ربًا وبالإسلام دينًا وبسيدنا محمد صلى الله عليه وسلم نبيًا ورسولًا",
  ];

  List<String> day27 = [
    "27",
    "أبريل",
    "28",
    "الخميس",
    "3:21",
    "3:41",
    "11:52",
    "3:29",
    "6:30",
    "7:54",
    "اللهم إنك عفو تحب العفو فاعف عني",
  ];

  List<String> day28 = [
    "28",
    "أبريل",
    "29",
    "الجمعة",
    "3:20",
    "3:40",
    "11:52",
    "3:29",
    "6:31",
    "7:55",
    "اللهم إني أعوذ بك من الهم والحزن والعجز والكسل وغلبة الدين وقهر الرجال",
  ];

  List<String> day29 = [
    "29",
    "أبريل",
    "30",
    "السبت",
    "3:18",
    "3:38",
    "11:52",
    "3:29",
    "6:32",
    "7:56",
    "اللهم ارزقني فضل قيام ليلة القدر وسهل أموري فيه من العسر إلى اليسر",
  ];

  List<String> day30 = [
    "30",
    "مايو",
    "1",
    "الأحد",
    "3:17",
    "3:37",
    "11:52",
    "3:29",
    "6:32",
    "7:57",
    "اللهم لك الحمد على أن بلغتنا شهر رمضان، اللهم تقبل منا الصيام والقيام، وأحسن لنا الختام",
  ];

  List<List<String>> days;

  @override
  void initState() {
    super.initState();
    setState(() {
      days = [
        day1,
        day2,
        day3,
        day4,
        day5,
        day6,
        day7,
        day8,
        day9,
        day10,
        day11,
        day12,
        day13,
        day14,
        day15,
        day16,
        day17,
        day18,
        day19,
        day20,
        day21,
        day22,
        day23,
        day24,
        day25,
        day26,
        day27,
        day28,
        day29,
        day30,
      ];
    });
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/s.jpg"), fit: BoxFit.fill)),
        child: Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
            color: Colors.black.withOpacity(0.2),
          ),
          child: Scaffold(
            appBar: AppBar(
              centerTitle: true,
              backgroundColor: Colors.transparent,
              elevation: 0,
              title: Text("إمساكية رمضان",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontFamily: "MO_Nawel",
                  )),
            ),
            backgroundColor: Colors.transparent,
            body: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                childAspectRatio: 0.75,
              ),
              itemCount: days.length,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.all(15),
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/back.png"), fit: BoxFit.fill),
                  ),
                  child: FlatButton(
                    child: Center(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Text(
                      "${index + 1}",
                      style: TextStyle(fontSize: 22, color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                        )),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Emsakya(days[index])));
                    },
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

/*
Center(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Padding(padding: EdgeInsets.only(top: 40)),
                      Row(
                        children: [
                          Expanded(
                            // ignore: deprecated_member_use
                            child: FlatButton(
                              child: Container(
                                height: height * 0.1,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.blue.withOpacity(.7)
                                ),
                                child: Center(child: Text("3", style: TextStyle(fontSize: 22, color: Colors.white), textAlign: TextAlign.center,)),
                              ),
                              onPressed: () {
                                Navigator.push(
                                    context, MaterialPageRoute(builder: (context) => Emsakya(day3)));
                              },
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Expanded(
                            // ignore: deprecated_member_use
                            // ignore: deprecated_member_use
                            child: FlatButton(
                              child: Container(
                                height: height * 0.1,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.blue.withOpacity(.7)
                                ),
                                child: Center(child: Text("2", style: TextStyle(fontSize: 22, color: Colors.white), textAlign: TextAlign.center,)),
                              ),
                              onPressed: () {
                                Navigator.push(
                                    context, MaterialPageRoute(builder: (context) => Emsakya(day2)));
                              },
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Expanded(
                            // ignore: deprecated_member_use
                            child: FlatButton(
                              child: Container(
                                height: height * 0.1,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.blue.withOpacity(.7)
                                ),
                                child: Center(child: Text("1", style: TextStyle(fontSize: 22, color: Colors.white), textAlign: TextAlign.center,)),
                              ),
                              onPressed: () {
                                Navigator.push(
                                    context, MaterialPageRoute(builder: (context) => Emsakya(day1)));
                              },
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      Row(
                        children: [
                          Expanded(
                            // ignore: deprecated_member_use
                            child: FlatButton(
                              child: Container(
                                height: height * 0.1,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.blue.withOpacity(.7)
                                ),
                                child: Center(child: Text("6", style: TextStyle(fontSize: 22, color: Colors.white), textAlign: TextAlign.center,)),
                              ),
                              onPressed: () {
                                Navigator.push(
                                    context, MaterialPageRoute(builder: (context) => Emsakya(day6)));
                              },
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Expanded(
                            // ignore: deprecated_member_use
                            child: FlatButton(
                              child: Container(
                                height: height * 0.1,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.blue.withOpacity(.7)
                                ),
                                child: Center(child: Text("5", style: TextStyle(fontSize: 22, color: Colors.white), textAlign: TextAlign.center,)),
                              ),
                              onPressed: () {
                                Navigator.push(
                                    context, MaterialPageRoute(builder: (context) => Emsakya(day5)));
                              },
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Expanded(
                            // ignore: deprecated_member_use
                            child: FlatButton(
                              child: Container(
                                height: height * 0.1,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.blue.withOpacity(.7)
                                ),
                                child: Center(child: Text("4", style: TextStyle(fontSize: 22, color: Colors.white), textAlign: TextAlign.center,)),
                              ),
                              onPressed: () {
                                Navigator.push(
                                    context, MaterialPageRoute(builder: (context) => Emsakya(day4)));
                              },
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      Row(
                        children: [
                          Expanded(
                            // ignore: deprecated_member_use
                            child: FlatButton(
                              child: Container(
                                height: height * 0.1,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.blue.withOpacity(.7)
                                ),
                                child: Center(child: Text("9", style: TextStyle(fontSize: 22, color: Colors.white), textAlign: TextAlign.center,)),
                              ),
                              onPressed: () {
                                Navigator.push(
                                    context, MaterialPageRoute(builder: (context) => Emsakya(day9)));
                              },
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Expanded(
                            // ignore: deprecated_member_use
                            child: FlatButton(
                              child: Container(
                                height: height * 0.1,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.blue.withOpacity(.7)
                                ),
                                child: Center(child: Text("8", style: TextStyle(fontSize: 22, color: Colors.white), textAlign: TextAlign.center,)),
                              ),
                              onPressed: () {
                                Navigator.push(
                                    context, MaterialPageRoute(builder: (context) => Emsakya(day8)));
                              },
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Expanded(
                            // ignore: deprecated_member_use
                            child: FlatButton(
                              child: Container(
                                height: height * 0.1,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.blue.withOpacity(.7)
                                ),
                                child: Center(child: Text("7", style: TextStyle(fontSize: 22, color: Colors.white), textAlign: TextAlign.center,)),
                              ),
                              onPressed: () {
                                Navigator.push(
                                    context, MaterialPageRoute(builder: (context) => Emsakya(day7)));
                              },
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      Row(
                        children: [
                          Expanded(
                            // ignore: deprecated_member_use
                            child: FlatButton(
                              child: Container(
                                height: height * 0.1,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.blue.withOpacity(.7)
                                ),
                                child: Center(child: Text("12", style: TextStyle(fontSize: 22, color: Colors.white), textAlign: TextAlign.center,)),
                              ),
                              onPressed: () {
                                Navigator.push(
                                    context, MaterialPageRoute(builder: (context) => Emsakya(day12)));
                              },
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Expanded(
                            // ignore: deprecated_member_use
                            child: FlatButton(
                              child: Container(
                                height: height * 0.1,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.blue.withOpacity(.7)
                                ),
                                child: Center(child: Text("11", style: TextStyle(fontSize: 22, color: Colors.white), textAlign: TextAlign.center,)),
                              ),
                              onPressed: () {
                                Navigator.push(
                                    context, MaterialPageRoute(builder: (context) => Emsakya(day11)));
                              },
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Expanded(
                            // ignore: deprecated_member_use
                            child: FlatButton(
                              child: Container(
                                height: height * 0.1,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.blue.withOpacity(.7)
                                ),
                                child: Center(child: Text("10", style: TextStyle(fontSize: 22, color: Colors.white), textAlign: TextAlign.center,)),
                              ),
                              onPressed: () {
                                Navigator.push(
                                    context, MaterialPageRoute(builder: (context) => Emsakya(day10)));
                              },
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      Row(
                        children: [
                          Expanded(
                            // ignore: deprecated_member_use
                            child: FlatButton(
                              child: Container(
                                height: height * 0.1,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.blue.withOpacity(.7)
                                ),
                                child: Center(child: Text("15", style: TextStyle(fontSize: 22, color: Colors.white), textAlign: TextAlign.center,)),
                              ),
                              onPressed: () {
                                Navigator.push(
                                    context, MaterialPageRoute(builder: (context) => Emsakya(day15)));
                              },
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Expanded(
                            // ignore: deprecated_member_use
                            child: FlatButton(
                              child: Container(
                                height: height * 0.1,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.blue.withOpacity(.7)
                                ),
                                child: Center(child: Text("14", style: TextStyle(fontSize: 22, color: Colors.white), textAlign: TextAlign.center,)),
                              ),
                              onPressed: () {
                                Navigator.push(
                                    context, MaterialPageRoute(builder: (context) => Emsakya(day16)));
                              },
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Expanded(
                            // ignore: deprecated_member_use
                            child: FlatButton(
                              child: Container(
                                height: height * 0.1,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.blue.withOpacity(.7)
                                ),
                                child: Center(child: Text("13", style: TextStyle(fontSize: 22, color: Colors.white), textAlign: TextAlign.center,)),
                              ),
                              onPressed: () {
                                Navigator.push(
                                    context, MaterialPageRoute(builder: (context) => Emsakya(day13)));
                              },
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      Row(
                        children: [
                          Expanded(
                            // ignore: deprecated_member_use
                            child: FlatButton(
                              child: Container(
                                height: height * 0.1,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.blue.withOpacity(.7)
                                ),
                                child: Center(child: Text("18", style: TextStyle(fontSize: 22, color: Colors.white), textAlign: TextAlign.center,)),
                              ),
                              onPressed: () {
                                Navigator.push(
                                    context, MaterialPageRoute(builder: (context) => Emsakya(day18)));
                              },
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Expanded(
                            // ignore: deprecated_member_use
                            child: FlatButton(
                              child: Container(
                                height: height * 0.1,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.blue.withOpacity(.7)
                                ),
                                child: Center(child: Text("17", style: TextStyle(fontSize: 22, color: Colors.white), textAlign: TextAlign.center,)),
                              ),
                              onPressed: () {
                                Navigator.push(
                                    context, MaterialPageRoute(builder: (context) => Emsakya(day17)));
                              },
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Expanded(
                            // ignore: deprecated_member_use
                            child: FlatButton(
                              child: Container(
                                height: height * 0.1,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.blue.withOpacity(.7)
                                ),
                                child: Center(child: Text("16", style: TextStyle(fontSize: 22, color: Colors.white), textAlign: TextAlign.center,)),
                              ),
                              onPressed: () {
                                Navigator.push(
                                    context, MaterialPageRoute(builder: (context) => Emsakya(day16)));
                              },
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      Row(
                        children: [
                          Expanded(
                            // ignore: deprecated_member_use
                            child: FlatButton(
                              child: Container(
                                height: height * 0.1,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.blue.withOpacity(.7)
                                ),
                                child: Center(child: Text("21", style: TextStyle(fontSize: 22, color: Colors.white), textAlign: TextAlign.center,)),
                              ),
                              onPressed: () {
                                Navigator.push(
                                    context, MaterialPageRoute(builder: (context) => Emsakya(day21)));
                              },
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Expanded(
                            // ignore: deprecated_member_use
                            child: FlatButton(
                              child: Container(
                                height: height * 0.1,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.blue.withOpacity(.7)
                                ),
                                child: Center(child: Text("20", style: TextStyle(fontSize: 22, color: Colors.white), textAlign: TextAlign.center,)),
                              ),
                              onPressed: () {
                                Navigator.push(
                                    context, MaterialPageRoute(builder: (context) => Emsakya(day20)));
                              },
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Expanded(
                            // ignore: deprecated_member_use
                            child: FlatButton(
                              child: Container(
                                height: height * 0.1,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.blue.withOpacity(.7)
                                ),
                                child: Center(child: Text("19", style: TextStyle(fontSize: 22, color: Colors.white), textAlign: TextAlign.center,)),
                              ),
                              onPressed: () {
                                Navigator.push(
                                    context, MaterialPageRoute(builder: (context) => Emsakya(day19)));
                              },
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      Row(
                        children: [
                          Expanded(
                            // ignore: deprecated_member_use
                            child: FlatButton(
                              child: Container(
                                height: height * 0.1,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.blue.withOpacity(.7)
                                ),
                                child: Center(child: Text("24", style: TextStyle(fontSize: 22, color: Colors.white), textAlign: TextAlign.center,)),
                              ),
                              onPressed: () {
                                Navigator.push(
                                    context, MaterialPageRoute(builder: (context) => Emsakya(day24)));
                              },
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Expanded(
                            // ignore: deprecated_member_use
                            child: FlatButton(
                              child: Container(
                                height: height * 0.1,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.blue.withOpacity(.7)
                                ),
                                child: Center(child: Text("23", style: TextStyle(fontSize: 22, color: Colors.white), textAlign: TextAlign.center,)),
                              ),
                              onPressed: () {
                                Navigator.push(
                                    context, MaterialPageRoute(builder: (context) => Emsakya(day23)));
                              },
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Expanded(
                            // ignore: deprecated_member_use
                            child: FlatButton(
                              child: Container(
                                height: height * 0.1,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.blue.withOpacity(.7)
                                ),
                                child: Center(child: Text("22", style: TextStyle(fontSize: 22, color: Colors.white), textAlign: TextAlign.center,)),
                              ),
                              onPressed: () {
                                Navigator.push(
                                    context, MaterialPageRoute(builder: (context) => Emsakya(day22)));
                              },
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      Row(
                        children: [
                          Expanded(
                            // ignore: deprecated_member_use
                            child: FlatButton(
                              child: Container(
                                height: height * 0.1,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.blue.withOpacity(.7)
                                ),
                                child: Center(child: Text("27", style: TextStyle(fontSize: 22, color: Colors.white), textAlign: TextAlign.center,)),
                              ),
                              onPressed: () {
                                Navigator.push(
                                    context, MaterialPageRoute(builder: (context) => Emsakya(day27)));
                              },
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Expanded(
                            // ignore: deprecated_member_use
                            child: FlatButton(
                              child: Container(
                                height: height * 0.1,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.blue.withOpacity(.7)
                                ),
                                child: Center(child: Text("26", style: TextStyle(fontSize: 22, color: Colors.white), textAlign: TextAlign.center,)),
                              ),
                              onPressed: () {
                                Navigator.push(
                                    context, MaterialPageRoute(builder: (context) => Emsakya(day26)));
                              },
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Expanded(
                            // ignore: deprecated_member_use
                            child: FlatButton(
                              child: Container(
                                height: height * 0.1,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.blue.withOpacity(.7)
                                ),
                                child: Center(child: Text("25", style: TextStyle(fontSize: 22, color: Colors.white), textAlign: TextAlign.center,)),
                              ),
                              onPressed: () {
                                Navigator.push(
                                    context, MaterialPageRoute(builder: (context) => Emsakya(day25)));
                              },
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      Row(
                        children: [
                          Expanded(
                            // ignore: deprecated_member_use
                            child: FlatButton(
                              child: Container(
                                height: height * 0.1,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.blue.withOpacity(.7)
                                ),
                                child: Center(child: Text("30", style: TextStyle(fontSize: 22, color: Colors.white), textAlign: TextAlign.center,)),
                              ),
                              onPressed: () {
                                Navigator.push(
                                    context, MaterialPageRoute(builder: (context) => Emsakya(day30)));
                              },
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Expanded(
                            // ignore: deprecated_member_use
                            child: FlatButton(
                              child: Container(
                                height: height * 0.1,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.blue.withOpacity(.7)
                                ),
                                child: Center(child: Text("29", style: TextStyle(fontSize: 22, color: Colors.white), textAlign: TextAlign.center,)),
                              ),
                              onPressed: () {
                                Navigator.push(
                                    context, MaterialPageRoute(builder: (context) => Emsakya(day29)));
                              },
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Expanded(
                            // ignore: deprecated_member_use
                            child: FlatButton(
                              child: Container(
                                height: height * 0.1,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.blue.withOpacity(.7)
                                ),
                                child: Center(child: Text("28", style: TextStyle(fontSize: 22, color: Colors.white), textAlign: TextAlign.center,)),
                              ),
                              onPressed: () {
                                Navigator.push(
                                    context, MaterialPageRoute(builder: (context) => Emsakya(day28)));
                              },
                            ),
                          ),
                        ],
                      ),
                      Padding(padding: EdgeInsets.only(bottom: 40)),
                    ],
                  ),
                ),
              ))
*/
