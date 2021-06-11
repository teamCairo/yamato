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

  List questions =[];
  List subjectList = [];
  List moshiList = [];
  List pediatricsList = [];
  List<bool> moshiMissCheck = [];
  List<String> subjectNameList = [];
  List<bool> pediaticsCheck =[];
  List<QuestionForSearch> questionAgain;
  List tryHistory;
  bool _ordercheck = false;
  bool initialDataRead = false;
  final favManager = Set<String>();

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
    if(moshiList == null){}else{
    for(var i = 0; i < moshiList.length; i++) {
      if (moshiList[i] == 0) {
        moshiMissCheck.add(false);
      } else if (moshiList[i] == 1) {
        moshiMissCheck.add(true);
      } else {}
    } }
    //if(subjectList == null){}else{
     //for(var i = 0;i<subjectList.length; i++){
      //for(final Subjects list in _taisyohyo){
        //if(list.num == subjectList[i]) {
         // subjectNameList.add(list.name);
        //}else{}
       // }
    //  }
    //}
    if(pediatricsList == null){}else{
    for(var i=0; i<pediatricsList.length; i++){
      if(pediatricsList[i] == 0){
        pediaticsCheck.add(false);
      } else{
        pediaticsCheck.add(true);
      }
    }}
    setState(() {
      initialDataRead = true;
    });
  }

  Future distribution() async{
    await insertdata();
    if (questions == null) {
    } else {
      for(var i = 0; i < questions.length; i++) {
        subjectList.add(questions[i].subjectId);
        moshiList.add(questions[i].correctType1);
        pediatricsList.add(questions[i].pediatricsType);
        if(questions[i].favorite == false){
          if(favManager.contains(questions[i].businessYear.toString()+questions[i].period.toString()+questions[i].questionNo)){
            favManager.remove(questions[i].businessYear.toString()+questions[i].period.toString()+questions[i].questionNo);
          } else{}
        }else{
          favManager.add(questions[i].businessYear.toString()+questions[i].period.toString()+questions[i].questionNo);
        }
      }
    }
  }


  Future<void> insertdata() async {
    if(widget.argumentMode != 2 && widget.argumentMode != 4){
      MyDatabase db = MyDatabase();
       await dataget(db);
    }else if(widget.argumentMode == 4){
      MyDatabase db = MyDatabase();
      questions = [];
    for(var i=0; i<widget.questionYear.length; i++){
      List<QuestionForSearch> question1 = await db.selectQuestionForSearchByKey(widget.questionYear[i],
    widget.questionPeriod[i], widget.questionNo[i]);
    if(questions.contains(question1[0])){}else{
      questions.add(question1[0]);
    }
    }
    }
  }


  Future dataget(MyDatabase db) async{
    tryHistory = await db.getAllquestiontryings();
    for(var i=0; i<tryHistory.length; i++){
      questionAgain = await db.selectQuestionForSearchByKey(
          tryHistory[i].businessYear, tryHistory[i].period, tryHistory[i].questionNo
    );
      if(questionAgain[0].favorite == false){}else{
        favManager.add(questionAgain[0].businessYear.toString()
            +questionAgain[0].period.toString()+questionAgain[0].questionNo);}
      questions.add(questionAgain[0]);
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

    db.updatequestionheader(qhforFavorite);
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final adjustsizeh = MediaQuery.of(context).size.height*0.0011;
    // ignore: non_constant_identifier_names
    List<Widget> Elements =[];

    // ignore: non_constant_identifier_names
    Widget ListElement(int year, int period, String questionNo, String subject,
        String text, bool correctType, bool pedflag, int ordernumber){
      final onoff = favManager.contains(year.toString()+period.toString()+questionNo);
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
            height: height*0.12,
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
                                initialDataRead == false ? Container():
                                Container(
                                  width: width*0.25,
                                  child: initialDataRead == false ? Text('')
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
                                  child: initialDataRead == false ? Text('')
                                      :Text(
                                        subject,
                                    style: TextStyle(
                                        fontSize: 16*adjustsizeh,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.blue),
                                  ),
                                ),
                                SizedBox(width: width*0.005,),
                                initialDataRead == false ||  pedflag == false ? Container()
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
                                child:initialDataRead == false ? Text('')
                                    :Text(text,
                                  style: TextStyle(
                                    fontSize: 16*adjustsizeh,
                                    color: Colors.indigo[900],
                                    fontWeight: FontWeight.bold,
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 1,
                                ),
                              )
                            ]),
                            ),
                              SizedBox(height: height*0.012,),
                           ]),
                          ),
                        ],)
                  ),
                  initialDataRead == false ? Container()
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
                                favManager.add(year.toString()+period.toString()+questionNo);
                              }else{
                                favManager.remove(year.toString()+period.toString()+questionNo);
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

      if(questions != null && moshiMissCheck != null && pediaticsCheck != null

      ){
    for(var i=0; i<questions.length; i++){
      Elements.add(ListElement(questions[i].businessYear, questions[i].period, questions[i].questionNo,
          questions[i].subjectName,questions[i].questionText,moshiMissCheck[i], pediaticsCheck[i], i));
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
          centerTitle: true,
          title: initialDataRead == null ? Text('') :Text("検索結果：${questions.length}問"),
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
              child:questions == null ||
                  moshiMissCheck == null || pediaticsCheck == null
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
      questions.shuffle();
    }

    List<QuestionTrying> questiontryingsList = await db.getAllquestiontryings();
    for(var questiontrying in questiontryingsList){
      await db.deletequestiontrying(questiontrying);
    }

    for(var i=0; i<questions.length; i++){
      QuestionTrying qt = QuestionTrying(
          id:null
          ,businessYear:questions[i].businessYear
          ,period:questions[i].period
          ,questionNo:questions[i].questionNo
          ,endFlg:false
          ,correctType:9
          ,singleAnswer:null
          ,multipleAnswer:null
          ,numberAnswer:null);
      db.insertquestiontrying(qt);
    }


  if(questions != null) {
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

