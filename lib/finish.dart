import 'package:flutter/material.dart';
import 'package:yamato/question.dart';
import 'package:yamato/answerlist.dart';

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
  final double fontsizeNormal =30;
  final double fontsizeLarge =50;
  bool dataReadFlg=false;

  @override
  Widget build(BuildContext context) {

    if(dataReadFlg){
      //データ取得後の処理

      correctPercent=(correctNumber/questionNumber).truncate();

    }else{
      //データ取得前の処理

      roadData();

    }

    return Scaffold(
      backgroundColor: Colors.cyan[100],
      appBar: AppBar(
        title: Text("成績発表"),
        leading: Icon(Icons.home_sharp),
        elevation: elev,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.lightBlue,
        actions: [],
      ),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween
            ,children: <Widget>[
          Container(
            padding: const EdgeInsets.all(8),
            child: Card(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Container(
                    padding: const EdgeInsets.all(10),
                    child: Text(
                      "正答率",
                      style: TextStyle(
                        fontSize: fontsizeNormal,
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    child: Text(
                      "${correctPercent.toString()}%",
                      style: TextStyle(
                        fontSize: fontsizeLarge,
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    child: Text(
                      "問題数：${questionNumber.toString()}",
                      style: TextStyle(
                        fontSize: fontsizeNormal,
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    child: Text(
                      "正解　：${correctNumber.toString()}",
                      style: TextStyle(
                        fontSize: fontsizeNormal,
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    child: Text(
                      "不正解：${incorrectNumber.toString()}",
                      style: TextStyle(
                        fontSize: fontsizeNormal,
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    child: Text(
                      "未解答：${unAnseredNumber.toString()}",
                      style: TextStyle(
                        fontSize: fontsizeNormal,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(20),
            margin: EdgeInsets.all(4),
            child: SizedBox(
              width: 280,
              height: 60,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) =>
                      AnswerList()));
                },
                child: Text(
                  "解答を確認",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          ),
        ]),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.lightBlue,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              width: 100,
              height: 40,
              margin: const EdgeInsets.all(4.0),
              child: ElevatedButton.icon(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                label: Text("前へ",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w100,
                    )),
                icon: Icon(Icons.arrow_left_rounded, size: 30),
                style: OutlinedButton.styleFrom(
                    elevation: 10,
                    primary: Colors.lightBlue,
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18),
                    )),
              ),
            ),
            Container(
                width: 110,
                height: 40,
                child: ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                    ),
                    elevation: 10,
                    primary: Colors.white,
                  ),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: Icon(
                    Icons.list,
                    size: 40,
                    color: Colors.lightBlue,
                  ),
                  label: Text(
                    "一覧",
                    style: TextStyle(
                      color: Colors.blue,
                    ),
                  ),
                )),
            Container(
              width: 110,
              height: 40,
              margin: const EdgeInsets.all(4.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0)),
                  elevation: 10,
                  primary: Colors.white,
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Question()));
                },
                child: Padding(
                  padding: EdgeInsets.fromLTRB(16, 2, 0, 2),
                  child: Container(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          '次へ',
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w100,
                              color: Colors.lightBlue),
                        ),
                        Icon(
                          Icons.arrow_right_rounded,
                          size: 30,
                          color: Colors.lightBlue,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void roadData() async{
    MyDatabase db = MyDatabase();
    this.questionNumber = (await db.selectQuestionTryingCount())[0];
    this.incorrectNumber = (await db.selectQuestionTryingCountbyCorrectType(0))[0];
    this.correctNumber = (await db.selectQuestionTryingCountbyCorrectType(1))[0];
    this.unAnseredNumber = (await db.selectQuestionTryingCountbyCorrectType(9))[0];

    setState(() {
      this.dataReadFlg=true;
    });

  }
}
