import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'answer.dart';
import 'root.dart';
import 'db.dart';

class Question extends StatefulWidget {

  final argumentMode;
  final argumentTryingListNo;
  final argumentBusinessYear;
  final argumentPeriod;
  final argumentQuestionNo;

  Question({this.argumentMode,//1:questiontryingsあり、2:questiontryingsなし（単発）
      this.argumentTryingListNo,
      this.argumentBusinessYear,
      this.argumentPeriod,
      this.argumentQuestionNo}
      );

  @override
  _QuestionState createState() => _QuestionState();
}

class _QuestionState extends State<Question> {
  final double elev = 20;
  String outputtext = '';
  String radioValue = '';
  String questionCountHeader ="";
  List<Image> outputimgList = [];
  int mode;
  int businessYear ;
  int period ;
  String questionNo ;
  int tryingListNo;
  int tryingListCount=0;
  var _textController = TextEditingController();
  List<bool> optionCheckList =[];

  List<QuestionHeader> qh = [];
  List<QuestionTrying> qt = [];
  List<QuestionOption> qo = [];

  List<QuestionFile> qfQuestionTxt = [];

  List<QuestionFile> qfQuestionImg = [];

  List<QuestionFile> qfAnswerTxt = [];
  bool initialDataRead=false;

  void _onChanged(String value) {
    setState(() {
      radioValue = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    IconData favoriteIcon;

    List<Widget> lw =[];
    if(initialDataRead==false) {
      tryingListNo=widget.argumentTryingListNo;
      favoriteIcon = Icons.star_border;
      loadAsset();

    }else{

      if(qh[0].favorite){
        favoriteIcon = Icons.star;
      }else{
        favoriteIcon = Icons.star_border;

      }

      if(mode==1){
        questionCountHeader=tryingListNo.toString()+"/"+tryingListCount.toString();
      }
      if (qh[0].answerType == 1) {
        for (int i = 0; i < qo.length; i++) {
          lw.add(RadioListTile(
            title: Text(
              qo[i].optionCd + " : " + qo[i].optionText,
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            value: qo[i].optionCd,
            groupValue: radioValue,
            onChanged: _onChanged,
            activeColor: Colors.lightBlue,
            tileColor: Colors.white,
            selectedTileColor: Colors.indigo[900],
          ));
        }
      } else if (qh[0].answerType == 2) {
        for (int i = 0; i < qo.length; i++) {
          optionCheckList.add(false);

          lw.add(CheckboxListTile(
            title: Text(
              qo[i].optionCd + " : " + qo[i].optionText,
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            controlAffinity: ListTileControlAffinity.leading,
            value: optionCheckList[i],
            onChanged: (bool value) {
              setState(() {
                optionCheckList[i]=value;
              });
            },
            activeColor: Colors.lightBlue,
            tileColor: Colors.white,
            selectedTileColor: Colors.indigo[900],
          ));
        }
      } else {
        lw.add(
            Container(
              margin: EdgeInsets.all(20),
              height: 80,
              width: 150,
              child: TextField(
                  style: new TextStyle(
                      fontSize: 30.0,
                      color: Colors.black),
                      decoration: InputDecoration(hintText: "ここに入力"),
                  controller: _textController,
                  keyboardType: TextInputType.number,
                  inputFormatters: [
                    LengthLimitingTextInputFormatter(2),
                    FilteringTextInputFormatter.digitsOnly]),
            ));
      }
    }

    return Scaffold(
      backgroundColor: Colors.cyan[100],
      appBar: AppBar(
        title: Text(initialDataRead==false ? "" :
            "${questionCountHeader}　${businessYear.toString().substring(2)}年 第${period.toString()}回 No.${questionNo}" ),
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
              MyDatabase db=MyDatabase();
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
          child: SingleChildScrollView(
              child: Column(children:initialDataRead==false ? <Widget>[] : <Widget>[
        Card(
            margin: EdgeInsets.all(10),
            child: Column(children: [
              Container(
                padding: const EdgeInsets.all(8),
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
              for (int i = 0; i < outputimgList.length; i++)
                Container(
                    padding: const EdgeInsets.all(3),
                    margin: EdgeInsets.all(10),
                    child: outputimgList[i]),
            ])),
        Card(
          margin: EdgeInsets.all(10),
          child: Column(
            children: lw,
          ),
        ),
                Container(
                  padding: const EdgeInsets.all(20),
                  margin: EdgeInsets.all(4),
                  child:SizedBox(
                    width: 280,
                    height: 60,
                    child: ElevatedButton(onPressed: () {
                      moveToAnswer();
                    }, child: Text("解答する", style: TextStyle(fontSize:  20,),),),
                  ),
                ),
      ]))),
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
                          ,maintainState:false)
                  );
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
                          ,maintainState:false)
                  );
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


  void moveToAnswer() async {


    MyDatabase db =MyDatabase();
    bool answered = false;
    int correctType;
    String singleAnswer;
    String multipleAnswer="";
    int nmberAnswer;

    print("解答チェック通過");

    if(qh[0].answerType == 1){
      //single answer
      if(radioValue!=""){
        answered=true;
      }

      singleAnswer=radioValue;
      multipleAnswer=null;
      nmberAnswer=null;


      String questionAnswer="";
      //正誤チェック
      for(int i=0;i<qo.length;i++){
        if(qo[i].correctType==1){
          if(qo[i].optionCd==radioValue){
            correctType=1;
          }else{
            correctType=0;
          }
        }

      }

    }else if (qh[0].answerType == 2){
      //multiple answer
      for(int i=0;i<optionCheckList.length;i++){
        if(optionCheckList[i]==true){
          answered=true;
        }
      }

      for(int i=0;i<optionCheckList.length;i++){
        if(optionCheckList[i]==true){
          if(multipleAnswer!=""){
            multipleAnswer+=",";
          }
          multipleAnswer+=qo[i].optionCd;

        }
      }

      singleAnswer=null;
      nmberAnswer=null;

      //正誤チェック
      correctType=1;
      for(int i=0;i<qo.length;i++){
        if((qo[i].correctType==1&&optionCheckList[i]==true)
            ||(qo[i].correctType==0&&optionCheckList[i]==false)){

        }else{
          correctType=0;
        }

      }

    }else{
      //number answer
      if(_textController.text!=null){

      singleAnswer=null;
      multipleAnswer=null;
        try {
          nmberAnswer=int.parse(_textController.text);

          answered=true;

          //正誤チェック
          if(nmberAnswer==qh[0].numberAnswer){
            correctType=1;
          }else{
            correctType=0;
          }
        } catch (exception) {

        }
      }
    }


    if(answered==true){
      //画面上の解答が入力済みの場合
      if(mode==1){
        if(qt[0].endFlg==false){
          //QuestionTryingありで未回答（初回答）の場合
          QuestionTrying qtForUpdate = QuestionTrying(id:qt[0].id
              ,businessYear :qt[0].businessYear
              ,period :qt[0].period
              ,questionNo :qt[0].questionNo
              ,endFlg :true
              ,correctType :correctType
              ,singleAnswer:singleAnswer
              ,multipleAnswer:multipleAnswer
              ,numberAnswer:nmberAnswer
          );
          await db.updatequestiontrying(qtForUpdate);

        }
      }

      if(mode==2||qt[0].endFlg==false){

        int correctType2ForUpdate;
        int correctType3ForUpdate;
        if(qh[0].correctType2==9){
          correctType2ForUpdate=correctType;
          correctType3ForUpdate=9;
        }else if(qh[0].correctType3==9){
          correctType2ForUpdate=qh[0].correctType2;
          correctType3ForUpdate=correctType;
        }else{
          correctType2ForUpdate=qh[0].correctType3;
          correctType3ForUpdate=correctType;

        }

        QuestionHeader qh0 = QuestionHeader(
            businessYear:qh[0].businessYear
            ,period:qh[0].period
            ,questionNo:qh[0].questionNo
            ,subjectId:qh[0].subjectId
            ,compulsoryType:qh[0].compulsoryType
            ,answerType:qh[0].answerType
            ,questionText:qh[0].questionText
            ,numberAnswer:qh[0].numberAnswer
            ,correctType1:qh[0].correctType1
            ,correctType2:correctType2ForUpdate
            ,correctType3:correctType3ForUpdate
            ,favorite:qh[0].favorite);//最新のFavoriteが取れてきているか確認。
        db.updatequestionheader(qh0);
      }

      Navigator.push(
          context, MaterialPageRoute(builder: (context) => Answer(
          argumentMode:widget.argumentMode
      ,argumentTryingListNo:widget.argumentTryingListNo
      ,argumentBusinessYear:widget.argumentBusinessYear
      ,argumentPeriod:widget.argumentPeriod
      ,argumentQuestionNo:widget.argumentQuestionNo
      ,argumentSingleAnswer:singleAnswer
      ,argumentMultipleAnswer:multipleAnswer
      ,argumentNumberAnswer:nmberAnswer
      ,argumentCorrectType:correctType
      )
      )
      );

    }else{
      showDialog(
        context: context,
        builder: (_) {
          return AlertDialog(
            title: Text("確認"),
            content: Text("解答が入力されていません"),
            actions: <Widget>[
              // ボタン領域
              TextButton(
                child: Text("OK"),
                onPressed: () => Navigator.pop(context),
              ),
            ],
          );
        },
      );

    }


  }

  void loadAsset() async {
    MyDatabase db = MyDatabase();

    mode = widget.argumentMode;
    if(mode==1){

      this.qt=
      await db.selectQuestionTryingById(widget.argumentTryingListNo);

      List<int> countList=
      await db.selectQuestionTryingCount();

      tryingListCount=countList[0];

      businessYear =qt[0].businessYear;
      period = qt[0].period;
      questionNo  = qt[0].questionNo;

    }else{
      businessYear =widget.argumentBusinessYear;
      period = widget.argumentPeriod;
      questionNo  = widget.argumentQuestionNo;
    }


    this.qh =
        await db.selectQuestionHeaderByKey(businessYear, period, questionNo);

    this.qo =
        await db.selectQuestionOptionsByQInfo(businessYear, period, questionNo);

    this.qfQuestionTxt = await db.selectQuestionFilesForUse(
        businessYear, period, questionNo, 1, 1);
    print(qfQuestionTxt[0]);

    this.qfQuestionImg = await db.selectQuestionFilesForUse(
        businessYear, period, questionNo, 1, 2);
    print(qfQuestionImg[0]);

    List<QuestionFile> qfAnswerTxt = await db.selectQuestionFilesForUse(
        businessYear, period, questionNo, 2, 1);
    print(qfAnswerTxt[0]);

    //UTF8
    print(qfQuestionTxt[0]);
    String value =
        await rootBundle.loadString("assets/text/${qfQuestionTxt[0].filePath}");

    this.outputimgList=[];
    for (int i = 0; i < qfQuestionImg.length; i++) {
      await this.outputimgList.add(Image.asset(
          'assets/image/' + qfQuestionImg[i].filePath,
          fit: BoxFit.contain));
    }

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
