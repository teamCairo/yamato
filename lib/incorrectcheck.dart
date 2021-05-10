import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:yamato/result.dart';
import 'package:yamato/root.dart';
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text("誤答のチェック"),
        backgroundColor: Colors.lightBlue[400],
        actions: [],
      ),

      floatingActionButton: Container(
        height: 100.0,
        width: 100.0,
        margin:EdgeInsets.only(bottom: 100.0),
      ),

      body: ListView(
        padding: const EdgeInsets.all(8),
        children: <Widget>[
          Card(
            child: ListTile(
              leading: Icon(Icons.stop_sharp, color: Colors.blue),
              title: Text("消化器　＜X問＞", style: TextStyle(fontWeight: FontWeight.bold),),
              trailing: Icon(Icons.arrow_circle_down_rounded),
              subtitle: Text("書くことあれば欄"),
              onTap: () {},
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.stop_sharp),
              title: Text("循環器　＜X問＞"),
              trailing: Icon(Icons.arrow_circle_down_rounded),
              subtitle: Text("書くことあれば欄"),
              onTap: () {},
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.stop_sharp),
              title: Text("呼吸器　＜X問＞"),
              trailing: Icon(Icons.arrow_circle_down_rounded),
              subtitle: Text("書くことあれば欄"),
              onTap: () {},
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.stop_sharp),
              title: Text("腎臓　＜X問＞"),
              trailing: Icon(Icons.arrow_circle_down_rounded),
              subtitle: Text("書くことあれば欄"),
              onTap: () {},
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.stop_sharp),
              title: Text("内分泌代謝　＜X問＞"),
              trailing: Icon(Icons.arrow_circle_down_rounded),
              subtitle: Text("書くことあれば欄"),
              onTap: () {},
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.stop_sharp),
              title: Text("神経　＜X問＞"),
              trailing: Icon(Icons.arrow_circle_down_rounded),
              subtitle: Text("書くことあれば欄"),
              onTap: () {},
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.stop_sharp),
              title: Text("血液　＜X問＞"),
              trailing: Icon(Icons.arrow_circle_down_rounded),
              subtitle: Text("書くことあれば欄"),
              onTap: () {},
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.stop_sharp),
              title: Text("血液　＜X問＞"),
              trailing: Icon(Icons.arrow_circle_down_rounded),
              subtitle: Text("書くことあれば欄"),
              onTap: () {},
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.stop_sharp),
              title: Text("血液　＜X問＞"),
              trailing: Icon(Icons.arrow_circle_down_rounded),
              subtitle: Text("書くことあれば欄"),
              onTap: () {},
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.stop_sharp),
              title: Text("血液　＜X問＞"),
              trailing: Icon(Icons.arrow_circle_down_rounded),
              subtitle: Text("書くことあれば欄"),
              onTap: () {},
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.stop_sharp),
              title: Text("血液　＜X問＞"),
              trailing: Icon(Icons.arrow_circle_down_rounded),
              subtitle: Text("書くことあれば欄"),
              onTap: () {},
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.stop_sharp),
              title: Text("血液　＜X問＞"),
              trailing: Icon(Icons.arrow_circle_down_rounded),
              subtitle: Text("書くことあれば欄"),
              onTap: () {},
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.stop_sharp),
              title: Text("血液　＜X問＞"),
              trailing: Icon(Icons.arrow_circle_down_rounded),
              subtitle: Text("書くことあれば欄"),
              onTap: () {},
            ),
          ),

        ],
      ),
      bottomNavigationBar: BottomAppBar(
        elevation:0,
        color: Theme.of(context).canvasColor,
        notchMargin:0,
        child:ElevatedButton(onPressed: () {
          print('AAAAAA'+widget.serialData.code);
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
          /*Navigator.push(
              context,
              MaterialPageRoute(
                  builder:(context)=> RootWidget(
                  )
              )
          );*/},
              child: Text("保存", style: TextStyle(fontSize: 20,),),

              //style: ElevatedButton.styleFrom(
              //side: BorderSide(
              //primary: Colors.indigo[900],
              //width: 3,
              //),
              //),
            ),
      ),
    );
  }
}