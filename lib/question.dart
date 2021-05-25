import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'answer.dart';
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
  int questionNo ;
  int tryingListNo;
  int tryingListCount=0;
  var _textController = TextEditingController();

  List<QuestionHeader> qh = [];

  List<QuestionOption> qo = [];

  List<QuestionFile> qfQuestionTxt = [];

  List<QuestionFile> qfQuestionImg = [];

  List<QuestionFile> qfAnswerTxt = [];

  void _onChanged(String value) {
    setState(() {
      radioValue = value;
    });
  }

  @override
  Widget build(BuildContext context) {

    if (outputtext == '') {
      loadAsset();
    } else {
      if(mode==1){
        questionCountHeader=tryingListNo.toString()+"/"+tryingListCount.toString();
      }
    }

    List<Widget> lw =[];
    if(qh.length==0) {}else{
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
        for (int i = 0; i < qo.length; i++)
          lw.add(CheckboxListTile(
            title: Text(
              qo[i].optionCd + " : " + qo[i].optionText,
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            controlAffinity: ListTileControlAffinity.leading,
            value: false,
            onChanged: (bool value) {
              setState(() {});
            },
            activeColor: Colors.lightBlue,
            tileColor: Colors.white,
            selectedTileColor: Colors.indigo[900],
          ));
      } else {
        lw.add(
            Container(
              margin: EdgeInsets.all(20),
              height: 80,
              width: 200,
              child: TextField(
                  decoration: InputDecoration(hintText: "ここに入力"),
                  controller: _textController,
                  keyboardType: TextInputType.number,
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly]),
            ));
      }
    }

    return Scaffold(
      backgroundColor: Colors.cyan[100],
      appBar: AppBar(
        title: Text(
          //TODO 全体の問題数を取得　→DB
            "${questionCountHeader}　${businessYear.toString().substring(2)}年 第${period.toString()}回 No.${questionNo.toString()}"),
        leading: Icon(Icons.home_sharp),
        elevation: elev,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.lightBlue,
        actions: [
          IconButton(
            icon: Icon(Icons.favorite, color: Colors.redAccent),
            onPressed: () {},
          ),
        ],
      ),
      body: Container(
          child: SingleChildScrollView(
              child: Column(children: <Widget>[
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
                      Navigator.push(

                        //TODO 回答が空欄でないかチェック
                        //TODO Modeが1の場合、QuestionTryingをチェック（未回答かどうか）
                        //TODO QuestionTryingを更新（未回答の場合）
                        //TODO QuestionHeaderを更新（未回答もしくはModeが2の場合）
                        //TODO　変数に回答も含めてAnswer画面を起動

                          context, MaterialPageRoute(builder: (context) => Answer()));
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
                onPressed: widget.argumentMode==2 ? null :() {
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

  void loadAsset() async {
    MyDatabase db = MyDatabase();

    mode = widget.argumentMode;
    if(mode==1){

      List<QuestionTrying> qt=
      await db.selectQuestionTryingById(widget.argumentTryingListNo);

      tryingListCount=
      await db.selectQuestionTryingCount();

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
    print(qh[0]);

    this.qo =
        await db.selectQuestionOptionsByQInfo(businessYear, period, questionNo);
    print(qo[0]);
    print(qo.length.toString());

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

    for (int i = 0; i < qfQuestionImg.length; i++) {
      await this.outputimgList.add(Image.asset(
          'assets/image/' + qfQuestionImg[i].filePath,
          fit: BoxFit.contain));
    }

    if (value == this.outputtext) {
    } else {
      setState(() {
        print('text読み込み処理' + this.outputtext);
        this.outputtext = value;
      });
    }
  }
}
