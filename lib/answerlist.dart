import 'package:flutter/material.dart';
import 'package:yamato/db.dart';
import 'package:yamato/root.dart';

class AnswerList extends StatefulWidget {

  @override
  _AnswerListState createState() => _AnswerListState();
}

class _AnswerListState extends State<AnswerList> {

  MyDatabase db = MyDatabase();

  @override
  Widget build(BuildContext context) {
    QuestionList ql =QuestionList();
    return Scaffold(

      appBar: AppBar(
        title: Text("解答一覧"),
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
        color:Colors.cyan[100],
        notchMargin:0,
        child:      Container(
          padding: const EdgeInsets.all(20),
          margin: EdgeInsets.all(4),
          child:SizedBox(
            width: 280,
            height: 60,
            child: ElevatedButton(onPressed: () {
              //TODO ルート画面に戻る処理を追加
              /*
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Root()),
              );
               */

            }, child: Text("ホームへ", style: TextStyle(fontSize:  20,),),),
          ),
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
          color:Colors.cyan[100],
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