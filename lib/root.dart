import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:yamato/search.dart';
import 'package:yamato/db.dart';
import 'package:yamato/history.dart';
import 'package:yamato/incorrectcheck.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:yamato/datamigrant.dart';
import 'package:yamato/question.dart';

class RootWidget extends StatefulWidget {
  RootWidget({Key key}) : super(key: key);

  @override
  _RootWidgetState createState() => _RootWidgetState();
}

class _RootWidgetState extends State<RootWidget> {
  var _textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    final outlineColor = Colors.blueAccent;
    final primaryColor = Colors.blueAccent;
    final headeryColor = Colors.blueAccent;
    final backColor = Colors.white;
    final double elev = 8;
    final double iconsize = 35;
    final double radius = 0;
    final double fontSize = 18;
    //Color(0xFFFAFAFA)

    return Scaffold(
      backgroundColor: Color(0xFFFAFAFA),
      appBar: AppBar(
        elevation:elev,
        leading:Icon(Icons.home_sharp),
        title: Text(""),
        backgroundColor: headeryColor,
        actions: [
          IconButton(icon: Icon(Icons.settings), onPressed: () {
            _textController.text = '';
            showDialog(
              context: context,
              builder: (BuildContext context) => new AlertDialog(
                title: new Text("リセット"),
                content: Container(
                  height: 50,
                  child: Text("学習データをリセットしてもよろしいですか？")
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
                        DataMigrant dataMigrant = DataMigrant();
                        dataMigrant.dataReset();
                        Navigator.pop(
                            context, _DialogActionType.cancel);
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
          },),
        ],
      ),
      body: Center(
        //child: Container(
        //padding: const EdgeInsets.all(32),
        //margin: EdgeInsets.all(32),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(3),
              margin: EdgeInsets.all(10),
              child: Image.asset('assets/image/montore_visual.jpg',
                  fit: BoxFit.contain),
              height: 280.0,
              width: 500.0,
            ),
            Container(
              padding: const EdgeInsets.all(5),
              margin: EdgeInsets.all(4),
              child: SizedBox(
                width: 300,
                height: 60,
                child: OutlinedButton.icon(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Question())
                    );},
                  label: Text(
                    "続きから解く",
                    style: TextStyle(
                      fontSize: fontSize,
                      fontWeight: FontWeight.w100,
                      fontFamily: "Hiragino Sans",
                      locale: Locale("ja", "JP"),
                    ),
                  ),
                  icon: Icon(Icons.replay,size:iconsize),
                  style: OutlinedButton.styleFrom(
                      elevation: elev,
                      primary: primaryColor,
                      backgroundColor: backColor,
                      side: BorderSide(color: outlineColor, width: 1),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(radius),
                      )),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(5),
              margin: EdgeInsets.all(4),
              child: SizedBox(
                width: 300,
                height: 60,
                child: OutlinedButton.icon(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Search()),
                    );
                  },
                  label: Text(
                    "問題検索",
                    style: TextStyle(fontSize: fontSize, fontWeight: FontWeight.w100),
                  ),
                  icon: Icon(Icons.search,size:iconsize),
                  style: OutlinedButton.styleFrom(
                      elevation: elev,
                      primary: primaryColor,
                      backgroundColor: backColor,
                      side: BorderSide(color: outlineColor, width: 1),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(radius),
                      )),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(5),
              margin: EdgeInsets.all(4),
              child: SizedBox(
                width: 300,
                height: 60,
                child: OutlinedButton.icon(
                  onPressed: () {
                    moveToStudyStatus();
                  },
                  label: Text(
                    "学習履歴",
                    style: TextStyle(fontSize: fontSize, fontWeight: FontWeight.w100),
                  ),
                  icon: Icon(Icons.leaderboard,size:iconsize),
                  style: OutlinedButton.styleFrom(
                      elevation: elev,
                      primary: primaryColor,
                      backgroundColor: backColor,
                      side: BorderSide(color: outlineColor, width: 1),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(radius),
                      )),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(5),
              margin: EdgeInsets.all(4),
              child: SizedBox(
                width: 300,
                height: 60,
                child: OutlinedButton.icon(
                  onPressed: () {
                    _textController.text = '';
                    showDialog(
                      context: context,
                      builder: (BuildContext context) => new AlertDialog(
                        title: new Text("シリアルコード"),
                        content: Container(
                          height: 100,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              new Text("模試解答に記載されたシリアルコードを入力してください"),
                              TextField(
                                decoration: InputDecoration(hintText: "ここに入力"),
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
                  label: Text(
                    "シリアルコード",
                    style: TextStyle(fontSize: fontSize, fontWeight: FontWeight.w100),
                  ),
                  icon: Icon(Icons.qr_code_scanner,size:iconsize),
                  style: OutlinedButton.styleFrom(
                      elevation: elev,
                      primary: primaryColor,
                      backgroundColor: backColor,
                      side: BorderSide(color: outlineColor, width: 1),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(radius),
                      )),
                ),
              ),
            ),
          ],
        ),
      ),
      //),
    );
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
