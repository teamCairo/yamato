import 'package:flutter/material.dart';
import 'package:yamato/question.dart';
import 'package:yamato/db.dart';
import 'package:yamato/root.dart';

import 'filter.dart';

class Subjects {
  const Subjects(this.name, this.num);
  final String name;
  final int num;
}
// ignore: must_be_immutable
class Result extends StatefulWidget {
  Result(this.argumentMode, this.questionYear, this.questionPeriod, this.questionNo, this.argumentTryingListNo);

  final int argumentMode;
  final List<String>questionNo;
  final List <int>questionPeriod;
  final List<int>questionYear;
  final int argumentTryingListNo;


  @override
  _ResultState createState() => _ResultState();
}

class _ResultState extends State<Result> {

  List question2 =[];
  List periodlist2 = [];
  List qnumberlist2 =[];
  List qtextlist2 = [];
  List subjectlist2 = [];
  List moshilist2 = [];
  List pediatrics2 = [];
  List favoritelist2 = [];
  List<bool> moshimisscheck = [];
  List<String> subjectNameList = [];
  List<bool> pediaticscheck =[];
  List<QuestionHeader> questionagain;
  List tryhistory;
  bool _ordercheck = false;
  bool initialdataread = false;
  final fav = Set<String>();

  final List<Subjects> _taisyohyo = <Subjects>[
    Subjects("産科", 1),
    Subjects("婦人", 2),
    Subjects("呼吸", 3),
    Subjects("循環", 4),
    Subjects("消化", 5),
    Subjects("肝胆", 6),
    Subjects("血液", 7),
    Subjects("腎臓", 8),
    Subjects("神経", 9),
    Subjects("内分", 10),
    Subjects("代謝", 11),
    Subjects("アレ", 12),
    Subjects("免疫", 13),
    Subjects("感染", 14),
    Subjects("中毒", 15),
    Subjects("救急", 16),
    Subjects("複合", 17),
    Subjects("小複", 18),
    Subjects("精神", 19),
    Subjects("皮膚", 20),
    Subjects("眼科", 21),
    Subjects("耳鼻", 22),
    Subjects("泌尿", 23),
    Subjects("整形", 24),
    Subjects("放射", 25),
    Subjects("麻酔", 26),
    Subjects("公衆", 27),
    Subjects("一般", 28),
    //Subjects("小児科", 29),
  ];



  void initState() {
    super.initState();
    datainprocess();
  }

  Future<void> datainprocess() async{

    await distribution();

    if(moshilist2 == null){}else{
    for(var i = 0; i < moshilist2.length; i++) {
      if (moshilist2[i] == 0) {
        moshimisscheck.add(false);
      } else if (moshilist2[i] == 1) {
        moshimisscheck.add(true);
      } else {}
    } }
    if(subjectlist2 == null){}else{
    for(var i = 0;i<subjectlist2.length; i++){
      for(final Subjects list in _taisyohyo){
        if(list.num == subjectlist2[i]) {
          subjectNameList.add(list.name);
        }else{}
        }
      }
    }
    if(pediatrics2 == null){}else{
    for(var i=0; i<pediatrics2.length; i++){
      if(pediatrics2[i] == 0){
        pediaticscheck.add(false);
      } else{
        pediaticscheck.add(true);
      }
    }}
    setState(() {
      initialdataread = true;
    });
  }

  Future distribution() async{
    await insertdata();
    if (question2 == null) {
    } else {
      for(var i = 0; i < question2.length; i++) {
        qnumberlist2.add(question2[i].questionNo);
        qtextlist2.add(question2[i].questionText);
        subjectlist2.add(question2[i].subjectId);
        moshilist2.add(question2[i].correctType1);
        favoritelist2.add(question2[i].favorite);
        pediatrics2.add(question2[i].pediatricsType);
        if(question2[i].favorite == false){}else{
          fav.add(question2[i].businessYear.toString()+question2[i].period.toString()+question2[i].questionNo);
        }
      }
    }
  }

  // ignore: missing_return
  Future insertdata() async {
    if(widget.argumentMode != 2 && widget.argumentMode != 4){
      MyDatabase db = MyDatabase();
       await dataget(db);
    }else if(widget.argumentMode == 4){
      MyDatabase db = MyDatabase();
      question2 = [];
    for(var i=0; i<widget.questionYear.length; i++){
      List<QuestionHeader> question1 = await db.selectQuestionHeaderByKey(widget.questionYear[i],
    widget.questionPeriod[i], widget.questionNo[i]);
    if(question2.contains(question1[0])){}else{
    question2.add(question1[0]);
    }
    }
    }
  }


  Future dataget(MyDatabase db) async{
    tryhistory = await db.getAllquestiontryings();
    for(var i=0; i<tryhistory.length; i++){
      questionagain = await db.selectQuestionHeaderByKey(
      tryhistory[i].businessYear, tryhistory[i].period, tryhistory[i].questionNo
    );
      if(questionagain[0].favorite == false){}else{
        fav.add(questionagain[0].businessYear.toString()
            +questionagain[0].period.toString()+questionagain[0].questionNo);}
    question2.add(questionagain[0]);
      }
  }

  Future changeFavorite(int businessYear, int period, String questionNo,bool favoriteValue,MyDatabase db) async {

    List<QuestionHeader> qhforFavoriteList =  await db.selectQuestionHeaderByKey(businessYear,period,questionNo);

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
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final adjustsizeh = MediaQuery.of(context).size.height*0.0011;
    // ignore: non_constant_identifier_names
    List<Widget> Elements =[];
    //List<bool> favoflag = [];
   // for(var i=0; i<question2.length;i++){
    //  favoflag.add(question2[i].favorite);
  //  }
    // ignore: non_constant_identifier_names
    Widget ListElement(int year, int period, String questionNo, String subject,
        String text, bool correctType, bool pedflag, int ordernumber){
      final onoff = fav.contains(year.toString()+period.toString()+questionNo);
      return InkWell(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => Question(
                  argumentMode: 2,
                  argumentBusinessYear: year,
                  argumentPeriod: period,
                  argumentQuestionNo: questionNo,
                  argumentTryingListNo: null
              ),
            ),
          );
        },
        child: Card(
          child: Container(
            height: height*0.13,
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
                                  child: initialdataread == false ? Text('')
                                      :Text("第"+period.toString()+"回"+'/'+questionNo,
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: 14*adjustsizeh,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.black54)),
                                ),
                                SizedBox(
                                  width: width*0.01,
                                ),
                                Container(
                                  child: initialdataread == false ? Text('')
                                      :Text(
                                        subject,
                                    style: TextStyle(
                                        fontSize: 16*adjustsizeh,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.blue),
                                  ),
                                ),
                                SizedBox(width: width*0.005,),
                                initialdataread == false ||  pedflag == false ? Container()
                                :Container(
                                  width: width*0.2,
                                  child: Text("（小児科）",
                                    style: TextStyle(
                                        fontSize: 14*adjustsizeh,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.green[700]),),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: width*0.65,
                            child:Column(children: <Widget>[
                             Container(
                              child: Row(
                                children: <Widget>[
                               SizedBox(
                                width: width*0.05,
                                ),
                               Flexible(
                                child:initialdataread == false ? Text('')
                                    :Text(text,
                                  style: TextStyle(
                                    fontSize: 16*adjustsizeh,
                                    color: Colors.indigo[900],
                                    fontWeight: FontWeight.bold,
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 2,
                                ),
                              )
                            ]),
                            ),
                              SizedBox(height: height*0.01,),
                           ]),
                          ),
                        ],)
                  ),
                  initialdataread == false ? Container()
                      :Container(
                    child: Row(children: <Widget>[
                      Container(
                        height: height*0.086,
                        child: Column(
                          mainAxisAlignment:
                          MainAxisAlignment.center,
                          children: <Widget>[
                            //SizedBox(height: height*0.01),
                            Container(
                              height: height*0.06,
                              width: width*0.15,
                              child: Column(children: <Widget>[
                                Text('＜模試＞',
                                    style: TextStyle(
                                        fontSize: 11*adjustsizeh,
                                        color: Colors.indigo[800],
                                        fontWeight:
                                        FontWeight.w600)),
                                SizedBox(height: height*0.01),
                                correctType == false ? Icon(Icons.radio_button_off, color: Colors.red, size: 30*adjustsizeh)
                                    :Icon(Icons.close, color: Colors.blue, size: 30*adjustsizeh),
                              ]),
                            ),
                            SizedBox(height: height*0.01),
                          ],
                        ),
                      ),
                      SizedBox(width: width*0.02),
                      GestureDetector(
                          onTap: () {
                            setState(() {
                              MyDatabase db=MyDatabase();
                              changeFavorite(year, period, questionNo,!onoff,db);
                              if(onoff == false){
                                fav.add(year.toString()+period.toString()+questionNo);
                              }else{
                                fav.remove(year.toString()+period.toString()+questionNo);
                              }
                            });
                          },
                          child:onoff == false ?
                          Icon(Icons.star_border, color: Colors.blue, size: 30,)
                          :Icon(Icons.star,color: Colors.yellowAccent[700], size: 30,)
                      ),
                      SizedBox(width: width*0.025),
                    ]),
                  ),
                ]),
          ),
        ),
      );}

      if(question2 != null && subjectNameList != null && moshimisscheck != null && pediaticscheck != null
      && question2.length == subjectNameList.length
      ){
    for(var i=0; i<question2.length; i++){
      Elements.add(ListElement(question2[i].businessYear, question2[i].period, question2[i].questionNo,
          subjectNameList[i],question2[i].questionText,moshimisscheck[i], pediaticscheck[i], i));
    }}else{
        Elements.add(ListElement(null , null, null,
            null, null , null , null , 0));
      }


      return Scaffold(
        backgroundColor: Colors.cyan[100],
        appBar: AppBar(
          elevation: 8,
          leading:IconButton(
            icon:Icon(Icons.home_sharp)
            ,onPressed:() {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => RootWidget()
                    ,maintainState:false)
            );
          },),
          title: question2 == null ? Text('') :Text("検索結果：${question2.length}問"),
          backgroundColor: Colors.lightBlue[400],
          actions: [
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: IconButton(
                icon: Icon(Icons.search),
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
              child:question2 == null || subjectNameList == null ||
                    moshimisscheck == null || pediaticscheck == null
                  ? Container()
                  :ListView(
                    children: Elements,
                  ),
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                 SizedBox(height: height*0.01,),
                 Container(
                   height: height*0.03,
                   width: width,
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children:<Widget>[
                    Checkbox(
                     activeColor: Colors.blueAccent,
                     value: _ordercheck,
                     onChanged: (bool value) {
                     setState(() {
                       _ordercheck = value;
                        });
                      },
                    ),

                   Text(
                     "順番をシャッフルする",
                     style: TextStyle(
                       fontSize: 13*adjustsizeh,
                       fontWeight: FontWeight.bold,
                       color: Colors.indigo[900],
                        ),
                      ),
                    SizedBox(width: width*0.06),

                  ]),
               ),
               SizedBox(height: height*0.013),
               Container(
                 padding:  EdgeInsets.fromLTRB(20, 5, 20, 20),
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
                         fontSize: 20*adjustsizeh,
                    ),
                  ),
                ),
              ),
            ),
           ])),
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

    for(var i=0; i<question2.length; i++){
      QuestionTrying qt = QuestionTrying(
          id:null
          ,businessYear:question2[i].businessYear
          ,period:question2[i].period
          ,questionNo:question2[i].questionNo
          ,endFlg:false
          ,correctType:null
          ,singleAnswer:null
          ,multipleAnswer:null
          ,numberAnswer:null);
      db.insertquestiontrying(qt);
    }


  if(question2 != null) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) =>
                Question(
                    argumentMode: 1,
                    argumentBusinessYear: null,
                    argumentPeriod: null,
                    argumentQuestionNo: null,
                    argumentTryingListNo: 1)));
  } else {}
  }
}

