import 'package:flutter/material.dart';
import 'package:yamato/db.dart';

class IncorrectCheck extends StatefulWidget {

  // 以下を実装、受け渡し用のプロパティを定義
  final Parameter serialData;

  // 以下を実装、コンストラクタで値を受領
  IncorrectCheck({this.serialData});

  @override
  _IncorrectCheckState createState() => _IncorrectCheckState();
}

class _IncorrectCheckState extends State<IncorrectCheck> {

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
      bottomNavigationBar: BottomAppBar(
        elevation:0,
        color: Theme.of(context).canvasColor,
        notchMargin:0,
        child:ElevatedButton(onPressed: () {
          for (int i = 0; i < ql.checkedList.length; i++){
            if(ql.checkedList[i]==true){
              correctType=1;
            }else{
              correctType=0;
            }
            final now = DateTime.now();

            //TODO:ヘッダのステータス情報更新
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
          );},
              child: Text("保存", style: TextStyle(fontSize: 20,),),

            ),
      ),
    );
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
                          title: Text(snapshot.data[index].questionNo.toString(), style: TextStyle(fontWeight: FontWeight.bold),),
                          subtitle: Text(snapshot.data[index].questionText),
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