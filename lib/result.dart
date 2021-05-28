import 'package:flutter/material.dart';
import 'package:yamato/qtile.dart';
import 'package:yamato/question.dart';
import 'package:yamato/db.dart';
import 'package:filter_list/filter_list.dart';

import 'filter.dart';

class Result extends StatefulWidget {
  //Result({Key key}) : super(key: key);
  Result(this.mode, this.question1, this.year, this.peri, this.qnum, this.trynum
      //this.question1, this.qtext1, this.kailist1, this.codelist1,
      //this.catlist1, this.hitsulist1, this.moshi1
      );
  //TODO(△) Result(argumentmode:1-4, argumentQH:??, argumentBY:??,
  // argumentPeri:??, argumentQN:??, argumentQTN:??)
  //TODO（△） QTN系からQH取得
  //TODO（◎） QHから各要素取り出しでレイアウトへ
  //TODO（×）　非同期処理調整

  List question1;
  //List qtext1;
  //List kailist1;
  //List codelist1;
  //List catlist1;
  //List hitsulist1;
  //List<bool> moshi1;

  int mode;
  int year;
  int peri;
  int qnum;
  int trynum;



  @override
  _ResultState createState() => _ResultState();
}

class _ResultState extends State<Result> {

  bool favorite = false;
  Color _iconcol = Colors.lightBlue;
  List<int> qorder = <int>[];
  List question2;
  List qtext2 = [];
  List kailist2 = [];
  List codelist2 = [];
  List catlist2 = [];
  List hitsulist2 = [];
  List moshi2 = [];
  List<bool> checkm = [];
  List hissyulist = [];
  bool _ordercheck = false;
  List questionagain;
  List tryhistory;
  bool initialdataread = false;

  void initState() {
    super.initState();
    morewait();
  // if(widget.mode != 4){
   // MyDatabase db = MyDatabase();
   // gettry(db);
  // }else if(widget.mode == 4){}
   // if (widget.question1 != null) {
    //  this.question2 = widget.question1;
    //  print('q2');
    //  print(question2);
   // }
  //  if (widget.qtext1 != null) {
    //  this.qtext2 = widget.qtext1;
    //}
    //if (widget.kailist1 != null) {
     // this.kailist2 = widget.kailist1;
    //}
    //if (widget.catlist1 != null) {
     // this.catlist2 = widget.catlist1;
    //}
    //if (widget.codelist1 != null) {
     // this.codelist2 = widget.codelist1;
   // }
    //if (widget.hitsulist1 != null) {
      //this.hitsulist2 = widget.hitsulist1;
    //}
    //if (widget.moshi1 != null) {
     // this.moshi2 = widget.moshi1;
    //}


  }
   void insertdata(){
    if(widget.mode != 4){
      MyDatabase db = MyDatabase();
      gettry(db);
    }else if(widget.mode == 4){}
    if (widget.question1 != null) {
      this.question2 = widget.question1;
      print('q2');
      print(question2);
    }
  }

  Future<void> morewait() async{
    await waiting();
    for(var i = 0; i < moshi2.length; i++) {
      if (moshi2[i] == 0) {
        checkm.add(false);
      } else if (moshi2[i] == 1) {
        checkm.add(true);
      } else {}
    }
    for(var i = 0; i < hitsulist2.length; i++)
      if(hitsulist2[i] == 0) {
        hissyulist.add("必修");
      } else if (hitsulist2[i] == 1) {
        hissyulist.add("必修以外");
      } else {}
    setState(() {
      initialdataread = true;
    });

    print(questionagain);
    print(tryhistory);
    print(checkm);
    print(catlist2);
    print(codelist2);
    print(kailist2);
    print(qtext2);
  }
  Future waiting() async{
    await insertdata();
    if (question2 == null) {
    } else {
      for(var i = 0; i < question2.length; i++) {
        kailist2.add(question2[i].period);
        codelist2.add(question2[i].questionNo);
        hitsulist2.add(question2[i].compulsoryType);
        catlist2.add(question2[i].subjectId);
        moshi2.add(question2[i].correctType1);
        qtext2.add(question2[i].questionText);}
    }
  }

  void dataget(MyDatabase db) async{
    questionagain = await db.selectQuestionHeaderByKey(
     widget.year, widget.peri, widget.qnum
    );
  }
  void gettry(MyDatabase db) async{
    tryhistory = await db.getAllquestiontryings();
    dataget(db);
}

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.cyan[100],
      appBar: AppBar(
        elevation: 8,
        leading: Icon(Icons.home_sharp),
        title: question2 == null ? Text('') :Text("検索結果：${question2.length}問"),
        backgroundColor: Colors.lightBlue[400],
        actions: [
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: IconButton(
              icon: Icon(Icons.search),
               onPressed: () => {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Filter(),
                      fullscreenDialog: true,
                    )
                  )},
                ),
               ),
             ],
            ),
      body: Column(
        children: <Widget>[
          Expanded(
            child:question2 == null ? Container()
            :ListView.builder(
                padding: const EdgeInsets.all(8),
                itemCount: question2 == null ? 0 :question2.length,
                itemBuilder: (BuildContext context, int index) {
                  return InkWell(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => Question(
                              argumentMode: 2,
                              argumentBusinessYear: null,
                              argumentPeriod: kailist2[index],
                              argumentQuestionNo: codelist2[index],
                              argumentTryingListNo: null
                          ),
                        ),
                      );
                    },
                    child: Card(
                      child: Container(
                        height: height*0.097,
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
                                        initialdataread == false ? Container():
                                        Container(
                                          width: width*0.25,
                                          child: initialdataread == false ? Text('') :Text(
                                              "第" +
                                                  kailist2[index].toString() +
                                                  "回" +
                                                  '/' +
                                                  codelist2[index].toString(),
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w600,
                                                  color: Colors.black54)),
                                        ),
                                        SizedBox(
                                          width: width*0.01,
                                        ),
                                        Container(
                                          child: initialdataread == false ? Text('')
                                              :Text(
                                            catlist2[index].toString(),
                                            style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.blue),
                                          ),
                                        ),
                                        SizedBox(
                                          width: width*0.037,
                                        ),
                                        Container(
                                          height: height*0.02,
                                          width: width*0.15,
                                          decoration: BoxDecoration(
                                            border: const Border(
                                              left: const BorderSide(
                                                color: Colors.black54,
                                                width: 1,
                                              ),
                                              top: const BorderSide(
                                                color: Colors.black54,
                                                width: 1,
                                              ),
                                              right: const BorderSide(
                                                color: Colors.black54,
                                                width: 1,
                                              ),
                                              bottom: const BorderSide(
                                                color: Colors.black54,
                                                width: 1,
                                              ),
                                            ),
                                          ),
                                          child: Padding(
                                              padding: EdgeInsets.fromLTRB(
                                                  2, 2, 2, 2),
                                              child:initialdataread == false ? Text('')
                                                  :Text(
                                                hissyulist[index].toString(),
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    color: Colors.black),
                                              )),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    width: width*0.65,
                                    child: Row(children: <Widget>[
                                      SizedBox(
                                        width: width*0.05,
                                      ),
                                      Flexible(
                                        child:initialdataread == false ? Text('')
                                            :Text(
                                          qtext2[index],
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
                              Container(
                                child: Row(children: <Widget>[
                                  Container(
                                    height: height*0.086,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: <Widget>[
                                        SizedBox(
                                          height: height*0.03,
                                        ),
                                        Visibility(
                                          visible: initialdataread == false ? false
                                              :checkm[index],
                                          child: Column(children: <Widget>[
                                            Text('＜模試：誤＞',
                                                style: TextStyle(
                                                    fontSize: 11,
                                                    color: Colors.black,
                                                    fontWeight:
                                                        FontWeight.w500)),
                                            SizedBox(
                                              height: height*0.03,
                                            ),
                                            Icon(Icons.check),
                                          ]),
                                        ),
                                        SizedBox(
                                          height: height*0.03,
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    width: width*0.012,
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      //TODO　favorite機能実装
                                      setState(() {
                                        if (favorite == false) {
                                          _iconcol = Colors.yellow;
                                          favorite = true;
                                        } else if (favorite == true) {
                                          _iconcol = Colors.lightBlue;
                                          favorite = false;
                                        } else {}
                                      });
                                    },
                                    child: Icon(
                                      Icons.star_border,
                                      color: _iconcol,
                                      size: 30,
                                    ),
                                  ),
                                  SizedBox(
                                    width: width*0.025,
                                  ),
                                ]),
                              ),
                            ]),
                      ),
                    ),
                  );
                }),
          ),
          SizedBox(
            height: height*0.032,
            width: width*0.62,
            child: CheckboxListTile(
              value: _ordercheck,
              title: Text(
                "順番をシャッフルする",
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  //color: Colors.indigo[900],
                ),
              ),
              controlAffinity: ListTileControlAffinity.leading,
              onChanged: (bool value) {
                setState(() {
                  _ordercheck = value;
                });
              },
            ),
          ),
          Container(
            padding: const EdgeInsets.all(20),
            margin: EdgeInsets.all(4),
            child: SizedBox(
              height: height*0.065,
              width: width*0.7,
              child: ElevatedButton(
                onPressed: () {
                  startStudy();
                },
                child: Text(
                  "演習を始める",
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

  void startStudy() async{

    MyDatabase db = MyDatabase();


    if (_ordercheck == true) {
      question2.shuffle();
    }

    List<QuestionTrying> questiontryingsList = await db.getAllquestiontryings();
    for(var questiontrying in questiontryingsList){
      await db.deletequestiontrying(questiontrying);
    }


    //TODO 一旦サンプルデータを追加。実際のデータに修正が必要。


    QuestionTrying qt0 = QuestionTrying(
        id:null
        ,businessYear:2021
        ,period:1
        ,questionNo:5
        ,endFlg:false
        ,correctType:null
        ,singleAnswer:null
        ,multipleAnswer:null
        ,numberAnswer:null);
    db.insertquestiontrying(qt0);


    QuestionTrying qt1 = QuestionTrying(
        id:null
        ,businessYear:2021
        ,period:1
        ,questionNo:10
        ,endFlg:false
        ,correctType:null
        ,singleAnswer:null
        ,multipleAnswer:null
        ,numberAnswer:null);
    db.insertquestiontrying(qt1);

    QuestionTrying qt2 = QuestionTrying(
        id:null
        ,businessYear:2021
        ,period:1
        ,questionNo:15
        ,endFlg:false
        ,correctType:null
        ,singleAnswer:null
        ,multipleAnswer:null
        ,numberAnswer:null);
    db.insertquestiontrying(qt2);

    QuestionTrying qt3 = QuestionTrying(
        id:null
        ,businessYear:2021
        ,period:1
        ,questionNo:20
        ,endFlg:false
        ,correctType:null
        ,singleAnswer:null
        ,multipleAnswer:null
        ,numberAnswer:null);
    db.insertquestiontrying(qt3);

    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => Question(
                argumentMode: 1,
                argumentBusinessYear: null,
                argumentPeriod: null,
                argumentQuestionNo: null,
                argumentTryingListNo: 1)));
  }

}
