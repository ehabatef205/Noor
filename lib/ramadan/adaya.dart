import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AtaytRamadan extends StatefulWidget {
  @override
  _AtaytRamadanState createState() => _AtaytRamadanState();
}

class _AtaytRamadanState extends State<AtaytRamadan> {

  List<String> azkat = [
    "اللهم أهله علينا بالأمن والإيمان، والسلامة والإسلام، والعافية المجللة والرزق الواسع، ودفع الأسقام، اللهم ارزقنا صيامه وقيامه وتلاوة القرآن فيه، وسلمه لنا، وتسلّمه منا وسلمنا فيه.",
    "اللهم اجعل صيامي فيه صيام الصائمين وقيامي فيه قيام القائمين، ونبهني فيه عَن نومة الغافلين، وهب لي جرمي فيه يا رب العالمين، واعف عني يا عافيًا عن المجرمين.",
    "اللهم إنّك عفو كريم تحب العفو فاعف عنا يا كريم.",
    "اللهم آتنا في الدنيا حسنة وفي الآخرة حسنة وقنا عذاب النار، اللهم إني أعوذ بك من الفقر والقلة والذلة، وأعوذ بك من أن أَظلِم أو أُظلَم ،يا مقلب القلوب ثبت قلبي على دينك .",
    "اللهم إني أعوذ بك من العجز والكسل والجبن والهرم والبخل، وأعوذ بك من عذاب القبر ومن فتنة المحيا والممات، الله أهدني وسدني، اللهم إني أسالك الهدى والسداد.",
    "اللهم إني أعوذ بك من منكرات الأخلاق، والأعمال والأهواء، اللهم إني أعوذ بك من قلب لا يخشع، ودعاء لا يسمع، ومن نفس لا تشبع، ومن علم لا ينفع، أعوذ بك من هؤلاء الأربع.",
    "اللهم إني أعوذ بك من زوال نعمتك، وتحول عافيتك، وفجأة نقمتك، وجميع سخطك، اللهم إني أسألك علما نافعا ورزقا طيبا متقبلا.",
    "اللهم اجعل صيامي فيه صيام الصائمين وقيامي فيه قيام القائمين، ونبهني فيه عَن نومة الغافلين، وهب لي جرمي فيه يا رب العالمين، واعف عني يا عافيًا عن المجرمين.",
    "اللهم اجعل صيامي فيهِ بالشّكر والقبول على ما ترضاه ويرضاهُ الرّسول محكمةً فروعه بالأصول، بحقّ سيّدنا محمدٍ وآله الطّاهرين، والحمد لله ربّ العالمين.",
    "يارب في خير شهر وخير أيام تفضلت فيها على عبادك أن تهديني هداية لا ضلال بعدها، وأن تثبتني على الطاعة وتكفيني بعزتك وقدرتك التي لا تنضب ولا تحرم منها أحدًا شر أربع مغريات للنفوس الدنيا والهوى والشيطان والنفس أمارة السوء، اللهم ارزقني حسن العود والرجوع.",
    "اللهم في شهرك الكريم وسائر الأشهر ارزقنا إطعام المساكين ورحمة اليتيم والعطف على المسكين، واكفنا بعزتك الغلاء والوباء والإعراض عن طاعتك، سبحانك أنت الحق وقولك الحق وأنبيائك حق وجنتك وعذابك حق لا إله إلا أنت.",
    "للهم هذا الشهر الذي انزلت فيه القرآن الكريم وأنزلت فيه آيات بينات من الهدى والفرقان، اللهم ارزقنا صيامه، وأعنّا على قيامه، واجعل الله فيما تقضي من الأمر المحتوم، وفيما تُفرّق من الأمر الحكيم في ليلة القدر من القضاء الذي لا يُرد ولا يُبدل أن تكتبني من عتقاء هذا الشهر.",
    "اللهم بعلمك الغيب، وقدرتك على الخلق أحيني ما علمتَ الحياة خيراً لي، وتوفني إذا علمت الوفاة خيراً لي، اللهم وأسألك خشيتك في الغيب والشهادة، وأسألك كلمة الحق في الرضا والغضب، وأسألك القصد في الفقر والغنى.وأسألك نعيماً لا ينفد.",
    "اللهم اجعل لي فيه نصيبا من رحمتك الواسعة، واهدني فيه لبراهينك الساطعة، وخذ بناصيتي إلى مرضاتك الجامعة بمحبتك يا امل المشتاقين.",
    "اللهم اجعلني فيه من المتوكلين عليك، واجعلني فيه من الفائزين لديك، واجعلني فيه من المقربين اليك باحسانك يا غاية الطالبين.",
    "اللهم حبب الي فيه الإحسان، وكره فيه الفسوق والعصيان وحرم علي فيه السخط والنيران بعونك ياغياث المستغيثين.",
    "اللهم زيني فيه بالستر والعفاف، واسترني فيه بلباس القنوع والكفاف، واحملني فيه على العدل والانصاف، وآمني فيه من كل ما اخاف بعصمتك ياعصمة الخائفين.",
    "اَللّهُمَّ وَفِّقْني فيهِ لِمُوافَقَةِ الْأبرارِ، وَجَنِّبْني فيهِ مُرافَقَةِ الأشرارِ، وَآوني فيهِ برَحمَتِكَ إلى دارِ القَرارِ بإلهيَّتِكَ يا إله العالمينَ.",
    "اَللّهُمَّ اهدِني فيهِ لِصالِحِ الأعْمالِ، واقْضِ لي فيهِ الحوائِجَ والآمالِ يا مَنْ لا يَحتاجُ إلى التَّفسيرِ والسُّؤالِ، يا عالِماً بِما في صُدُورِ العالمينَ صَلِّ عَلى مُحَمَّدٍ وآله الطّاهرينَ.",
    "اللّهُمَّ نَبِّهني فيهِ لِبَرَكاتِ أسحارِهِ، ونوِّرْ قَلْبي بِضِياءِ أنوارِهِ، وخُذْ بِكُلِّ أعْضائِي إلى اتِّباعِ آثارِهِ بِنُورِكَ يا مُنَوِّرَ قُلُوبِ العارفينَ.",
    "اَللّهُمَّ وَفِّر فيهِ حَظّي مِن بَرَكاتِهِ، وسَهِّلْ سَبيلي إلى خيْراتِهِ، ولا تَحْرِمْني قَبُولَ حَسَناتِهِ يا هادِياً إلى الحَقِّ المُبينِ.",
    "اَللّهُمَّ افْتَحْ لي فيهِ أبوابَ الجِنان، وأغلِقْ عَنَّي فيهِ أبوابَ النِّيرانِ، ووَفِّقْني فيهِ لِتِلاوَةِ الْقُرآنِ يامُنْزِلَ السَّكينَةِ في قُلُوبِ المؤمنين.",
    "اللهم إني أعوذ بك من زوال نعمتك وتحول عافيتك وفجاءة نقمتك وجميع سخطك.",
    "اللهم مصرف القلوب صرف قلوبنا على طاعتك.",
    "اللهم اكفني بحلالك عن حرامك وأغنني بفضلك عمن سواك.",
  ];

  List<int> count = [
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
  ];

  List<int> recount = [
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
  ];

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
        body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/a.jpg"), fit: BoxFit.fill)),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                    height: height * 0.2,
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Text("أدعية شهر رمضان", style: TextStyle(color: Colors.white, fontSize: 18)),
                    )),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(topRight: Radius.circular(40), topLeft: Radius.circular(40)),
                    ),
                    padding: EdgeInsets.only(top: 15),
                    child: ListView.builder(
                        padding: EdgeInsets.zero,
                        shrinkWrap: true,
                        itemCount: azkat.length,
                        itemBuilder: (context, index) {
                          return Column(children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(right: 10, left: 10),
                              child: Text(
                                azkat[index],
                                style: TextStyle(fontSize: 20),
                                textDirection: TextDirection.rtl,
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Container(
                                child: Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: Row(
                                    children: <Widget>[
                                      Expanded(
                                        child: Padding(
                                          padding: EdgeInsets.only(left: 20),
                                          child: RaisedButton(
                                            color: Colors.lightBlueAccent,
                                            textColor: Colors.black38,
                                            child: Padding(
                                              padding: EdgeInsets.only(top: 20, bottom: 20),
                                              child: Text(
                                                count[index].toString(),
                                                textScaleFactor: 2,
                                              ),
                                            ),
                                            onPressed: () {
                                              setState(() {
                                                if (count[index] > 0) count[index]--;
                                              });
                                            },
                                          ),
                                        ),
                                      ),
                                      Container(
                                        width: 10,
                                      ),
                                      Expanded(
                                        child: Padding(
                                          padding: EdgeInsets.only(right: 20),
                                          child: RaisedButton(
                                            color: Colors.lightBlueAccent,
                                            child: Padding(
                                                padding: EdgeInsets.only(top: 20, bottom: 20),
                                                child: Icon(
                                                  Icons.refresh,
                                                  size: 33,
                                                  color: Colors.black38,
                                                )),
                                            onPressed: () {
                                              setState(() {
                                                count[index] = recount[index];
                                              });
                                            },
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                )),
                          ]);
                        }),
                  ),
                )
              ]),
        ));
  }
}
