import 'package:flutter/material.dart';
import 'package:yamato/qtile.dart';
import 'package:yamato/question.dart';

class Result extends StatefulWidget {


  Result({Key key}) : super(key: key);

  @override
  _ResultState createState() => _ResultState();
}

class _ResultState extends State<Result> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("検索結果：X問"),
        backgroundColor: Colors.lightBlue[400],
        actions: [],
      ),
      body: Column(
    children: <Widget>[
      Expanded(
        child: ListView(
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
                leading: Icon(Icons.stop_sharp, color: Colors.blue),
                title: Text("消化器　＜X問＞", style: TextStyle(fontWeight: FontWeight.bold),),
                trailing: Icon(Icons.arrow_circle_down_rounded),
                subtitle: Text("書くことあれば欄"),
                onTap: () {},
              ),
            ),
            //Qtile(
            //),
            ],
      ),
      ),
      Container(
      padding: const EdgeInsets.all(20),
      margin: EdgeInsets.all(4),
      child: SizedBox(
      width: 280,
      height: 60,
        child: ElevatedButton(onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Question())
          );
        }, child: Text("演習を始める", style: TextStyle(fontSize:  20,),),),
    ),
      ),
    ],

      ),


      floatingActionButton: Container(
        height: 100.0,
        width: 100.0,
        margin:EdgeInsets.only(bottom: 100.0),
        child: FloatingActionButton(
          child: Icon(Icons.search, size: 40),
          onPressed: () {
            showDialog(context: context, builder: (_) => AlertDialog(
              title: Text('SEARCH!'),
              content: Text('検索画面の仮置き'),
              actions: <Widget>[
                ElevatedButton(
                  child: Text("遷移"),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Result()),
                    );
                  },

                ),
              ],
            ),
            );
          },
        ),
      ),

    );

  }
  }