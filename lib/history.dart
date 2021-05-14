import 'package:flutter/material.dart';
import 'package:yamato/db.dart';
import 'package:yamato/question.dart';

class History extends StatefulWidget {
  // 以下を実装、受け渡し用のプロパティを定義
  final List<Parameter> serialDataList;

  // 以下を実装、コンストラクタで値を受領
  History({this.serialDataList});

  @override
  _History createState() => _History();
}

class _History extends State<History> {
  int correctType;

  final outlineColor = Colors.blueAccent;
  final primaryColor = Colors.blueAccent;
  final headeryColor = Colors.blueAccent;
  final backColor = Colors.white;
  final double elev = 20;
  final double iconsize = 35;
  final double radius = 0;
  final double fontSize = 18;

  @override
  Widget build(BuildContext context) {
    QuestionList ql = QuestionList();
    return Scaffold(
      appBar: AppBar(
        title: Text("学習状況"),
        backgroundColor: Colors.blueAccent,
        leading: Icon(Icons.home_sharp),
        elevation: elev,
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            icon: Icon(Icons.help),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {},
          ),
        ],
        bottom:PreferredSize(
            preferredSize: Size.fromHeight(40.0),
          child:Container(
            child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
              SizedBox(
                width: 94,
                height: 35,
                child: Center(
                    child: Text(
                      "問題番号",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 18,
                        color:Colors.white,
                        fontWeight: FontWeight.w100,
                        fontFamily: "Hiragino Sans",
                        locale: Locale("ja", "JP"),
                      ),
                    )),
              ),
              Container(height: 20, child: VerticalDivider(color: Colors.black)),
              SizedBox(width: 45, height: 35),
              SizedBox(
                width: 40,
                height: 35,
                child: Center(
                    child: Text(
                      "成績",
                      style: TextStyle(
                        color:Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w100,
                        fontFamily: "Hiragino Sans",
                        locale: Locale("ja", "JP"),
                      ),
                    )),
              ),
              SizedBox(
                width: 26,
                height: 35,
                child: Center(child: Icon(Icons.help_outline,color:Colors.white)),
              ),
              SizedBox(
                width: 40,
                height: 35,
              ),
              Container(
                  height: 20,
                  child: VerticalDivider(color: Colors.grey, thickness: 1)),
              SizedBox(
                width: 70,
                height: 35,
                child: Center(child: Icon(Icons.help_outline,color:Colors.white)),
              )
            ]),
          ),
        )
      ),
      body: SingleChildScrollView(child: ql),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.all(5),
        margin: EdgeInsets.all(4),
        child: SizedBox(
          width: 250,
          height: 60,
          child: OutlinedButton.icon(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Question()));
            },
            label: Text(
              "選択問題をトライ",
              style: TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.w100,
                fontFamily: "Hiragino Sans",
                locale: Locale("ja", "JP"),
              ),
            ),
            icon: Icon(Icons.replay, size: iconsize),
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
    );
  }
}

class QuestionList extends StatefulWidget {
  @override
  _QuestionListstate createState() => _QuestionListstate();
  List<QuestionHeader> qhList = [];
  List<bool> checkedList = [];
}

class _QuestionListstate extends State<QuestionList> {
  TextEditingController productNameController = TextEditingController();

  TextEditingController priceController = TextEditingController();
  bool isloading = false;
  MyDatabase db = MyDatabase();

  List<QuestionHeader> hqList = [];
  var _isCheckboxChecked = false;

  @override
  Widget build(BuildContext context) {
    /*Future<List<int>> correctTypeList= db.amountOfStudyStatu(2021);
    correctTypeList.then((value) {
      print("調査ssss"+value.length.toString());
    });
    */

    print(hqList.length.toString() + "dafafa");
    print(widget.checkedList.length.toString() + "チェックドリスト");

    if (hqList.length == 0) {
      Future<List<QuestionHeader>> fQHList = db.getAllquestionheaders();

      print("調査通ってる");

      fQHList.then((value) {
        print("調査" + value.length.toString());
        setState(() {
          hqList = value;
        });
      });
    }

    return Column(
      children: <Widget>[

        Container(
            height: 700,
            width: double.infinity,
            child: ListView.builder(
                itemBuilder: (_, index) {
                  print("101");
                  return Container(
                      decoration: BoxDecoration(
                        border: const Border(
                          top: const BorderSide(
                            color: Colors.black12,
                            width: 0.7,
                          ),
                        ),
                      ),
                      child: Row(children: [
                    SizedBox(
                        height: 60,
                        width: 90,
                        child: Center(
                            child: Text(
                          hqList[index].questionNo,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.w300,
                            fontFamily: "Hiragino Sans",
                            locale: Locale("ja", "JP"),
                          ),
                        ))),
                    Container(
                        height: 20,
                        child: VerticalDivider(color: Colors.black)),
                    SizedBox(
                        height: 60,
                        width: 50,
                        child: Center(
                            child: Icon(Icons.close,
                                size: 35, color: Colors.indigo))),
                    SizedBox(
                        height: 60,
                        width: 50,
                        child: Center(
                            child: Icon(Icons.radio_button_off,
                                size: 35, color: Colors.red))),
                    SizedBox(
                        height: 60,
                        width: 50,
                        child: Center(
                            child: Icon(Icons.close,
                                size: 35, color: Colors.indigo))),
                    Container(
                        height: 20,
                        child: VerticalDivider(color: Colors.black)),
                    SizedBox(
                        height: 60,
                        width: 70,
                        child: Icon(Icons.check_circle_outline_outlined,
                            size: 35, color: Colors.blueAccent)),
                  ]));
                },
                itemCount: hqList.length))
      ],
    );
  }
}
