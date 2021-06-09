import 'package:flutter/material.dart';
import 'package:yamato/db.dart';
import 'package:yamato/question.dart';

class IncorrectCheck extends StatefulWidget {

  // 以下を実装、受け渡し用のプロパティを定義
  final Parameter serialData;

  // 以下を実装、コンストラクタで値を受領
  IncorrectCheck({this.serialData});

  @override
  _IncorrectCheckState createState() => _IncorrectCheckState();
}

class _IncorrectCheckState extends State<IncorrectCheck> {

  MyDatabase db = MyDatabase();
  bool initialDataRead = false;
  List<QuestionListForCheck> questionListForCheck = [];
  final favManager = Set<String>();
  List<bool> checkedList =  [];

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final adjustsizeh = MediaQuery.of(context).size.height*0.0011;

    List<Widget> questionInfoElements = [];
    if (initialDataRead == false) {
      loadAsset();
    } else {}


    // ignore: non_constant_identifier_names
    Widget ListElement(int year, int period, String questionNo, String subject,
        String text, int pedflag,int i){
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
                                initialDataRead == false ||  pedflag == 0 ? Container()
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
                            initialDataRead == false ? Container()
                                :Container(
                              height: height*0.086,
                              width: width*0.15,
                              child: Column(children: <Widget>[
                                Text('＜模試＞',
                                    style: TextStyle(
                                        fontSize: 11*adjustsizeh,
                                        color: Colors.indigo[800],
                                        fontWeight:
                                        FontWeight.w600)),
                                Checkbox(
                                  activeColor: Colors.blue,
                                  value: checkedList[i],
                                  onChanged: (bool value){
                                    print("value"+value.toString());
                                    print("checkedList[i]"+checkedList[i].toString());
                                    setState((){
                                    checkedList[i]=value;
                                    });
                                  })
                                ]),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: width*0.02),
                      GestureDetector(
                          onTap: () {
                            setState(() {
                              MyDatabase db=MyDatabase();
                              //changeFavorite(year, period, questionNo,!onoff,db);
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
    if (initialDataRead == true) {
      for (var i = 0; i < questionListForCheck.length; i++) {

        checkedList.add(false);

        print("Subject："+questionListForCheck[i].subjectName);
        print("ped："+questionListForCheck[i].pediatricsType.toString());
        questionInfoElements.add(ListElement(
            questionListForCheck[i].businessYear,
            questionListForCheck[i].period,
            questionListForCheck[i].questionNo,
            questionListForCheck[i].subjectName,
            questionListForCheck[i].questionText,
            questionListForCheck[i].pediatricsType,
        i));

      }

    } else {}

    return Scaffold(
      backgroundColor: Colors.cyan[100],
      appBar: AppBar(
        title: Text("誤答をチェックしてください"),
        backgroundColor: Colors.lightBlue[400],
        actions: [],
      ),
      floatingActionButton: Container(
        height: 100.0,
        width: 100.0,
        margin:EdgeInsets.only(bottom: 100.0),
      ),

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: questionListForCheck == null
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


                  QuestionHeader qh;

                  for (int i = 0; i < questionListForCheck.length; i++){

                      qh=QuestionHeader(businessYear:questionListForCheck[i].businessYear
                        ,period:questionListForCheck[i].period
                        ,questionNo:questionListForCheck[i].questionNo
                        ,pediatricsType:questionListForCheck[i].pediatricsType
                        ,subjectId:questionListForCheck[i].subjectId
                        ,compulsoryType:questionListForCheck[i].compulsoryType
                        ,answerType:questionListForCheck[i].answerType
                        ,questionText:questionListForCheck[i].questionText
                        ,numberAnswer:questionListForCheck[i].numberAnswer
                        ,correctType1:checkedList[i]?1:0
                        ,correctType2:questionListForCheck[i].correctType2
                        ,correctType3:questionListForCheck[i].correctType3
                        ,favorite:favManager.contains(questionListForCheck[i].businessYear.toString()+questionListForCheck[i].period.toString()+questionListForCheck[i].questionNo)
                        ,);

                      MyDatabase().updatequestionheader(qh);


                  }
                  Parameter para = Parameter(code:widget.serialData.code
                      ,numberValue:widget.serialData.numberValue
                      ,textValue:widget.serialData.textValue
                      ,booleanValue:true);
                  MyDatabase().updateparameter(para);
                  showDialog(
                    context: context,
                    builder: (_) {
                      return AlertDialog(
                        title: Text("確認"),
                        content: Text("学習状況が登録されました"),
                        actions: <Widget>[
                          // ボタン領域
                          TextButton(
                            child: Text("OK"),
                            onPressed: (){
                              Navigator.pop(context);
                              Navigator.pop(context);},
                          ),
                        ],
                      );
                    },
                  );
                },
                child: Text(
                  "登録",
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

    questionListForCheck = await db.selectQuestionListForCheck();

    for(var i = 0; i < questionListForCheck.length; i++) {
      if(questionListForCheck[i].favorite == false){
        if(favManager.contains(questionListForCheck[i].businessYear.toString()+questionListForCheck[i].period.toString()+questionListForCheck[i].questionNo)){
          favManager.remove(questionListForCheck[i].businessYear.toString()+questionListForCheck[i].period.toString()+questionListForCheck[i].questionNo);
        } else{}
      }else{
        favManager.add(questionListForCheck[i].businessYear.toString()+questionListForCheck[i].period.toString()+questionListForCheck[i].questionNo);
      }
    }

    setState(() {
      initialDataRead = true;
    });
  }
}