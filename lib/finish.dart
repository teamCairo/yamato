import 'package:flutter/material.dart';
import 'package:yamato/question.dart';
import 'package:yamato/answerlist.dart';
import 'package:yamato/root.dart';

import 'db.dart';

class Finish extends StatefulWidget {
  @override
  _FinishState createState() => _FinishState();
}

class _FinishState extends State<Finish> {
  int correctPercent;
  int questionNumber;
  int correctNumber;
  int incorrectNumber;
  int unAnseredNumber;
  final double elev = 20;
  final double fontsizeNormal = 30;
  final double fontsizepercent = 50;
  final double fontsizeLarge = 130;
  bool dataReadFlg = false;

  @override
  Widget build(BuildContext context) {

    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final adjustsizeh = MediaQuery.of(context).size.height * 0.0011;


    //final fontSize = MediaQuery.of(context).size.width/12;
    final fontSize = MediaQuery.of(context).size.height/24;
    if (dataReadFlg) {
      //データ取得後の処理

      correctPercent = (100 * correctNumber / questionNumber).truncate();
    } else {
      //データ取得前の処理

      roadData();
    }

    print("長さ" + ((incorrectNumber.toString()).length).toString());

    return Scaffold(
        backgroundColor: Colors.cyan[100],
        appBar: AppBar(
          title: Text("成績発表"),
          leading: IconButton(
            icon: Icon(Icons.home_sharp),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => RootWidget(),
                      maintainState: false));
            },
          ),
          elevation: elev,
          automaticallyImplyLeading: false,
          backgroundColor: Colors.lightBlue,
          actions: [],
        ),
        body: Center(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
              Expanded(
                  child: Container(
                      padding: const EdgeInsets.all(8),
                      child: Card(
                          child: Column(children: <Widget>[
                        Container(
                          padding: const EdgeInsets.all(10),
                          child: Text(
                            "正答率",
                            style: TextStyle(
                              fontSize: fontsizeNormal,
                            ),
                          ),
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: <Widget>[
                              Container(
                                padding:
                                    const EdgeInsets.fromLTRB(30, 10, 10, 10),
                                child: Text(dataReadFlg ? "${correctPercent.toString()}" :"",
                                    style: TextStyle(
                                        fontSize: fontsizeLarge,
                                        fontWeight: FontWeight.w300)),
                              ),
                              Container(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 35, horizontal: 10),
                                child: Text(dataReadFlg ? "%" :"",
                                    style: TextStyle(
                                      fontSize: fontsizepercent,
                                    )),
                              ),
                            ]),
                        Table(children: [
                          TableRow(
                            children: [
                              Container(
                                padding: const EdgeInsets.all(10),
                                child:  Text(
                                  "問題数：",
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                    fontSize: fontSize,
                                  ),
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 12, horizontal: 30),
                                child: Text(dataReadFlg ? "  "
                                    "${questionNumber.toString()}".substring(
                                    (questionNumber.toString()).length - 1,
                                    (questionNumber.toString()).length + 2) :"",

                                  style: TextStyle(
                                    fontSize: fontSize,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          TableRow(
                            children: [
                              Container(
                                padding: const EdgeInsets.all(10),
                                child:  Text(
                                  "正解　：",
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                    fontSize: fontSize,
                                  ),
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 12, horizontal: 30),
                                child: Text(dataReadFlg ? "  "
                                    "${correctNumber.toString()}".substring(
                                    (correctNumber.toString()).length - 1,
                                    (correctNumber.toString()).length + 2) :"",
                                  style: TextStyle(
                                    fontSize: fontSize,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          TableRow(
                            children: [
                              Container(
                                padding: const EdgeInsets.all(10),
                                child:  Text(
                                  "不正解：",
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                    fontSize: fontSize,
                                  ),
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 12, horizontal: 30),
                                child: Text(dataReadFlg ? "  "
                                    "${incorrectNumber.toString()}".substring(
                                    (incorrectNumber.toString()).length - 1,
                                    (incorrectNumber.toString()).length + 2) :"",
                                  style: TextStyle(
                                    fontSize: fontSize,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          TableRow(
                            children: [
                              Container(
                                  padding: const EdgeInsets.all(10),
                                  child:  Text(
                                      "未解答：",
                                      textAlign: TextAlign.right,
                                      style: TextStyle(
                                        fontSize: fontSize,
                                      ),
                                    ),
                                  ),
                              Container(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 12, horizontal: 30),
                                child: Text(dataReadFlg ? "  "
                                    "${unAnseredNumber.toString()}".substring(
                                    (unAnseredNumber.toString()).length - 1,
                                    (unAnseredNumber.toString()).length + 2) :"",
                                  style: TextStyle(
                                    fontSize: fontSize,
                                  ),
                                ),
                              ),
                            ],
                          )
                        ])
                      ])))),

                  Container(
                    padding: EdgeInsets.fromLTRB(20, 5, 20, 20),
                    margin: EdgeInsets.all(4),
                    child: SizedBox(
                      height: height * 0.065,
                      width: width * 0.7,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => AnswerList()));
                        },
                        child: Text(
                          "解答を確認",
                          style: TextStyle(
                            fontSize: 20 * adjustsizeh,
                          ),
                        ),
                      ),
                    ),//size
                  ),
            ])));
  }

  void roadData() async {
    MyDatabase db = MyDatabase();
    this.questionNumber = (await db.selectQuestionTryingCount())[0];
    this.incorrectNumber =
        (await db.selectQuestionTryingCountbyCorrectType(0))[0];
    this.correctNumber =
        (await db.selectQuestionTryingCountbyCorrectType(1))[0];
    this.unAnseredNumber =
        (await db.selectQuestionTryingCountbyCorrectType(9))[0];

    setState(() {
      this.dataReadFlg = true;
    });
  }
}
