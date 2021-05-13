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

  @override
  Widget build(BuildContext context) {
    QuestionList ql = QuestionList();
    return Scaffold(
      appBar: AppBar(
        title: Text("誤答をチェックしてください"),
        backgroundColor: Colors.lightBlue[400],
        actions: [],
      ),
      floatingActionButton: Container(
        height: 100.0,
        width: 100.0,
        margin: EdgeInsets.only(bottom: 100.0),
      ),
      body: SingleChildScrollView(child: ql),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.all(20),
        margin: EdgeInsets.all(4),
        child: SizedBox(
          width: 280,
          height: 60,
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Question()));
            },
            child: Text(
              "選択問題をトライ",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
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
                  return Card(
                    child: CheckboxListTile(
                        value: false,
                        //widget.checkedList[index],
                        onChanged: (value) {
                          setState(() => widget.checkedList[index] = value);
                        },
                        title: Text(
                          hqList[index].questionNo +
                              "                          ○　✕　○",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        //subtitle: Text(snapshot.data[index].questionText,
                        //  textAlign: TextAlign.right,),
                        secondary: Icon(Icons.stop_sharp, color: Colors.blue),
                        activeColor: Colors.blue,
                        selected: _isCheckboxChecked,
                        controlAffinity: ListTileControlAffinity.trailing),
                  );
                },
                itemCount: hqList.length))
      ],
    );
  }
}
