import 'package:flutter/material.dart';
import 'package:yamato/question.dart';
import 'package:yamato/db.dart';

import 'filter.dart';

class Result extends StatefulWidget {
  Result(this.mode, this.question1, this.year, this.peri, this.qnum, this.trynum
      );
  //TODO(△) Result(argumentmode:1-4, argumentQH:??, argumentBY:??,
  // argumentPeri:??, argumentQN:??, argumentQTN:??)
  //TODO（△） QTN系からQH取得
  //TODO（△）　非同期処理調整

  List question1;
  int mode;
  int year;
  int peri;
  String qnum;
  int trynum;

  @override
  _ResultState createState() => _ResultState();
}

class _ResultState extends State<Result> {

  bool favorite = false;
  Color _iconcol = Colors.lightBlue;
  List<int> qorder = <int>[];
  List question2 =[];
  List qtextlist2 = [];
  List kailist2 = [];
  List codelist2 = [];
  List catlist2 = [];
  List hissyulist2 = [];
  List moshilist2 = [];
  List favolist2 = [];
  List<bool> checkm = [];
  List hissyulist = [];
  bool _ordercheck = false;
  List questionagain;
  List tryhistory;
  bool initialdataread = false;
  bool datareadforfav = true;
  List<int> favon = [];
  final fav = Set<String>();


  IconData favoriteIcon;

  void initState() {
    super.initState();
    morewait();
  }

  Future<void> morewait() async{
    await waiting();
    for(var i = 0; i < moshilist2.length; i++) {
      if (moshilist2[i] == 0) {
        checkm.add(false);
      } else if (moshilist2[i] == 1) {
        checkm.add(true);
      } else {}
    }
    setState(() {
      initialdataread = true;
    });

    print(questionagain);
    print(tryhistory);
    print(checkm);
    print(catlist2);
    print(codelist2);
    print(kailist2);
    print(qtextlist2);
  }

  Future waiting() async{
    await insertdata();

    if (question2 == null) {
    } else {
      for(var i = 0; i < question2.length; i++) {
        //kailist2.add(question2[i].period);
        //codelist2.add(question2[i].questionNo);
        //hissyulist2.add(question2[i].compulsoryType);
        catlist2.add(question2[i].subjectId);
        moshilist2.add(question2[i].correctType1);
        //qtextlist2.add(question2[i].questionText);
        //favolist2.add(question2[i].favorite);
      }
    }
  }

  Future insertdata(){
    if(widget.mode != 4){
      MyDatabase db = MyDatabase();
      gettry(db);
    }else if(widget.mode == 4){}
    if (widget.question1 != null) {
      this.question2 = widget.question1;
      print('q2');
      print(question2);
    }
    setState(() {
      datareadforfav = true;
    });
  }

  Future insertdata1() async{
    MyDatabase db = MyDatabase();
    this.question2 = await dataget(db);
    print('確認');
    print(question2);
    setState(() {
      datareadforfav = true;
    });
  }

  void gettry(MyDatabase db) async{
    tryhistory = await db.getAllquestiontryings();
    dataget(db);
  }

  Future dataget(MyDatabase db) async{
    for(var i=0; i<tryhistory.length; i++){
      questionagain = await db.selectQuestionHeaderByKey(
       // widget.year, widget.peri, widget.qnum
      tryhistory[i].businessYear, tryhistory[i].period, tryhistory[i].questionNo
    );
    question2.add(questionagain);}
  }



  Future changeFavorite(int businessYear, int period, String questionNo,bool favoriteValue,MyDatabase db) async {

    List<QuestionHeader> qhforFavoriteList =  await db.selectQuestionHeaderByKey(businessYear,period,questionNo);
    print(qhforFavoriteList[0]);
    print('前');

    QuestionHeader qhforFavorite = QuestionHeader(
        businessYear:qhforFavoriteList[0].businessYear
        ,period:qhforFavoriteList[0].period
        ,questionNo:qhforFavoriteList[0].questionNo
        ,subjectId:qhforFavoriteList[0].subjectId
        ,pediatricsType:qhforFavoriteList[0].pediatricsType
        ,compulsoryType:qhforFavoriteList[0].compulsoryType
        ,answerType:qhforFavoriteList[0].answerType
        ,questionText:qhforFavoriteList[0].questionText
        ,numberAnswer:qhforFavoriteList[0].numberAnswer
        ,correctType1:qhforFavoriteList[0].correctType1
        ,correctType2:qhforFavoriteList[0].correctType2
        ,correctType3:qhforFavoriteList[0].correctType3
        ,favorite:favoriteValue);
//TODO 情報取得・更新不具合修正
    db.updatequestionheader(qhforFavorite);
    print(qhforFavoriteList[0]);
    print('後');

  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    List<Widget> Elements =[];

  ////  for(var i=0; i<question2.length; i++){
  //    favkanri.add(question2[i].favorite);
   // }
    //if(datareadforfav == false){
      //insertdata1();
    //}else{
    //}

    Widget ListElement(int p, String n, int c, String t, bool m, bool f ){
      final onoff = fav.contains('2021'+p.toString()+n);
      return InkWell(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => Question(
                  argumentMode: 2,
                  argumentBusinessYear: null,
                  argumentPeriod: p,
                  argumentQuestionNo: n,
                  argumentTryingListNo: null
              ),
            ),
          );
        },
        child: Card(
          child: Container(
            height: height*0.11,
            //0.097
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment:
                        MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Container(
                            child: Row(
                              mainAxisAlignment:
                              MainAxisAlignment.start,
                              children: <Widget>[
                                SizedBox(width: width*0.012),
                                initialdataread == false ? Container():
                                Container(
                                  width: width*0.25,
                                  child: initialdataread == false ? Text('') :Text(
                                      "第" +
                                          p.toString() +
                                          "回" +
                                          '/' +
                                          n,
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.black54)),
                                ),
                                SizedBox(
                                  width: width*0.01,
                                ),
                                Container(
                                  child: initialdataread == false ? Text('')
                                      :Text(
                                    c.toString(),
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.blue),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: width*0.65,
                            child: Row(children: <Widget>[
                              SizedBox(
                                width: width*0.05,
                              ),
                              Flexible(
                                child:initialdataread == false ? Text('')
                                    :Text(
                                  //qtextlist2[index],
                                  t,
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.indigo[900],
                                    fontWeight: FontWeight.bold,
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 2,
                                ),
                              )
                            ]),
                          ),
                        ],
                      )),
                  initialdataread == false ? Container()
                      :Container(
                    child: Row(children: <Widget>[
                      Container(
                        height: height*0.086,
                        child: Column(
                          mainAxisAlignment:
                          MainAxisAlignment.center,
                          children: <Widget>[
                            SizedBox(
                              height: height*0.01,
                            ),
                            Container(
                              height: height*0.06,
                              width: width*0.15,
                              // Visibility(
                              //  visible: initialdataread == false ? false
                              //     :checkm[index], child:
                              child: Column(children: <Widget>[
                                Text('＜模試＞',
                                    style: TextStyle(
                                        fontSize: 11,
                                        color: Colors.indigo[800],
                                        fontWeight:
                                        FontWeight.w600)),
                                SizedBox(
                                  height: height*0.01,
                                ),
                                m == false ? Icon(Icons.radio_button_off, color: Colors.red, size: 30) :Icon(Icons.close, color: Colors.blue, size: 30),
                              ]),
                            ),
                            SizedBox(
                              height: height*0.01,
                              //0.03
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: width*0.02,
                      ),
                      GestureDetector(
                          onTap: () {
                            //TODO　favorite機能実装
                            setState(() {
                              MyDatabase db=MyDatabase();
                              //datareadforfav =false;
                              if(onoff == false){
                                fav.add('2021'+p.toString()+n);
                              }else{
                                fav.remove('2021'+p.toString()+n);
                              }
                              changeFavorite(2021, p, n,!f,db);
                            });
                          },
                          child:onoff == false ?
                          Icon(
                            Icons.star_border,
                            //favoriteIcon
                            color: Colors.blue,
                            size: 30,
                          )
                              :Icon(Icons.star,color: Colors.yellowAccent, size: 30,)
                      ),
                      SizedBox(
                        width: width*0.025,
                      ),
                    ]),
                  ),
                ]),
          ),
        ),
      );}
      if(question2 != null){
    for(var i=1; i<question2.length; i++){
      Elements.add(ListElement(question2[i].period, question2[i].questionNo,
          question2[i].subjectId, question2[i].questionText,
          checkm[i], question2[i].favorite));
    }}else{}


      return Scaffold(
        backgroundColor: Colors.cyan[100],
        appBar: AppBar(
          elevation: 8,
          leading: Icon(Icons.home_sharp),
          title: question2 == null ? Text('') :Text("検索結果：${question2.length}問"),
          backgroundColor: Colors.lightBlue[400],
          actions: [
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: IconButton(
                icon: Icon(Icons.search),
                //TODO このボタン押下時、前の検索条件を保持する？戻るボタンを押したとき
                //navipopだともっと前の画面に戻ってしまう。new画面且つリセット状態でも不自然ではない？
                onPressed: () => {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Filter(),
                        fullscreenDialog: true,
                      )
                  )},
              ),
            ),
          ],
        ),
        body: Column(
          children: <Widget>[
            Expanded(
              child:question2 == null ? Container()
                  :ListView(
                  //padding: const EdgeInsets.all(8),
                  //itemCount: question2 == null ? 0 :question2.length,
                //  itemBuilder: (BuildContext context, int index) {
                    children: Elements,
                 // }
                  ),
            ),
            SizedBox(
              height: height*0.032,
              width: width*0.62,
              child: CheckboxListTile(
                value: _ordercheck,
                title: Text(
                  "順番をシャッフルする",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    //color: Colors.indigo[900],
                  ),
                ),
                controlAffinity: ListTileControlAffinity.leading,
                onChanged: (bool value) {
                  setState(() {
                    _ordercheck = value;
                  });
                },
              ),
            ),
            Container(
              padding: const EdgeInsets.all(20),
              margin: EdgeInsets.all(4),
              child: SizedBox(
                height: height*0.065,
                width: width*0.7,
                child: ElevatedButton(
                  onPressed: () {
                    startStudy();
                  },
                  child: Text(
                    "演習を始める",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }


  void startStudy() async{

    MyDatabase db = MyDatabase();


    if (_ordercheck == true) {
      question2.shuffle();
    }

    List<QuestionTrying> questiontryingsList = await db.getAllquestiontryings();
    for(var questiontrying in questiontryingsList){
      await db.deletequestiontrying(questiontrying);
    }


    //TODO 一旦サンプルデータを追加。実際のデータに修正が必要。


    QuestionTrying qt0 = QuestionTrying(
        id:null
        ,businessYear:2021
        ,period:1
        ,questionNo:'A05'
        ,endFlg:false
        ,correctType:null
        ,singleAnswer:null
        ,multipleAnswer:null
        ,numberAnswer:null);
    db.insertquestiontrying(qt0);


    QuestionTrying qt1 = QuestionTrying(
        id:null
        ,businessYear:2021
        ,period:1
        ,questionNo:'C10'
        ,endFlg:false
        ,correctType:null
        ,singleAnswer:null
        ,multipleAnswer:null
        ,numberAnswer:null);
    db.insertquestiontrying(qt1);

    QuestionTrying qt2 = QuestionTrying(
        id:null
        ,businessYear:2021
        ,period:1
        ,questionNo:'B15'
        ,endFlg:false
        ,correctType:null
        ,singleAnswer:null
        ,multipleAnswer:null
        ,numberAnswer:null);
    db.insertquestiontrying(qt2);

    QuestionTrying qt3 = QuestionTrying(
        id:null
        ,businessYear:2021
        ,period:1
        ,questionNo:'D20'
        ,endFlg:false
        ,correctType:null
        ,singleAnswer:null
        ,multipleAnswer:null
        ,numberAnswer:null);
    db.insertquestiontrying(qt3);

    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => Question(
                argumentMode: 1,
                argumentBusinessYear: null,
                argumentPeriod: null,
                argumentQuestionNo: null,
                argumentTryingListNo: 1)));
  }
}

