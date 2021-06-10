import 'package:flutter/material.dart';
import 'package:yamato/db.dart';
import 'package:yamato/root.dart';
import 'package:yamato/answer.dart';
import 'package:yamato/question.dart';

class AnswerList extends StatefulWidget {
  @override
  _AnswerListState createState() => _AnswerListState();
}

class _AnswerListState extends State<AnswerList> {
  MyDatabase db = MyDatabase();
  final double elev = 20;
  bool initialDataRead = false;
  List<AnswerListInfo> answerListInfoList = [];
  final favManager = Set<String>();

  @override
  void initState(){
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final adjustsizeh = MediaQuery.of(context).size.height*0.0011;

    List<Widget> questionInfoElements = [];
    if (initialDataRead == false) {
      loadAsset();
    } else {}


    Widget ListElement(int year, int period, String questionNo, String subject,
        String text, int correctType, int pedType, int ordernumber){
      final onoff = favManager.contains(year.toString()+period.toString()+questionNo);

      Icon correctIcon;
      if(correctType==0){
        correctIcon=Icon(Icons.close, color: Colors.indigo, size: 30*adjustsizeh);

      }else if(correctType==1){
        correctIcon=Icon(Icons.radio_button_off, color: Colors.red, size: 30*adjustsizeh);

      }else{
        correctIcon=null;

      }

      print(correctIcon);


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
                                initialDataRead == false ||  pedType == 0 ? Container()
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
                                          maxLines: 2,
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
                                Text('＜結果＞',
                                    style: TextStyle(
                                        fontSize: 11*adjustsizeh,
                                        color: Colors.indigo[800],
                                        fontWeight:
                                        FontWeight.w600)),
                                SizedBox(height: height*0.01),
                                correctIcon==null ? Text("ー",
                                    style: TextStyle(
                                        fontSize: 16*adjustsizeh,
                                        color: Colors.indigo[800],
                                      fontWeight: FontWeight.bold,)): correctIcon
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

    questionInfoElements = [];
    if (answerListInfoList != null) {
      for (var i = 0; i < answerListInfoList.length; i++) {
        print("QTID："+answerListInfoList[i].id.toString());
        print("Subject："+answerListInfoList[i].subjectName);
        print("ped："+answerListInfoList[i].pediatricsType.toString());
        print("correct："+answerListInfoList[i].correctType.toString());
        questionInfoElements.add(ListElement(
            answerListInfoList[i].businessYear,
            answerListInfoList[i].period,
            answerListInfoList[i].questionNo,
            answerListInfoList[i].subjectName,
            answerListInfoList[i].questionText,
            answerListInfoList[i].correctType,
            answerListInfoList[i].pediatricsType,
            i+1));
      }

    } else {}


    return Scaffold(
        backgroundColor: Colors.cyan[100],
        appBar: AppBar(
          elevation: 8,
          leading: IconButton(
            icon:Icon(Icons.home_sharp)
            ,onPressed:() {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => RootWidget()
                    ,maintainState:false)
            );
          },),
          title: answerListInfoList == null
              ? Text('')
              : Text("結果一覧"),
          backgroundColor: Colors.lightBlue[400],
          actions: [],
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                child: answerListInfoList == null
                    ? Container()
                    : ListView(
                        children: questionInfoElements,
                      ),
              ),
              Container(
                padding: const EdgeInsets.all(20),
                margin: EdgeInsets.all(4),
                child: SizedBox(
                  height: height * 0.065,
                  width: width * 0.7,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => RootWidget(),
                        ),
                      );
                    },
                    child: Text(
                      "ホームに戻る",
                      style: TextStyle(
                        fontSize: 20*adjustsizeh,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
  }

  void loadAsset() async {
    MyDatabase db = MyDatabase();

    this.answerListInfoList = await db.selectAnswerListInfoAll();

    for(var i = 0; i < answerListInfoList.length; i++) {
      if(answerListInfoList[i].favorite == false){
        if(favManager.contains(answerListInfoList[i].businessYear.toString()+answerListInfoList[i].period.toString()+answerListInfoList[i].questionNo)){
          favManager.remove(answerListInfoList[i].businessYear.toString()+answerListInfoList[i].period.toString()+answerListInfoList[i].questionNo);
        } else{}
      }else{
        favManager.add(answerListInfoList[i].businessYear.toString()+answerListInfoList[i].period.toString()+answerListInfoList[i].questionNo);
      }
    }

    setState(() {
      initialDataRead = true;
    });
  }



  void changeFavorite(int businessYear, int period, String questionNo,
      bool favoriteValue, MyDatabase db) async {
    List<QuestionHeader> qhforFavoriteList =
        await db.selectQuestionHeaderByKey(businessYear, period, questionNo);
    print(qhforFavoriteList[0]);

    QuestionHeader qhforFavorite = QuestionHeader(
        businessYear: qhforFavoriteList[0].businessYear,
        period: qhforFavoriteList[0].period,
        questionNo: qhforFavoriteList[0].questionNo,
        subjectId: qhforFavoriteList[0].subjectId,
        pediatricsType: qhforFavoriteList[0].pediatricsType,
        compulsoryType: qhforFavoriteList[0].compulsoryType,
        answerType: qhforFavoriteList[0].answerType,
        questionText: qhforFavoriteList[0].questionText,
        numberAnswer: qhforFavoriteList[0].numberAnswer,
        correctType1: qhforFavoriteList[0].correctType1,
        correctType2: qhforFavoriteList[0].correctType2,
        correctType3: qhforFavoriteList[0].correctType3,
        favorite: favoriteValue);

    db.updatequestionheader(qhforFavorite);
  }
}
