import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:yamato/db.dart';
import 'package:yamato/history.dart';
import 'package:yamato/incorrectcheck.dart';
import 'package:yamato/datamigrant.dart';
import 'package:yamato/question.dart';
import 'package:yamato/finish.dart';
import 'Dart:math';

import 'filter.dart';

class RootWidget extends StatefulWidget {
  RootWidget({Key key}) : super(key: key);

  @override
  _RootWidgetState createState() => _RootWidgetState();
}

class _RootWidgetState extends State<RootWidget> {
  var _textController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    final adjustsizeh = MediaQuery.of(context).size.height*0.0011;

    print(screenHeight);
    print(screenWidth);

    final primaryColor = Colors.white;
    final headeryColor = Colors.lightBlue;
    final backColor = Colors.lightBlue;
    final double elev = 8;
    final double radius = 20;
    final double fontSize = 15;
    //Color(0xFFFAFAFA)

    final double btnWidth = [screenWidth/3,screenHeight/6].reduce(min);
    final double btnHeight = [screenWidth/3,screenHeight/6].reduce(min);
    print(btnWidth);
    print(btnHeight);
    final double iconsize = btnHeight/2.5;
    //TODO パラメータが一つも入力されていないときは強制的にパラメータ入力画面を出す。（入力されないと操作できない（もしくはシリアルコード入力ボタンしか使えない）ようにする。）

    initialDataSet();

    return Scaffold(
      backgroundColor: Colors.cyan[100],
      appBar: AppBar(
        elevation: elev,
        leading: Icon(Icons.home_sharp),
        title: Text(""),
        backgroundColor: headeryColor,
        actions: [
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {
              _textController.text = '';
              showDialog(
                context: context,
                builder: (BuildContext context) => new AlertDialog(
                  title: new Text("リセット"),
                  content: Container(
                      height: 50, child: Text("学習データをリセットしてもよろしいですか？")),
                  // ボタンの配置
                  actions: <Widget>[
                    new TextButton(
                        child: const Text('キャンセル'),
                        onPressed: () {
                          Navigator.pop(context, _DialogActionType.cancel);
                        }),
                    new TextButton(
                        child: const Text('OK'),
                        onPressed: () {
                          DataMigrant dataMigrant = DataMigrant();
                          dataMigrant.dataReset();
                          Navigator.pop(context, _DialogActionType.cancel);
                        })
                  ],
                ),
              ).then<void>((value) {
                // ボタンタップ時の処理
                switch (value) {
                  case _DialogActionType.cancel:
                    print("cancel...");
                    break;
                  case _DialogActionType.ok:
                    print("OK!!");
                    break;
                  default:
                    print("default");
                }
              });
            },
          )
        ],
      ),
      body:SingleChildScrollView(
    child: Center(
        //child: Container(
        //padding: const EdgeInsets.all(32),
        //margin: EdgeInsets.all(32),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
          Container(
            padding: const EdgeInsets.all(3),
            margin: EdgeInsets.all(10),
            child: Image.asset('assets/image/montore_visual.jpg',
                fit: BoxFit.contain),
            height: screenHeight/2.6,
            width: screenWidth*1.3,
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                padding: const EdgeInsets.all(7),
                margin: EdgeInsets.all(7),
                child: SizedBox(
                  width: btnWidth,
                  height: btnHeight,
                  child: OutlinedButton(
                      onPressed: () {
                        restart();
                      },
                      style: TextButton.styleFrom(
                          elevation: elev,
                          primary: primaryColor,
                          backgroundColor: backColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(radius),
                          )),
                      child: Column(mainAxisSize: MainAxisSize.min, children: [
                        Icon(Icons.replay, size: iconsize*adjustsizeh),
                        Text(
                          "続きから",
                          style: TextStyle(
                              fontSize: fontSize*adjustsizeh, fontWeight: FontWeight.w100),
                        ),
                      ])),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(7),
                margin: EdgeInsets.all(7),
                child: SizedBox(
                  width: btnWidth,
                  height: btnHeight,
                  child: OutlinedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Filter()),
                        );
                      },
                      style: TextButton.styleFrom(
                          elevation: elev,
                          primary: primaryColor,
                          backgroundColor: backColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(radius),
                          )),
                      child: Column(mainAxisSize: MainAxisSize.min, children: [
                        Icon(Icons.search, size: iconsize*adjustsizeh),
                        Text(
                          "問題検索",
                          style: TextStyle(
                              fontSize: fontSize*adjustsizeh, fontWeight: FontWeight.w100),
                        ),
                      ])),
                ),
              ),
            ],
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                padding: const EdgeInsets.all(7),
                margin: EdgeInsets.all(7),
                child: SizedBox(
                  width: btnWidth,
                  height: btnHeight,
                  child: OutlinedButton(
                      onPressed: () {
                        moveToStudyStatus();
                      },
                      style: TextButton.styleFrom(
                          elevation: elev,
                          primary: primaryColor,
                          backgroundColor: backColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(radius),
                          )),
                      child: Column(mainAxisSize: MainAxisSize.min, children: [
                        Icon(Icons.leaderboard, size: iconsize*adjustsizeh),
                        Text(
                          "学習状況",
                          style: TextStyle(
                              fontSize: fontSize*adjustsizeh, fontWeight: FontWeight.w100),
                        ),
                      ])),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(7),
                margin: EdgeInsets.all(7),
                child: SizedBox(
                  width: btnWidth,
                  height: btnHeight,
                  child: OutlinedButton(
                      onPressed: () {
                        _textController.text = '';
                        showDialog(
                          context: context,
                          builder: (BuildContext context) => new AlertDialog(
                            title: new Text("シリアルコード"),
                            content: Container(
                              height: 100,
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  new Text("模試解答に記載されたシリアルコードを入力してください"),
                                  TextField(
                                    decoration:
                                        InputDecoration(hintText: "ここに入力"),
                                    controller: _textController,
                                  ),
                                ],
                              ),
                            ),
                            // ボタンの配置
                            actions: <Widget>[
                              new TextButton(
                                  child: const Text('キャンセル'),
                                  onPressed: () {
                                    Navigator.pop(
                                        context, _DialogActionType.cancel);
                                  }),
                              new TextButton(
                                  child: const Text('OK'),
                                  onPressed: () {
                                    checkSerial();
                                  })
                            ],
                          ),
                        ).then<void>((value) {
                          // ボタンタップ時の処理
                          switch (value) {
                            case _DialogActionType.cancel:
                              print("cancel...");
                              break;
                            case _DialogActionType.ok:
                              print("OK!!");
                              break;
                            default:
                              print("default");
                          }
                        });
                      },
                      style: TextButton.styleFrom(
                          elevation: elev,
                          primary: primaryColor,
                          backgroundColor: backColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(radius),
                          )),
                      child: Column(mainAxisSize: MainAxisSize.min, children: [
                        Icon(Icons.qr_code_scanner, size: iconsize*adjustsizeh),
                        Text(
                          "コード入力",
                          style: TextStyle(
                              fontSize: fontSize*adjustsizeh, fontWeight: FontWeight.w100),
                        ),
                      ])),
                ),
              ),
            ],
          )
        ]),
      ),
      //),
    )
    );
  }

  void initialDataSet() async{
    List<QuestionHeader> qhl= await MyDatabase().getAllquestionheaders();
    if(qhl.length==0){
      DataMigrant dataMigrant = DataMigrant();
      dataMigrant.dataReset();
    }
  }

  void moveToStudyStatus() async {
    print('AAAAstart');
    List<Parameter> paraList = [];
    paraList = await selectSerial();
    print('AAAAsecond');
    if (paraList.length == 0) {
      showDialog(
        context: context,
        builder: (_) {
          return AlertDialog(
            title: Text("確認"),
            content: Text("シリアルコードが一度も入力されていません"),
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
    } else {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => History()));
    }
  }

  Future<List<Parameter>> selectSerial() async {
    List<Parameter> parametersList = await MyDatabase().getAllparameters();
    List<Parameter> targetParameterList = [];
// forEach
    for (var parameter in parametersList) {
      if (parameter.code.substring(0, 18) == 'serialcdStartedFlg' &&
          parameter.booleanValue == true) {
        targetParameterList.add(parameter);
        print('AAAAADDD');
      }
    }
    return targetParameterList;
  }

  void restart() async {
    List<int> nextNumberList = await MyDatabase().selectQuestionTryingNextNo();
    List<int> MaxNumberList = await MyDatabase().selectQuestionTryingMaxNo();

    print("Size:Size:Size:"+nextNumberList.length.toString());
    if (nextNumberList[0] == MaxNumberList[0]) {
      showDialog(
        context: context,
        builder: (_) {
          return AlertDialog(
            title: Text("確認"),
            content: Text("解答中の問題がありません。"),
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
    } else {
      int nextNo;
      if (nextNumberList[0] == null){
        nextNo=1;
      }else{
        nextNo=nextNumberList[0]+1;

      }
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => Question(
                  argumentMode: 1,
                  argumentBusinessYear: null,
                  argumentPeriod: null,
                  argumentQuestionNo: null,
                  argumentTryingListNo: nextNo)));
    }
  }

  void checkSerial() async {
    List<Parameter> parametersList = await MyDatabase().getAllparameters();

    Parameter targetParameter;
    bool foundFlg = false;
// forEach
    for (var parameter in parametersList) {
      if (parameter.code.substring(0, 18) == 'serialcdStartedFlg' &&
          parameter.textValue == _textController.text) {
        foundFlg = true;
        targetParameter = parameter;
      }
    }

    if (foundFlg == false) {
      showDialog(
        context: context,
        builder: (_) {
          return AlertDialog(
            title: Text("確認"),
            content: Text("シリアルコードが間違っています"),
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
    } else if (targetParameter.booleanValue == true) {
      showDialog(
        context: context,
        builder: (_) {
          return AlertDialog(
            title: Text("確認"),
            content: Text("入力されたシリアルコードはすでに入力済みです"),
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
    } else {
      showDialog(
        context: context,
        builder: (_) {
          return AlertDialog(
            title: Text("確認"),
            content: Text("シリアルコードが確認できました！" + "\n" + "模試で間違えた問題をチェックしてください"),
            actions: <Widget>[
              // ボタン領域
              TextButton(
                child: Text("OK"),
                onPressed: () {
                  Navigator.of(context).popUntil((route) => route.isFirst);
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              IncorrectCheck(serialData: targetParameter)));
                },
              ),
            ],
          );
        },
      );
    }
  }
}

enum _DialogActionType {
  cancel,
  ok,
}
