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
  MyDatabase db = MyDatabase();

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
}

class _QuestionListstate extends State<QuestionList> {
  TextEditingController productNameController = TextEditingController();

  TextEditingController priceController = TextEditingController();
  bool isloading = false;
  MyDatabase db = MyDatabase();


  @override
  Widget build(BuildContext context) {

    var _isCheckboxChecked=false;
    return Column(
      children: <Widget>[
        Container(
          height: 700,
          width: double.infinity,
          child: StreamBuilder(
            stream: MyDatabase().watchAllquestionheaders(),
            //★★★★★★★スクロールしたら読み込むStreamでなくFutureですべてこのタイミングでよみこんでくるひつようがある。★★★★★★
            //そうしないと下の方の問題にチェックをデフォルトでONできない。
            builder: (context, AsyncSnapshot<List<QuestionHeader>> snapshot) {
              return snapshot == null
                  ? Container()
                  : ListView.builder(
                itemBuilder: (_, index) {
                  if(widget.qhList.length <= index){
                    widget.qhList.add(snapshot.data[index]);
                    widget.checkedList.add(false);
                  }else{
                  }
                  return
                    Card(

                      child: CheckboxListTile(

                          value: widget.checkedList[index],
                          onChanged: (value) {
                            setState(() => widget.checkedList[index] = value);
                          },
                          title: Text(snapshot.data[index].questionNo+"                          ○　✕　○", style: TextStyle(fontWeight: FontWeight.bold),),
                          //subtitle: Text(snapshot.data[index].questionText,
                          //  textAlign: TextAlign.right,),
                          secondary: Icon(Icons.stop_sharp, color: Colors.blue),
                          activeColor: Colors.blue,
                          selected: _isCheckboxChecked,
                          controlAffinity:ListTileControlAffinity.trailing
                      ),
                    );
                },
                itemCount: snapshot.data?.length ?? 0,//null対応済

              );
            },
          ),
        )
      ],
    );
  }
}