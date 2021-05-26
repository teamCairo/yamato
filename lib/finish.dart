import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:yamato/question.dart';

import 'db.dart';

class Finish extends StatefulWidget {

  @override
  _FinishState createState() => _FinishState();
}

class _FinishState extends State<Finish> {
  final double elev = 20;
  String outputtext = '';
  int mode;
  int businessYear;

  int period;

  int questionNo;

  int tryingListNo;
  String singleAnswer;

  String multipleAnswer;

  int numberAnswer;
  String answer;
  int tryingListCount = 0;
  String questionCountHeader = "";
  String mainButtonText = "";

  List<QuestionHeader> qh;
  List<QuestionOption> qo;
  List<QuestionFile> qfAnswerTxt;
  bool favorite = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan[100],
      appBar: AppBar(
        //TODO 全体の問題数を取得　→DB
        title: Text("{questionCountHeader}　${businessYear.toString().substring(
            2)}年 第${period.toString()}回 No.${questionNo.toString()}"),
        leading: Icon(Icons.home_sharp),
        elevation: elev,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.lightBlue,
        actions: [
        ],
      ),
      body: Container(
          color: Colors.cyan[100],
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Container(
                  child: Center(
                      child: Icon(
                          Icons.close, size: 100, color: Colors.indigo)),
                  padding: const EdgeInsets.all(16),
                ),
                Text('正解:a\nあなたの回答:${answer}}',
                    style: TextStyle(fontSize: 25),
                    textAlign: TextAlign.center),
                Container(
                  padding: const EdgeInsets.all(8),
                  child: Card(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Container(
                          padding: const EdgeInsets.all(10),
                          child: Text(
                            outputtext,
                            style: TextStyle(
                              fontSize: 16,
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
                    child: ElevatedButton(onPressed: () {
                      //TODO 最終問題完了時の処理を追加
                      //TODO Mode：2のときの処理を追加
                      Navigator.push(
                          context, MaterialPageRoute(builder: (context) =>
                          Question(
                              argumentMode: 1,
                              argumentBusinessYear: null,
                              argumentPeriod: null,
                              argumentQuestionNo: null,
                              argumentTryingListNo: tryingListNo + 1)));
                    },
                      child: Text(
                        mainButtonText, style: TextStyle(fontSize: 20,),),),
                  ),
                ),
              ],
            ),
          )),
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
                onPressed:  () {
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
                    shape:
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                    ),
                    elevation: 10,
                    primary: Colors.white,
                  ),

                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: Icon(Icons.list, size: 40, color: Colors.lightBlue,),
                  label: Text("一覧", style: TextStyle(
                    color: Colors.blue,
                  ),),
                )
            ),
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
}