import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:yamato/question.dart';

import 'db.dart';

class Answer extends StatefulWidget {
  Answer({Key key}) : super(key: key);

  @override
  _AnswerState createState() => _AnswerState();
}

class _AnswerState extends State<Answer> {
  final double elev = 20;
  String outputtext = '';
  int businessYear = 2021;
  int period = 1;
  int questionNo = 26;
  int tryingListNo = 26;

  List<QuestionHeader> qh;
  List<QuestionOption> qo;
  List<QuestionFile> qfAnswerTxt;
  bool favorite=false;

  @override
  Widget build(BuildContext context) {

    MyDatabase db = MyDatabase();
    if (outputtext == '') {
      loadAsset(db);
    } else {}

    if(qh==null){
    }else{
      favorite = qh[0].favorite;
    }

    return Scaffold(
      backgroundColor: Colors.cyan[100],
      appBar: AppBar(
        title: Text("1/86　${businessYear.toString().substring(2)}年 第${period.toString()}回 No.${questionNo.toString()}"),
        leading: Icon(Icons.home_sharp),
        elevation: elev,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.lightBlue,
        actions: [
          IconButton(
            icon: Icon(this.favorite ? Icons.star : Icons.star_border),
            color: Colors.yellowAccent,
            onPressed: () {
              favorite=!favorite;
              setState(() {
                print('favoritettete:'+favorite.toString());
                changeFavorite(qh[0].businessYear, qh[0].period, qh[0].questionNo,favorite,db);

              });

            },
          ),
        ],
      ),
      body: Container(
          color:Colors.cyan[100],
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Container(
                  child: Center(
                      child: Icon(Icons.close, size: 100, color: Colors.indigo)),
                  padding: const EdgeInsets.all(16),
                ),
                Text('正解:a\nあなたの回答:c',
                    style: TextStyle(fontSize: 25), textAlign: TextAlign.center),
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
                  child:SizedBox(
                    width: 280,
                    height: 60,
                    child: ElevatedButton(onPressed: () {
                      Navigator.push(
                          context, MaterialPageRoute(builder: (context) => Question()));
                    }, child: Text("次の問題", style: TextStyle(fontSize:  20,),),),
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
                    shape:
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                    ),
                    elevation: 10,
                    primary: Colors.white,
                  ),

                  onPressed: () {Navigator.of(context).pop();},
                  icon: Icon(Icons.list,size: 40,color: Colors.lightBlue,),
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


  void loadAsset(MyDatabase db) async {

    this.qh =
    await db.selectQuestionHeaderByKey(businessYear, period, questionNo);
    print(qh[0]);

    this.qo =
    await db.selectQuestionOptionsByQInfo(businessYear, period, questionNo);
    print(qo[0]);

    this.qfAnswerTxt =  await db.selectQuestionFilesForUse(businessYear,period,questionNo,2,1);
    print(qfAnswerTxt[0]);



    //UTF8
    String value =
    await rootBundle.loadString("assets/text/${qfAnswerTxt[0].filePath}");


    if (value == this.outputtext&&this.favorite==qh[0].favorite) {
    } else {
      setState(() {
        print('text読み込み処理' + this.outputtext);
        this.outputtext = value;
      });
    }
  }


  void changeFavorite(int businessYear, int period, int questionNo,bool favoriteValue,MyDatabase db) async {

    List<QuestionHeader> qhforFavoriteList =  await db.selectQuestionHeaderByKey(businessYear,period,questionNo);
    print(qhforFavoriteList[0]);

    QuestionHeader qhforFavorite = QuestionHeader(
        businessYear:qhforFavoriteList[0].businessYear
        ,period:qhforFavoriteList[0].period
        ,questionNo:qhforFavoriteList[0].questionNo
        ,subjectId:qhforFavoriteList[0].subjectId
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


}
