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
    "13",
    "الثلاثاء",
    "11:55",
    "4:00",
    "3:40",
    "7:42",
    "6:21",
    "3:30",
    "اللهم وفقني للقبول في رمضان وأصلح لي من حالي ونفسي ما تجعله أهلًا لطاعتك وجزيل ثوابك وفضلك",
  ];

  List<String> day2 = [
    "2",
    "أبريل",
    "14",
    "الأربعاء",
    "11:55",
    "3:59",
    "3:39",
    "7:42",
    "6:22",
    "3:30",
    "اللهم تقبله مني رغم زلتي وأصلح لي فيما تبقى منه يا أكرم الأكرمين",
  ];

  List<String> day3 = [
    "3",
    "أبريل",
    "15",
    "الخميس",
    "11:55",
    "3:57",
    "3:37",
    "7:43",
    "6:22",
    "3:30",
    "يارب في خير شهر وخير أيام تفضلت فيها على عبادك اهدني هداية لا ضلال بعدها",
  ];

  List<String> day4 = [
    "4",
    "أبريل",
    "16",
    "الجمعة",
    "11:55",
    "3:56",
    "3:36",
    "7:44",
    "6:23",
    "3:30",
    "يارب في خير شهر وخير أيام تفضلت فيها على عبادك اهدني هداية لا ضلال بعدها",
  ];

  List<String> day5 = [
    "5",
    "أبريل",
    "17",
    "السبت",
    "11:54",
    "3:55",
    "3:35",
    "7:45",
    "6:24",
    "3:30",
    "اللهم في شهرك الكريم وسائر الأشهر ارزقنا إطعام المساكين ورحمة اليتيم والعطف على المحتاجين",
  ];

  List<String> day6 = [
    "6",
    "أبريل",
    "18",
    "الأحد",
    "11:54",
    "3:53",
    "3:33",
    "7:46",
    "6:24",
    "3:30",
    "اللهم اكفنا بعزتك الغلاء والوباء والإعراض عن طاعاتك",
  ];

  List<String> day7 = [
    "7",
    "أبريل",
    "19",
    "الأثنين",
    "11:54",
    "3:52",
    "3:32",
    "7:46",
    "6:25",
    "3:30",
    "اللهم ارزقني فيه طاعة الخاشعين واشرح فيه صدري بإنابة المختبئين بأمانك يا أمان الخائفين",
  ];

  List<String> day8 = [
    "8",
    "أبريل",
    "20",
    "الثلاثاء",
    "11:54",
    "3:51",
    "3:31",
    "7:47",
    "6:25",
    "3:30",
    "اللهم زد بعفوك وكرمك علينا بشهر فاضت فيه أنوار رحمتك وبركتك فحبب لنا فيه الخيرات والاستباق إليها",
  ];

  List<String> day9 = [
    "9",
    "أبريل",
    "21",
    "الأربعاء",
    "11:54",
    "3:49",
    "3:29",
    "7:48",
    "6:26",
    "3:30",
    "اللهم بغض إلينا في شهرنا هذا الخمول والكسل وابعدنا عنه",
  ];

  List<String> day10 = [
    "10",
    "أبريل",
    "22",
    "الخميس",
    "11:53",
    "3:48",
    "3:28",
    "7:49",
    "6:27",
    "3:29",
    "اللهم ارزقنا في شهرك تقواك وحسن عافيتك وشهادة على طاعة",
  ];

  List<String> day11 = [
    "11",
    "أبريل",
    "23",
    "الجمعة",
    "11:53",
    "3:47",
    "3:27",
    "7:50",
    "6:27",
    "3:29",
    "الله توبة ترضاها تحبب لنا لقاءك وتحبب لقاءنا بك",
  ];

  List<String> day12 = [
    "12",
    "أبريل",
    "24",
    "السبت",
    "11:53",
    "3:46",
    "3:26",
    "7:51",
    "6:28",
    "3:29",
    "اللهم أنت ربي لا إله إلا أنت عليك توكلت وأنت رب العرض العظيم",
  ];

  List<String> day13 = [
    "13",
    "أبريل",
    "25",
    "الأحد",
    "11:53",
    "3:44",
    "3:24",
    "7:52",
    "6:29",
    "3:29",
    "أعوذ بالله مما أخاف وأحاذر، الله ربي لا أشرك به شيئًا",
  ];

  List<String> day14 = [
    "14",
    "أبريل",
    "26",
    "الأثنين",
    "11:53",
    "3:43",
    "3:23",
    "7:52",
    "6:29",
    "3:29",
    "اللهم إني أعوذ بك من شر كل جبار عنيد وشيطان مريد ومن شر قضاء السوء",
  ];

  List<String> day15 = [
    "15",
    "أبريل",
    "27",
    "الثلاثاء",
    "11:52",
    "3:42",
    "3:22",
    "7:53",
    "6:30",
    "3:29",
    "اللهم إنا نستعينك ونستغفرك ونؤمن بك ونتوكل عليك ونثني عليك الخير كله نشكرك ولا نكفرك ونخلع ونترك من يكفرك",
  ];

  List<String> day16 = [
    "16",
    "أبريل",
    "28",
    "الأربعاء",
    "11:52",
    "3:41",
    "3:21",
    "7:54",
    "6:31",
    "3:29",
    "اللهم اهدنا فيمن هديت وعافنا فيمن عافيت وتولنا فيمن توليت وبارك لنا فيما أعطيت وقنا واصرف عنا شر ما قضيت",
  ];

  List<String> day17 = [
    "17",
    "أبريل",
    "29",
    "الخميس",
    "11:52",
    "3:39",
    "3:19",
    "7:55",
    "6:31",
    "3:29",
    "نستغفرلك اللهم من جميع الذنوب والخطايا ونتوب إليك لا ملجأ ولا منجي إلا إليك",
  ];

  List<String> day18 = [
    "18",
    "أبريل",
    "30",
    "الجمعة",
    "11:52",
    "3:38",
    "3:18",
    "7:56",
    "6:32",
    "3:29",
    "اللهم إياك نعبد ولك نصلي ونسجد وإليك نسعى نرجو رحمتك يا الله ونخاف عذابك إن عذابك الجد بالكفار ملحق",
  ];

  List<String> day19 = [
    "19",
    "مايو",
    "1",
    "السبت",
    "11:52",
    "3:37",
    "3:17",
    "7:57",
    "6:32",
    "3:29",
    "اللهم أنت ربي خلقتني وأنا عبدك، وأنا على عهدك ووعدك ما استطعت فاغفر لي وارحمني إنه لا يغفر الذنوب إلا أنت",
  ];

  List<String> day20 = [
    "20",
    "مايو",
    "2",
    "الأحد",
    "11:52",
    "3:36",
    "3:16",
    "7:58",
    "6:33",
    "3:29",
    "اللهم لا مانع لما أعطيت ولا معطى لما منعت ارزقنا رزقًا طيبًا وعملًا متقبلًا",
  ];

  List<String> day21 = [
    "21",
    "مايو",
    "3",
    "الأثنين",
    "11:52",
    "3:35",
    "3:15",
    "7:59",
    "6:34",
    "3:29",
    "اللهم أني أسألك العافية في الدنيا والأخرة اللهم إني أسألك العفو والعافية في ديني ونياي",
  ];

  List<String> day22 = [
    "22",
    "مايو",
    "4",
    "الثلاثاء",
    "11:52",
    "3:33",
    "3:13",
    "8:00",
    "6:34",
    "3:29",
    "اللهم استر عوراتي وآمن روعاتي",
  ];

  List<String> day23 = [
    "23",
    "مايو",
    "5",
    "الأربعاء",
    "11:52",
    "3:32",
    "3:12",
    "8:01",
    "6:35",
    "3:29",
    "اللهم إني أصبحت أشهدك وأشهد حملة عرشك وملائكتك وجميع خلقك أنك أنت الله لا إله إلا أنت وحدك لا شريك لك وأن محمدًا عبدك ورسولك",
  ];

  List<String> day24 = [
    "24",
    "مايو",
    "6",
    "الخميس",
    "11:51",
    "3:31",
    "3:11",
    "8:01",
    "6:36",
    "3:29",
    "اللهم عافني في بدني وعافني في سمعي ىوعافني في بصري",
  ];

  List<String> day25 = [
    "25",
    "مايو",
    "7",
    "الجمعة",
    "11:51",
    "3:30",
    "3:10",
    "8:02",
    "6:36",
    "3:28",
    "اللهم إني أعوذ بك من الكفر والفقر، لا إله إلا أنت",
  ];

  List<String> day26 = [
    "26",
    "مايو",
    "8",
    "السبت",
    "11:51",
    "3:29",
    "3:09",
    "8:03",
    "6:37",
    "3:28",
    "رضيت بالله ربًا وبالإسلام دينًا وبسيدنا محمد صلى الله عليه وسلم نبيًا ورسولًا",
  ];

  List<String> day27 = [
    "27",
    "مايو",
    "9",
    "الأحد",
    "11:51",
    "3:28",
    "3:08",
    "8:04",
    "6:38",
    "3:28",
    "اللهم إنك عفو تحب العفو فاعف عني",
  ];

  List<String> day28 = [
    "28",
    "مايو",
    "10",
    "الأثنين",
    "11:51",
    "3:27",
    "3:07",
    "8:05",
    "6:38",
    "3:28",
    "اللهم إني أعوذ بك من الهم والحزن والعجز والكسل وغلبة الدين وقهر الرجال",
  ];

  List<String> day29 = [
    "29",
    "مايو",
    "11",
    "الثلاثاء",
    "11:51",
    "3:26",
    "3:06",
    "8:06",
    "6:39",
    "3:28",
    "اللهم ارزقني فضل قيام ليلة القدر وسهل أموري فيه من العسر إلى اليسر",
  ];

  List<String> day30 = [
    "30",
    "مايو",
    "12",
    "الأربعاء",
    "11:51",
    "3:25",
    "3:05",
    "8:07",
    "6:40",
    "3:28",
    "اللهم لك الحمد على أن بلغتنا شهر رمضان، اللهم تقبل منا الصيام والقيام، وأحسن لنا الختام",
  ];

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
        body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/a.jpg"), fit: BoxFit.fill)),
          child: Center(
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
          ),
        ));
  }
}
