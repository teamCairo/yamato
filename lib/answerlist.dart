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

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    List<Widget> questionInfoElements = [];
    if (initialDataRead == false) {
      loadAsset();
    } else {}

    Widget ListElement(int businessYear, int period, String questionNo,
        int subjectId, String questionText, int correctType, bool favorite) {
      return InkWell(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => Question(
                  argumentMode: 2,
                  argumentBusinessYear: businessYear,
                  argumentPeriod: period,
                  argumentQuestionNo: questionNo,
                  argumentTryingListNo: null),
            ),
          );
        },
        child: Card(
          child: Container(
            height: height * 0.11,
            //0.097
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            SizedBox(width: width * 0.012),
                            initialDataRead == false
                                ? Container()
                                : Container(
                                    width: width * 0.25,
                                    child: initialDataRead == false
                                        ? Text('')
                                        : Text(
                                            "第" +
                                                period.toString() +
                                                "回" +
                                                '/' +
                                                questionNo,
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w600,
                                                color: Colors.black54)),
                                  ),
                            SizedBox(
                              width: width * 0.01,
                            ),
                            Container(
                              child: initialDataRead == false
                                  ? Text('')
                                  : Text(
                                      subjectId.toString(),
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
                        width: width * 0.65,
                        child: Row(children: <Widget>[
                          SizedBox(
                            width: width * 0.05,
                          ),
                          Flexible(
                            child: initialDataRead == false
                                ? Text('')
                                : Text(
                                    //qtextlist2[index],
                                    questionText,
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
                  initialDataRead == false
                      ? Container()
                      : Container(
                          child: Row(children: <Widget>[
                            Container(
                              height: height * 0.1,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  SizedBox(
                                    height: height * 0.01,
                                  ),
                                  Container(
                                    height: height * 0.08,
                                    width: width * 0.15,
                                    // Visibility(
                                    //  visible: initialDataRead == false ? false
                                    //     :checkm[index], child:
                                    child: Column(children: <Widget>[
                                      Text('＜正誤＞',
                                          style: TextStyle(
                                              fontSize: 11,
                                              color: Colors.indigo[800],
                                              fontWeight: FontWeight.w600)),
                                      SizedBox(
                                        height: height * 0.01,
                                      ),
                                      correctType == 0
                                          ? Icon(Icons.radio_button_off,
                                              color: Colors.red, size: 30)
                                          : Icon(Icons.close,
                                              color: Colors.blue, size: 30),
                                    ]),
                                  ),
                                  SizedBox(
                                    height: height * 0.01,
                                    //0.03
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: width * 0.02,
                            ),
                            GestureDetector(
                                onTap: () {
                                  setState(() {
                                    MyDatabase db = MyDatabase();
                                    changeFavorite(businessYear, period,
                                        questionNo, !favorite, db);
                                  });
                                },
                                child: favorite == false
                                    ? Icon(
                                        Icons.star_border,
                                        //favoriteIcon
                                        color: Colors.blue,
                                        size: 30,
                                      )
                                    : Icon(
                                        Icons.star,
                                        color: Colors.yellowAccent,
                                        size: 30,
                                      )),
                            SizedBox(
                              width: width * 0.025,
                            ),
                          ]),
                        ),
                ]),
          ),
        ),
      );
    }

    questionInfoElements = [];
    if (answerListInfoList != null) {
      for (var i = 0; i < answerListInfoList.length; i++) {
        questionInfoElements.add(ListElement(
            answerListInfoList[i].businessYear,
            answerListInfoList[i].period,
            answerListInfoList[i].questionNo,
            answerListInfoList[i].subjectId,
            answerListInfoList[i].questionText,
            answerListInfoList[i].correctType,
            answerListInfoList[i].favorite));
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
              : Text("検索結果：${answerListInfoList.length}問"),
          backgroundColor: Colors.lightBlue[400],
          actions: [],
        ),
        body: Column(
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

  void loadAsset() async {
    MyDatabase db = MyDatabase();

    this.answerListInfoList = await db.selectAnswerListInfoAll();

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
