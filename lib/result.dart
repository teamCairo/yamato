import 'package:flutter/material.dart';
import 'package:yamato/qtile.dart';
import 'package:yamato/question.dart';
import 'package:filter_list/filter_list.dart';

import 'filter.dart';

class Result extends StatefulWidget {


  Result({Key key}) : super(key: key);

  @override
  _ResultState createState() => _ResultState();
}

class _ResultState extends State<Result> {




  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.cyan[100],
      appBar: AppBar(
        title: Text("検索結果：X問"),
        backgroundColor: Colors.lightBlue[400],
        actions: [
      Padding(
      padding: const EdgeInsets.all(4.0),
      child: IconButton(
        icon: Icon(Icons.search),
        onPressed: () => {Navigator.push(
        context, MaterialPageRoute(
        builder: (context) => Filter(),
        //以下を追加
        fullscreenDialog: true,
        )
        )},
      ),
    ),],
      ),
      body: Column(
    children: <Widget>[
      Expanded(
        child: ListView(
          padding: const EdgeInsets.all(8),
          children: <Widget>[
            Qtile(code: "SA116354", category: "呼吸器", contents: "口呼吸",),
            Qtile(code: "SS132164", category: "循環器", contents: "循環器",),
            Qtile(code: "SZ546115", category: "血液", contents: "血中濃度",),
            Qtile(code: "SA515616", category: "呼吸器", contents: "深呼吸",),
            Qtile(code: "SW489332", category: "免疫", contents: "免疫機能",),
            Qtile(code: "SR156844", category: "小児", contents: "カゼ",),
            Qtile(code: "SF154984", category: "感染", contents: "ウイルス",),
            Qtile(code: "SZ548646", category: "血液", contents: "出血",),
            Qtile(code: "SA548989", category: "呼吸器", contents: "肺胞",),
            Qtile(code: "SG654486", category: "精神", contents: "精神疾患",),
            Qtile(code: "SF461565", category: "感染", contents: "感染症",),
            Qtile(code: "SB654648", category: "神経", contents: "神経系",),

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


      );



  }
  }