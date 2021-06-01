import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:yamato/question.dart';
import 'package:yamato/finish.dart';
import 'package:yamato/result.dart';

import 'db.dart';
import 'root.dart';

class Answer extends StatefulWidget {


  final argumentMode;
  final argumentTryingListNo;
  final argumentBusinessYear;
  final argumentPeriod;
  final argumentQuestionNo;
  final argumentSingleAnswer;
  final argumentMultipleAnswer;
  final argumentNumberAnswer;
  final argumentCorrectType;

  Answer({this.argumentMode,//1:questiontryingsあり、2:questiontryingsなし（単発）
    this.argumentTryingListNo,
    this.argumentBusinessYear,
    this.argumentPeriod,
    this.argumentQuestionNo,
    this.argumentSingleAnswer,
    this.argumentMultipleAnswer,
    this.argumentNumberAnswer,
    this.argumentCorrectType,}
      );

  @override
  _AnswerState createState() => _AnswerState();
}

class _AnswerState extends State<Answer> {
  final double elev = 20;
  String outputtext = '';
  int mode;
  int businessYear ;
  int period ;
  String questionNo ;
  int tryingListNo;
  String singleAnswer ;
  String multipleAnswer ;
  int numberAnswer;
  String answer;
  int tryingListCount=0;
  String questionCountHeader ="";
  String mainButtonText="";

  List<QuestionHeader> qh;
  List<QuestionOption> qo;
  List<QuestionFile> qfAnswerTxt;
  String correctAnswer="";
  bool initialDataRead=false;

  @override
  Widget build(BuildContext context) {

    MyDatabase db = MyDatabase();

    IconData favoriteIcon;

    if(initialDataRead==false){
      tryingListNo=widget.argumentTryingListNo;
      favoriteIcon = Icons.star_border;
      loadAsset(db);

    }else{

      if(qh[0].favorite){
        favoriteIcon = Icons.star;
      }else{
        favoriteIcon = Icons.star_border;

      }

      print("qhsize"+qh.length.toString());
      print("69Line：qosize"+qo.length.toString());
      print("Favorite"+qh[0].favorite.toString());

      if(qh[0].answerType==1){
        answer=widget.argumentSingleAnswer;


        for(int i=0;i<qo.length;i++){
          if(qo[i].correctType==1){
            correctAnswer=qo[i].optionCd;
          }
        }

      }else if(qh[0].answerType==2){
        answer=widget.argumentMultipleAnswer;

        correctAnswer="";
        for(int i=0;i<qo.length;i++){
          if(qo[i].correctType==1){
            if(correctAnswer!=""){
              correctAnswer+=",";

            }
            correctAnswer+=qo[i].optionCd;
          }
        }

      }else{
        answer=widget.argumentNumberAnswer.toString();
        correctAnswer=qh[0].numberAnswer.toString();

      }


      if(mode==1){
        questionCountHeader=tryingListNo.toString()+"/"+tryingListCount.toString();

        if(tryingListNo==tryingListCount){

          mainButtonText = "結果画面へ";

        }else{

          mainButtonText="次の問題へ";

        }
      }else{
        mainButtonText = "一覧へもどる";
      }


    }



    return Scaffold(
      backgroundColor: Colors.cyan[100],
      appBar: AppBar(
        title: Text(initialDataRead==false ? "" :"${questionCountHeader}　${businessYear.toString().substring(2)}年 第${period.toString()}回 No.${questionNo.toString()}"),
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
        elevation: elev,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.lightBlue,
        actions: [
          IconButton(
            icon: Icon(favoriteIcon),
            color: Colors.yellowAccent,
            onPressed: () {
              setState(() {
                initialDataRead=false;
                changeFavorite(qh[0].businessYear, qh[0].period, qh[0].questionNo,!qh[0].favorite,db);

              }

              );

            },
          ),
        ],
      ),
      body: Container(
          color:Colors.cyan[100],
          child: SingleChildScrollView(
            child: Column(
              children:initialDataRead==false ? <Widget>[] : <Widget>[
                Container(
                  child: Center(
                      child: Icon(correctAnswer==answer ?Icons.radio_button_off :Icons.close, size: 100, color: correctAnswer==answer ?Colors.red :Colors.indigo)),
                  padding: const EdgeInsets.all(16),
                ),
                Text('正解:${correctAnswer}\nあなたの回答:${answer}',
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

                      if(widget.argumentMode==2){
                        //単発問題
                        Navigator.of(context).pop();
                        Navigator.of(context).pop();

                      }else if(tryingListNo==tryingListCount){
                        //最終問題
                        Navigator.push(
                            context, MaterialPageRoute(builder: (context) => Finish()));


                      }else{
                        //最終問題でない
                        Navigator.push(
                            context, MaterialPageRoute(builder: (context) => Question(
                            argumentMode: 1,
                            argumentBusinessYear: null,
                            argumentPeriod: null,
                            argumentQuestionNo: null,
                            argumentTryingListNo: tryingListNo+1)));
                      }

                    }, child: Text(mainButtonText, style: TextStyle(fontSize:  20,),),),
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
                onPressed:widget.argumentMode==2||tryingListNo==1 ? null : () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Question(
                              argumentMode: 1,
                              argumentBusinessYear: null,
                              argumentPeriod: null,
                              argumentQuestionNo: null,
                              argumentTryingListNo: widget.argumentTryingListNo-1)
                          ,maintainState:false));
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
                    if(widget.argumentMode != 2){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Result(
                            widget.argumentMode, null,widget.argumentTryingListNo,
                          )));}},
                  //TODO　一覧ボタンの処理　連続演習モードで、一覧画面からきている場合：一覧画面までPopする、一覧画面から単発の問題をやっている場合、も同様。　続きから解くからやっている場合は？ 一覧画面側の処理が固まってから実装
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
                onPressed: widget.argumentMode==2||tryingListNo==tryingListCount ? null :() {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                      builder: (context) => Question(
                      argumentMode: 1,
                      argumentBusinessYear: null,
                      argumentPeriod: null,
                      argumentQuestionNo: null,
                      argumentTryingListNo: widget.argumentTryingListNo+1)
                  ,maintainState:false));
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


    mode = widget.argumentMode;
    if(mode==1){

      List<QuestionTrying> qt=
      await db.selectQuestionTryingById(widget.argumentTryingListNo);

      businessYear =qt[0].businessYear;
      period = qt[0].period;
      questionNo  = qt[0].questionNo;



      List<int> countList=
      await db.selectQuestionTryingCount();
      tryingListCount=countList[0];
    }else{
      businessYear =widget.argumentBusinessYear;
      period = widget.argumentPeriod;
      questionNo  = widget.argumentQuestionNo;
    }

    this.qh =
    await db.selectQuestionHeaderByKey(businessYear, period, questionNo);
    print(qh[0]);

    this.qo =
    await db.selectQuestionOptionsByQInfo(businessYear, period, questionNo);
    print("qoとれた"+qo.length.toString());


    this.qfAnswerTxt =  await db.selectQuestionFilesForUse(businessYear,period,questionNo,2,1);
    print(qfAnswerTxt[0]);



    //UTF8
    String value =
    await rootBundle.loadString("assets/text/${qfAnswerTxt[0].filePath}");


    setState(() {
      initialDataRead=true;
      this.outputtext = value;
    });
  }


  void changeFavorite(int businessYear, int period, String questionNo,bool favoriteValue,MyDatabase db) async {

    List<QuestionHeader> qhforFavoriteList =  await db.selectQuestionHeaderByKey(businessYear,period,questionNo);
    print(qhforFavoriteList[0]);

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


}
