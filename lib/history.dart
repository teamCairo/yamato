import 'package:flutter/material.dart';
import 'package:yamato/db.dart';
import 'package:yamato/datamigrant.dart';


class History extends StatefulWidget {

  // 以下を実装、受け渡し用のプロパティを定義
  final List<Parameter> serialDataList;

  // 以下を実装、コンストラクタで値を受領
  History({this.serialDataList});

  @override
  _History createState() => _History();
}

class _History extends State<History> {

  StudyStatu ss=StudyStatu();
  int correctType;

  @override
  Widget build(BuildContext context) {

    QuestionList ql =QuestionList();
    return Scaffold(

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

      body: SingleChildScrollView(child: ql),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.all(20),
        margin: EdgeInsets.all(4),
        child: SizedBox(
          width: 280,
          height: 60,
          child:ElevatedButton(onPressed:() {
            DataMigrant dataMigrant = DataMigrant();
            dataMigrant.dataReset();
          },
            child: Text("データリセット", style: TextStyle(fontSize: 20,),),

          ),
        ),
      ),);
  }
}


class QuestionList extends StatefulWidget {
  @override
  _QuestionListstate createState() => _QuestionListstate();
  List<QuestionHeader> qhList =  [];
  List<bool> checkedList =  [];
  List<int> correctTypeList1 =  [];
  List<int> correctTypeList2 =  [];
  List<int> correctTypeList3 =  [];
}

class _QuestionListstate extends State<QuestionList> {
  TextEditingController productNameController = TextEditingController();

  TextEditingController priceController = TextEditingController();
  bool isloading = false;
  MyDatabase db = MyDatabase();

  List<QuestionHeader>hqList =[];
  var _isCheckboxChecked=false;

  @override
  Widget build(BuildContext context) {

    /*Future<List<int>> correctTypeList= db.amountOfStudyStatu(2021);
    correctTypeList.then((value) {
      print("調査ssss"+value.length.toString());
    });
    */

    print(hqList.length.toString()+"dafafa");
    print(widget.checkedList.length.toString()+"チェックドリスト");

    if(hqList.length==0) {
    Future<List<QuestionHeader>> fQHList = db.getAllquestionheaders();

    print("調査通ってる");

    fQHList.then((value) {
      print("調査"+value.length.toString());
      setcheckedList(value,db);

    });

    }

    print('sssssss:::'+widget.correctTypeList3.length.toString());

    return
    Column(
      children: <Widget>[
        Container(
            height: 700,
            width: double.infinity,
            child:
            ListView.builder(
                itemBuilder: (_, index) {
                  print("101");
                  return
                    Card(
                      child: CheckboxListTile(
                          value: false,//widget.checkedList[index],
                          onChanged: (value) {
                            setState(() => widget.checkedList[index] = value);
                          },
                          title: Text(hqList[index].questionNo+"                          ○　✕　○"+widget.correctTypeList3[index].toString(), style: TextStyle(fontWeight: FontWeight.bold),),
                          //subtitle: Text(snapshot.data[index].questionText,
                          //  textAlign: TextAlign.right,),
                          secondary: Icon(Icons.stop_sharp, color: Colors.blue),
                          activeColor: Colors.blue,
                          selected: _isCheckboxChecked,
                          controlAffinity:ListTileControlAffinity.trailing
                      ),
                    );
                }
                ,itemCount:hqList.length

            )
        )
      ],
    );

  }

  void setcheckedList(List<QuestionHeader> qhTargetList,MyDatabase db )async {
    print("調査" + qhTargetList.length.toString());
    for (int i = 0; i < qhTargetList.length; i++) {
      List<int> correctTypeList = await db.amountOfStudyStatu(
          qhTargetList[i].businessYear, qhTargetList[i].period, qhTargetList[i]
          .questionNo); //qhTargetList[i].businessYear,qhTargetList[i].period,qhTargetList[i].questionNo
      if (correctTypeList.length == 0) {
        widget.correctTypeList3.add(9);
      }else{
        widget.correctTypeList3.add(correctTypeList[0]);
      }

      if (correctTypeList.length < 2) {
        widget.correctTypeList2.add(9);
      }else{
        widget.correctTypeList2.add(correctTypeList[1]);
      }

      if (correctTypeList.length < 3) {
        widget.correctTypeList3.add(9);
      }else{
        widget.correctTypeList3.add(correctTypeList[2]);
      }


      print('sssaaasssddss:::'+widget.correctTypeList3.length.toString());

      setState(() {
        hqList = qhTargetList;
      });
    }
  }
  String judgeBatsuMaru(int correctType){
    if(correctType==1){
      return "○";
    }else if(correctType==0){
      return "✕";
    }else{
      return "  ";
    }
  }
}
